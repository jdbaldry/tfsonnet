package main

import (
	"encoding/json"
	"flag"
	"fmt"
	"io/ioutil"
	"log"
	"os"

	"github.com/hashicorp/hcl"
)

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

	var intermediate interface{}
	if err := hcl.Unmarshal(input, &intermediate); err != nil {
		log.Fatal(err)
	}

	output, err := json.MarshalIndent(&intermediate, "", "  ")
	if err != nil {
		log.Fatal(err)
	}

	fmt.Println(string(output))

}
