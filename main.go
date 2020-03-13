package main

import (
	"encoding/json"
	"flag"
	"io/ioutil"
	"log"
	"os"
	"sort"

	"github.com/google/go-jsonnet/ast"
	"github.com/jdbaldry/tfsonnet/pkg/printer"
)

const (
	docsURL string = "https://www.terraform.io/docs/providers"
)

var (
	i = flag.String("i", "-", "input file or '-' for reading from stdin")
)

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

	s := &schema{}
	if err := json.Unmarshal(input, s); err != nil {
		log.Fatal(err)
	}

	lib := &ast.Object{
		Fields: ast.ObjectFields{},
	}

	ps := s.ProviderSchemas
	providerSchemas := make([]string, len(ps))
	for p := range ps {
		providerSchemas = append(providerSchemas, p)
	}
	sort.Strings(providerSchemas)
	for _, p := range providerSchemas {
		// TODO: understand where the empty fields are coming from.
		if p != "" {
			gc := GenConfig{
				Provider:      p,
				ProviderAlias: p,
				DocsURLFunc:   DefaultDocsURLFunc,
			}
			switch p {
			case "digitalocean":
				gc.ProviderAlias = "do"
			}
			g, err := NewGen(ps[p], gc)
			if err != nil {
				log.Fatal(err)
			}

			lib.Fields = append(lib.Fields, ast.ObjectField{
				Kind:  ast.ObjectFieldID,
				Id:    newIdentifier(p),
				Expr2: g.generate(),
			})
		}
	}

	printer.Fprint(os.Stdout, lib)
}
