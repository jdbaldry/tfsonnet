package main

import (
	"fmt"
	"sort"
	"strings"

	"github.com/google/go-jsonnet/ast"
)

// DefaultDocsURLFunc returns is a DocsURLFunc for standard Terraform providers with documentation at https://www.terraform.io/docs/providers.
func DefaultDocsURLFunc(ss ...string) string {
	baseURL := "https://www.terraform.io/docs/providers/"
	if len(ss) == 1 {
		return baseURL + ss[0]
	} else if len(ss) == 2 {
		return baseURL + ss[0] + "/r/" + ss[1] + ".html"
	}
	return baseURL + ss[0] + "/r/" + ss[1] + ".html#" + ss[2]
}

// GenConfig is configuration for Gen.
type GenConfig struct {
	// DocsURLFunc is a variadic function that returns the documentation URL for a given number of parameters.
	// For one parameter it should return the URL of the provider docs for the named provider.
	// For two parameters it should return the URL of the resource docs for that pair of provider and resource.
	// For three parameters it should return the URL of the attribute docs for that triple of provider, resource and attribute.
	// Further parameters are ignored.
	DocsURLFunc func(...string) string
	// Provider is the name of the provider.
	Provider string
	// ProviderAlias is used to generate documentation URLs for a provider.
	// e.g. All "digitalocean" provider docs are under an alias "do" - "https://www.terraform.io/docs/providers/do".
	ProviderAlias string
}

// Gen generates a jsonnet library for a Terraform provider.
type Gen struct {
	providerSchema ProviderSchema
	docsURLFunc    func(...string) string
	providerAlias  string
	provider       string
}

// NewGen returns a configured Gen.
func NewGen(ps ProviderSchema, c GenConfig) (Gen, error) {
	return Gen{
		providerSchema: ps,
		docsURLFunc:    c.DocsURLFunc,
		providerAlias:  c.ProviderAlias,
		provider:       c.Provider,
	}, nil
}

// interpolatable is a string that can be interpolated by Terraform
type interpolatable string

// newInterpolatable returns an interpolatable.
func newInterpolatable(s []string) interpolatable {
	if len(s) == 0 {
		return ""
	}
	pre := "${"
	post := "}"
	return interpolatable(pre + strings.Join(s, ".") + post)
}

// newComputedField returns the ast.ObjectField for a computed attribute.
// name is the attribute name.
// interpolatable is an interpolatable that can be first interpolated by Jsonnet with str % rname and then secondly by Terraform.
func newComputedField(name string, i interpolatable) ast.ObjectField {
	return ast.ObjectField{
		Hide: ast.ObjectFieldHidden,
		Kind: ast.ObjectFieldID,
		Id:   newIdentifier(fieldName(name)),
		Expr2: &ast.Binary{
			Left:  &ast.LiteralString{Value: string(i)},
			Op:    ast.BopPercent,
			Right: &ast.Var{Id: *newIdentifier("rname")},
		},
	}
}

// newRequiredField returns the ast.ObjectField for a required attributed.
func newRequiredField(name string) ast.ObjectField {
	return ast.ObjectField{
		Hide: ast.ObjectFieldInherit,
		Kind: ast.ObjectFieldID,
		Id:   newIdentifier(fieldName(name)),
		Expr2: &ast.Var{
			Id: *newIdentifier(paramName(name)),
		},
	}
}

// isReserved tests if a string is a reserved Jsonnet word.
func isReserved(a string) bool {
	for _, s := range jsonnetReservedWords {
		if a == s {
			return true
		}
	}
	return false
}

// fieldName returns a field safe attribute name.
func fieldName(a string) string {
	if isReserved(a) {
		return "'" + a + "'"
	}
	return a
}

// paramName returns a parameter safe attribute name.
func paramName(a string) string {
	if isReserved(a) {
		return "r" + a
	}
	return a
}

