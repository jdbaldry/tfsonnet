package main

import (
	"encoding/json"
	"flag"
	"io/ioutil"
	"log"
	"os"
	"sort"
	"strconv"

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
		gc := GenConfig{
			Provider:      p,
			ProviderAlias: p,
			DocsURLFunc:   DefaultDocsURLFunc,
		}
		switch p {
		case "digitalocean":
			gc.ProviderAlias = "do"
		}
		g, err := NewGen(ps, gc)
		if err != nil {
			log.Fatal(err)
		}

		lib.Fields = append(lib.Fields, ast.ObjectField{
			Kind:  ast.ObjectFieldStr,
			Id:    newIdentifier(p),
			Expr2: g.Generate(),
		})
	}

	sortFields(lib.Fields)

	printer.Fprint(os.Stdout, lib)
}

func sortCommaSeparatedID(csi []ast.CommaSeparatedID) {
	sort.Slice(csi, func(i, j int) bool { return csi[i].Name < csi[j].Name })
}

func sortNamedParameters(np []ast.NamedParameter) {
	sort.Slice(np, func(i, j int) bool { return np[i].Name < np[j].Name })
}

func sortFodder(f ast.Fodder) {
	sort.Slice(f, func(i, j int) bool { return f[i].Comment[0] < f[j].Comment[0] })
}
func sortFields(of ast.ObjectFields) {
	sort.Slice(of, func(i, j int) bool { return *of[i].Id < *of[j].Id })
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
