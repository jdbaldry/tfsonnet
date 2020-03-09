package main

import (
	"fmt"
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

// Generate generates a Jsonnet ast.Object from a provider schema using the generators configuration.
func (g Gen) Generate() *ast.Object {
	resources := ast.ObjectFields{}
	for r, rs := range g.providerSchema.ResourceSchemas {
		rWithoutProvider := strings.SplitAfter(r, fmt.Sprintf("%s_", g.provider))[1]

		requiredFields := ast.ObjectFields{}
		optionalFields := ast.ObjectFields{}
		attributeFields := ast.ObjectFields{
			ast.ObjectField{
				Hide:  ast.ObjectFieldHidden,
				Kind:  ast.ObjectFieldID,
				Id:    newIdentifier("rname"),
				Expr2: &ast.Var{Id: *newIdentifier("rname")},
			},
		}

		requiredFodder := ast.Fodder{
			ast.FodderElement{
				Comment: []string{fmt.Sprintf(" %s - %s", r, g.docsURLFunc(g.providerAlias, rWithoutProvider))},
			},
			ast.FodderElement{
				Comment: []string{"@param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437)."},
			},
		}
		optionalFodder := ast.Fodder{}

		requiredParameters := []ast.CommaSeparatedID{
			ast.CommaSeparatedID{Name: *newIdentifier("rname")},
		}
		optionalParameters := []ast.NamedParameter{}

	loop:
		for a, as := range rs.Block.Attributes {
			// TODO: Not skip attributes that happen to be reserved in Jsonnet.
			for _, s := range jsonnetReservedWords {
				if a == s {
					continue loop
				}
			}
			var kind string
			if as.Required {
				kind = "required"
				requiredParameters = append(requiredParameters, ast.CommaSeparatedID{Name: *newIdentifier(a)})
				requiredFields = append(requiredFields, ast.ObjectField{
					Hide: ast.ObjectFieldInherit,
					Kind: ast.ObjectFieldID,
					Id:   newIdentifier(a),
					Expr2: &ast.Var{
						Id: *newIdentifier(a),
					},
				})
				requiredFodder = append(requiredFodder, ast.FodderElement{
					Comment: []string{fmt.Sprintf("@param %s (%s) %s.", a, kind, g.docsURLFunc(g.providerAlias, rWithoutProvider, a))},
				})
			} else if as.Optional {
				kind = "optional"
				optionalParameters = append(optionalParameters, ast.NamedParameter{
					Name:       *newIdentifier(a),
					DefaultArg: &ast.LiteralNull{},
				})
				optionalFields = append(optionalFields, ast.ObjectField{
					Hide: ast.ObjectFieldInherit,
					Kind: ast.ObjectFieldExpr,
					Id:   newIdentifier(fmt.Sprintf("if %s != null then '%s'", a, a)),
					Expr2: &ast.Var{
						Id: *newIdentifier(a),
					},
				})
				optionalFodder = append(optionalFodder, ast.FodderElement{
					Comment: []string{fmt.Sprintf("@param %s (%s) %s.", a, kind, g.docsURLFunc(g.providerAlias, rWithoutProvider, a))},
				})
			} else {
				kind = "attribute"
				attributeFields = append(attributeFields, ast.ObjectField{
					Hide: ast.ObjectFieldHidden,
					Kind: ast.ObjectFieldID,
					Id:   newIdentifier(a),
					Expr2: &ast.Binary{
						Left:  &ast.LiteralString{Value: fmt.Sprintf("${%s.%%s.%s}", r, a)},
						Op:    ast.BopPercent,
						Right: &ast.Var{Id: *newIdentifier("rname")},
					},
				})
			}
		}

		if rs.Block.BlockTypes != nil {
			for bt, bts := range *rs.Block.BlockTypes {
				// Required field.
				if bts.MinItems > 0 {
					requiredParameters = append(requiredParameters, ast.CommaSeparatedID{Name: *newIdentifier(bt)})
					requiredFields = append(requiredFields, ast.ObjectField{
						Hide: ast.ObjectFieldInherit,
						Kind: ast.ObjectFieldID,
						Id:   newIdentifier(bt),
						Expr2: &ast.Var{
							Id: *newIdentifier(bt),
						},
					})
					requiredFodder = append(requiredFodder, ast.FodderElement{
						Comment: []string{fmt.Sprintf("@param %s (required) %s block.", bt, bt)},
					})
				} else {
					optionalParameters = append(optionalParameters, ast.NamedParameter{
						Name:       *newIdentifier(bt),
						DefaultArg: &ast.Object{},
					})
					optionalFields = append(optionalFields, ast.ObjectField{
						Hide: ast.ObjectFieldInherit,
						Kind: ast.ObjectFieldExpr,
						Id:   newIdentifier(fmt.Sprintf("if %s != null then '%s'", bt, bt)),
						Expr2: &ast.Var{
							Id: *newIdentifier(bt),
						},
					})
					optionalFodder = append(optionalFodder, ast.FodderElement{
						Comment: []string{fmt.Sprintf("@param %s (optional) %s block.", bt, bt)},
					})
				}
			}
		}

		// Skip sorting rname since it is a special workaround parameter.
		sortCommaSeparatedID(requiredParameters[1:])
		sortNamedParameters(optionalParameters)
		sortFields(optionalFields)
		sortFields(requiredFields)
		sortFields(attributeFields)
		sortFodder(optionalFodder)
		sortFodder(requiredFodder)

		resources = append(resources, ast.ObjectField{
			Kind: ast.ObjectFieldID,
			Id:   newIdentifier(r),
			Expr2: &ast.Object{
				Fields: append(append(requiredFields, optionalFields...), attributeFields...),
			},
			Method: &ast.Function{
				Parameters: ast.Parameters{
					Optional: optionalParameters,
					Required: requiredParameters,
				},
			},
			Fodder1: append(requiredFodder, optionalFodder...),
		})
	}

	sortFields(resources)

	return &ast.Object{
		Fields: resources,
	}
}