// Generate generates a Jsonnet ast.Object from a provider schema using the generators configuration.
func (g Gen) Generate() *ast.Object {
	resourceFields := ast.ObjectFields{}
	rs := g.providerSchema.ResourceSchemas
	resources := make([]string, len(rs))
	for r := range rs {
		resources = append(resources, r)
	}
	sort.Strings(resources)
	for _, r := range resources {
		// TODO: understand where the empty fields are coming from.
		if r != "" {
			rWithoutProvider := strings.SplitAfter(r, fmt.Sprintf("%s_", g.provider))[1]

			rnameField := newRequiredField("rname")
			rnameField.Hide = ast.ObjectFieldHidden
			requiredFields := []ast.ObjectField{rnameField}
			otherFields := []ast.ObjectField{}
			mixinFields := []ast.ObjectField{}

			requiredFodder := ast.Fodder{
				ast.MakeFodderElement(ast.FodderLineEnd, 0, 0, []string{fmt.Sprintf(" %s - %s", r, g.docsURLFunc(g.providerAlias, rWithoutProvider))}),
				ast.MakeFodderElement(ast.FodderLineEnd, 0, 0, []string{"@param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437)."}),
			}

			requiredParameters := []ast.CommaSeparatedID{
				ast.CommaSeparatedID{Name: *newIdentifier("rname")},
			}

			as := rs[r].Block.Attributes
			attributes := make([]string, len(as))
			for a := range as {
				attributes = append(attributes, a)
			}
			sort.Strings(attributes)
			for _, a := range attributes {
				if as[a].Required {
					requiredParameters = append(requiredParameters, ast.CommaSeparatedID{Name: *newIdentifier(paramName(a))})
					requiredFields = append(requiredFields, newRequiredField(a))
					requiredFodder = append(requiredFodder, ast.MakeFodderElement(ast.FodderLineEnd, 0, 0,
						[]string{fmt.Sprintf("@param %s (required) %s.", paramName(a), g.docsURLFunc(g.providerAlias, rWithoutProvider, a))}))
				} else if as[a].Optional {
					otherFields = append(otherFields, newComputedField(a, newInterpolatable([]string{r, "%s", a})))
					mixinFields = append(mixinFields, ast.ObjectField{
						Kind: ast.ObjectFieldID,
						Id:   newIdentifier("with_" + paramName(a)),
						Method: &ast.Function{
							Parameters: ast.Parameters{
								Required: []ast.CommaSeparatedID{{Name: *newIdentifier(paramName(a))}},
							},
						},
						Fodder1: ast.Fodder{
							ast.MakeFodderElement(ast.FodderLineEnd, 0, 0, []string{
								fmt.Sprintf("@param %s (required) %s.", paramName(a), g.docsURLFunc(g.providerAlias, rWithoutProvider, a))})},

						Expr2: &ast.Object{
							Fields: []ast.ObjectField{
								{
									Kind:  ast.ObjectFieldID,
									Hide:  ast.ObjectFieldVisible,
									Id:    newIdentifier(fieldName((a))),
									Expr2: &ast.Var{Id: *newIdentifier(paramName(a))},
								},
							},
						},
					})
				} else if as[a].Computed {
					otherFields = append(otherFields, newComputedField(a, newInterpolatable([]string{r, "%s", a})))
				}
			}

			if rs[r].Block.BlockTypes != nil {
				bts := *rs[r].Block.BlockTypes
				blockTypes := make([]string, len(bts))
				for b := range bts {
					blockTypes = append(blockTypes, b)
				}
				sort.Strings(blockTypes)
				for _, bt := range blockTypes {
					// TODO: understand where the empty fields are coming from.
					if bt != "" {
						// Required field.
						if bts[bt].MinItems > 0 {
							requiredParameters = append(requiredParameters, ast.CommaSeparatedID{Name: *newIdentifier(bt)})
							requiredFields = append(requiredFields, newRequiredField(bt))
							requiredFodder = append(requiredFodder, ast.MakeFodderElement(ast.FodderLineEnd, 0, 0,
								[]string{fmt.Sprintf("@param %s (required) %s block.", bt, bt)}))
						} else {
							otherFields = append(otherFields, ast.ObjectField{
								Kind:  ast.ObjectFieldID,
								Id:    newIdentifier(fieldName(bt)),
								Expr2: &ast.Object{},
							})
						}

						blockRnameField := newRequiredField("rname")
						blockRnameField.Hide = ast.ObjectFieldHidden
						blockRequiredFields := ast.ObjectFields{blockRnameField}
						blockOtherFields := ast.ObjectFields{}
						blockRequiredFodder := ast.Fodder{
							ast.MakeFodderElement(ast.FodderLineEnd, 0, 0, []string{"@param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437)."}),
						}
						blockRequiredParameters := []ast.CommaSeparatedID{
							ast.CommaSeparatedID{Name: *newIdentifier("rname")},
						}

						as := bts[bt].Block.Attributes
						attributes := make([]string, len(as))
						for a := range as {
							attributes = append(attributes, a)
						}
						sort.Strings(attributes)
						for _, a := range attributes {
							if as[a].Required {
								blockRequiredParameters = append(blockRequiredParameters, ast.CommaSeparatedID{Name: *newIdentifier(paramName(a))})
								blockRequiredFields = append(blockRequiredFields, newRequiredField(a))
								blockRequiredFodder = append(blockRequiredFodder, ast.MakeFodderElement(ast.FodderLineEnd, 0, 0,
									[]string{fmt.Sprintf("@param %s (required) %s.", paramName(a), g.docsURLFunc(g.providerAlias, rWithoutProvider, a))}))
							} else if as[a].Optional {
								blockOtherFields = append(blockOtherFields, newComputedField(a, newInterpolatable([]string{r, "%s", bt, a})))
							} else if as[a].Computed {
								blockOtherFields = append(blockOtherFields, newComputedField(a, newInterpolatable([]string{r, "%s", bt, a})))
							}
						}
						mixinFields = append(mixinFields, ast.ObjectField{
							Kind: ast.ObjectFieldID,
							Id:   newIdentifier(bt),
							Expr2: &ast.Object{
								Fields: []ast.ObjectField{
									{
										Kind: ast.ObjectFieldID,
										Id:   newIdentifier("new"),
										Expr2: &ast.Object{
											Fields: append(blockRequiredFields, blockOtherFields...),
										},
										Method: &ast.Function{
											Parameters: ast.Parameters{
												Required: blockRequiredParameters,
											},
										},
										Fodder1: blockRequiredFodder,
									},
								},
							},
						})
					}
				}
			}
			resourceFields = append(resourceFields, ast.ObjectField{
				Kind: ast.ObjectFieldID,
				Id:   newIdentifier(r),
				Expr2: &ast.Object{
					Fields: append([]ast.ObjectField{
						{
							Kind: ast.ObjectFieldID,
							Id:   newIdentifier("new"),
							Expr2: &ast.Object{
								Fields: append(requiredFields, otherFields...),
							},
							Method: &ast.Function{
								Parameters: ast.Parameters{
									Required: requiredParameters,
								},
							},
							Fodder1: requiredFodder,
						},
					}, mixinFields...),
				},
			})
		}
	}

	return &ast.Object{
		Fields: resourceFields,
	}
}
