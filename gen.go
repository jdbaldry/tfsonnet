package main

import (
	"fmt"
	"sort"
	"strings"

	"github.com/google/go-jsonnet/ast"
)

var jsonnetReservedWords = []string{"assert", "else", "error", "false", "for", "function", "if",
	"import", "importstr", "in", "local", "null", "tailstrict", "then", "self", "super", "true"}

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
	providerSchema providerSchema
	docsURLFunc    func(...string) string
	providerAlias  string
	provider       string
}

// NewGen returns a configured Gen.
func NewGen(ps providerSchema, c GenConfig) (Gen, error) {
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

// toCommaSeparatedID returns the provided string as an ast.CommaSeparatedID.
func toCommaSeparatedID(s string) ast.CommaSeparatedID {
	return ast.CommaSeparatedID{Name: *newIdentifier(s)}
}

// toNamedParameter returns the provided string as an ast.NamedParameter.
func toNamedParameter(s string) ast.NamedParameter {
	return ast.NamedParameter{Name: *newIdentifier(s), DefaultArg: &ast.LiteralNull{}}
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

// newIdentifier creates an identifier.
func newIdentifier(value string) *ast.Identifier {
	id := ast.Identifier(value)
	return &id
}

func (g Gen) generate() *ast.Object {
	root := &ast.Object{}

	rs := resourceMapToSlice(g.providerSchema.ResourceSchemas)
	sort.Slice(rs, func(i, j int) bool {
		return rs[i].name < rs[j].name
	})
	for _, r := range rs {
		g.addResource(root, r)
	}

	return root
}

// addResource adds a resource into the ast.Object.
func (g Gen) addResource(o *ast.Object, r resourceSchema) {
	rWithoutProvider := strings.SplitAfter(r.name, fmt.Sprintf("%s_", g.provider))[1]

	resource := ast.ObjectField{
		Kind: ast.ObjectFieldID,
		Hide: ast.ObjectFieldHidden,
		Id:   newIdentifier(r.name),
		Expr2: &ast.Object{
			Fields: []ast.ObjectField{
				{
					Kind: ast.ObjectFieldID,
					Id:   newIdentifier("new"),
					Expr2: &ast.Object{
						Fields: []ast.ObjectField{
							{
								Kind:  ast.ObjectFieldID,
								Id:    newIdentifier("rname"),
								Expr2: &ast.Var{Id: *newIdentifier("rname")},
							},
						},
					},
					Method: &ast.Function{
						Parameters: ast.Parameters{
							Required: []ast.CommaSeparatedID{toCommaSeparatedID("rname")},
						},
					},
					Fodder1: []ast.FodderElement{
						ast.MakeFodderElement(ast.FodderParagraph, 0, 0, []string{"@param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437)."}),
					},
				},
			},
		},
		Fodder1: []ast.FodderElement{
			ast.MakeFodderElement(ast.FodderParagraph, 0, 0, []string{fmt.Sprintf("%s - %s", r.name, g.docsURLFunc(g.providerAlias, rWithoutProvider))}),
		},
	}

	as := attributeMapToSlice(r.Block.Attributes)
	sortAttributes(as)
	for _, a := range as {
		a.parent = &r
		g.addAttribute(&resource, a)
	}

	bts := blockTypeMapToSlice(r.Block.BlockTypes)
	sort.Slice(bts, func(i, j int) bool {
		return bts[i].name < bts[j].name
	})
	for _, bt := range bts {
		bt.parent = &r
		g.addBlockType(&resource, bt)
	}

	o.Fields = append(o.Fields, resource)
}

// addAttribute adds an attribute into the provided object.
func (g Gen) addAttribute(of *ast.ObjectField, a attribute) {
	// aField is the attribute field in the new function.
	aField := ast.ObjectField{
		Kind:  ast.ObjectFieldID,
		Hide:  ast.ObjectFieldHidden,
		Id:    newIdentifier(paramName(a.name)),
		Expr2: &ast.Object{},
	}

	if a.Required {
		of.Expr2.(*ast.Object).Fields[0].Method.Parameters.Required = append(of.Expr2.(*ast.Object).Fields[0].Method.Parameters.Required, toCommaSeparatedID(paramName(a.name)))
		of.Expr2.(*ast.Object).Fields[0].Fodder1 = append(of.Expr2.(*ast.Object).Fields[0].Fodder1, ast.MakeFodderElement(ast.FodderParagraph, 0, 0, []string{"@param " + paramName(a.name) + " (required)"}))
		aField.Hide = ast.ObjectFieldInherit
		aField.Expr2 = &ast.Var{Id: *newIdentifier(paramName(a.name))}
	}
	if a.Computed {
		aField.Expr2 = &ast.Binary{
			Left:  &ast.LiteralString{Value: interpolatableID(a.Identify())},
			Op:    ast.BopPercent,
			Right: &ast.Var{Id: *newIdentifier("rname")},
		}
	}
	if a.Optional {
		of.Expr2.(*ast.Object).Fields[0].Method.Parameters.Optional = append(of.Expr2.(*ast.Object).Fields[0].Method.Parameters.Optional, toNamedParameter(paramName(a.name)))
		of.Expr2.(*ast.Object).Fields[0].Fodder1 = append(of.Expr2.(*ast.Object).Fields[0].Fodder1, ast.MakeFodderElement(ast.FodderParagraph, 0, 0, []string{"@param " + paramName(a.name) + " (optional)"}))
		aField.Kind = ast.ObjectFieldExpr
		aField.Id = newIdentifier(fmt.Sprintf("if %s != null then %s", paramName(a.name), fieldName(a.name)))
		aField.Expr2 = &ast.Var{Id: *newIdentifier(paramName(a.name))}
	}
	of.Expr2.(*ast.Object).Fields[0].Expr2.(*ast.Object).Fields = append(of.Expr2.(*ast.Object).Fields[0].Expr2.(*ast.Object).Fields, aField)
}

// addBlockType adds a block into the provided object.
func (g Gen) addBlockType(of *ast.ObjectField, bt blockType) {
	block := ast.ObjectField{
		Kind: ast.ObjectFieldID,
		Hide: ast.ObjectFieldHidden,
		Id:   newIdentifier(bt.name),
		Expr2: &ast.Object{
			Fields: []ast.ObjectField{
				{
					Kind: ast.ObjectFieldID,
					Id:   newIdentifier("new"),
					Expr2: &ast.Object{
						Fields: []ast.ObjectField{
							{
								Kind:  ast.ObjectFieldID,
								Id:    newIdentifier("rname"),
								Expr2: &ast.Var{Id: *newIdentifier("rname")},
							},
						},
					},
					Method: &ast.Function{
						Parameters: ast.Parameters{
							Required: []ast.CommaSeparatedID{toCommaSeparatedID("rname")},
						},
					},
					Fodder1: []ast.FodderElement{
						ast.MakeFodderElement(ast.FodderParagraph, 0, 0, []string{"@param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437)."}),
					},
				},
			},
		},
	}
	if bt.MinItems >= 1 {
		of.Expr2.(*ast.Object).Fields[0].Method.Parameters.Required = append(of.Expr2.(*ast.Object).Fields[0].Method.Parameters.Required, toCommaSeparatedID(bt.name))
		of.Expr2.(*ast.Object).Fields[0].Fodder1 = append(of.Expr2.(*ast.Object).Fields[0].Fodder1, ast.MakeFodderElement(ast.FodderParagraph, 0, 0, []string{"@param " + bt.name + " (required)"}))
		of.Expr2.(*ast.Object).Fields[0].Expr2.(*ast.Object).Fields = append(of.Expr2.(*ast.Object).Fields[0].Expr2.(*ast.Object).Fields, ast.ObjectField{
			Kind:  ast.ObjectFieldID,
			Hide:  ast.ObjectFieldInherit,
			Id:    newIdentifier(bt.name),
			Expr2: &ast.Var{Id: *newIdentifier(bt.name)},
		})
	} else {
		of.Expr2.(*ast.Object).Fields[0].Method.Parameters.Optional = append(of.Expr2.(*ast.Object).Fields[0].Method.Parameters.Optional, toNamedParameter(paramName(bt.name)))
		of.Expr2.(*ast.Object).Fields[0].Fodder1 = append(of.Expr2.(*ast.Object).Fields[0].Fodder1, ast.MakeFodderElement(ast.FodderParagraph, 0, 0, []string{"@param " + paramName(bt.name) + " (optional)"}))
		of.Expr2.(*ast.Object).Fields[0].Expr2.(*ast.Object).Fields = append(of.Expr2.(*ast.Object).Fields[0].Expr2.(*ast.Object).Fields, ast.ObjectField{
			Kind:  ast.ObjectFieldExpr,
			Hide:  ast.ObjectFieldInherit,
			Id:    newIdentifier(fmt.Sprintf("if %s != null then %s", paramName(bt.name), fieldName(bt.name))),
			Expr2: &ast.Var{Id: *newIdentifier(paramName(bt.name))},
		})
	}
	as := attributeMapToSlice(bt.Block.Attributes)
	sortAttributes(as)
	for _, a := range as {
		a.parent = &bt
		g.addAttribute(&block, a)
	}
	nestedbts := blockTypeMapToSlice(bt.Block.BlockTypes)
	sort.Slice(nestedbts, func(i, j int) bool {
		return nestedbts[i].name < nestedbts[j].name
	})
	for _, nbt := range nestedbts {
		nbt.parent = &bt
		g.addBlockType(&block, nbt)
	}
	of.Expr2.(*ast.Object).Fields = append(of.Expr2.(*ast.Object).Fields, block)
}
