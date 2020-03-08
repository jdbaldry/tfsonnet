package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"io/ioutil"
	"log"
	"os"
	"strconv"
	"strings"

	"tfsonnet/pkg/printer"

	"github.com/google/go-jsonnet/ast"
)

const (
	docsURL string = "https://www.terraform.io/docs/providers"
)

var jsonnetReservedWords = []string{"assert", "else", "error", "false", "for", "function", "if",
	"import", "importstr", "in", "local", "null", "tailstrict", "then", "self", "super", "true"}

var i = flag.String("i", "-", "input file or '-' for reading from stdin")

func main() {
	flag.Parse()
	var input []byte
	var err error
	if *i == "-" {
		input, err = ioutil.ReadAll(os.Stdin)
		if err != nil {
			log.Fatal(err)
		}
	} else {
		input, err = ioutil.ReadFile(*i)
		if err != nil {
			log.Fatal(err)
		}
	}

	s := &Schema{}
	if err := json.Unmarshal(input, s); err != nil {
		log.Fatal(err)
	}

	lib := &ast.Object{
		Fields: ast.ObjectFields{},
	}

	for p, ps := range s.ProviderSchemas {
		resources := ast.ObjectFields{}
		for r, rs := range ps.ResourceSchemas {
			rWithoutProvider := strings.SplitAfter(r, fmt.Sprintf("%s_", p))[1]
			rdocsURL := fmt.Sprintf("%s/%s/r/%s.html", docsURL, p, rWithoutProvider)

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
					Comment: []string{fmt.Sprintf("%s - %s", r, rdocsURL)},
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
						break loop
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
						Comment: []string{fmt.Sprintf("@param %s (%s) %s#%s.", a, kind, rdocsURL, a)},
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
						Comment: []string{fmt.Sprintf("@param %s (%s) %s#%s.", a, kind, rdocsURL, a)},
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

		lib.Fields = append(lib.Fields, ast.ObjectField{
			Kind: ast.ObjectFieldID,
			Id:   newIdentifier(p),
			Expr2: &ast.Object{
				Fields: resources,
			},
		})
	}

	printer.Fprint(os.Stdout, lib)
}

// newIdentifier creates an identifier.
func newIdentifier(value string) *ast.Identifier {
	id := ast.Identifier(value)
	return &id
}

// newLiteralNumber creates a number literal.
func newLiteralNumber(in string) *ast.LiteralNumber {
	f, err := strconv.ParseFloat(in, 64)
	if err != nil {
		return &ast.LiteralNumber{OriginalString: in, Value: 0}
	}
	return &ast.LiteralNumber{OriginalString: in, Value: f}
}
