package main

import (
	"encoding/json"
	"sort"

	"github.com/google/go-jsonnet/ast"
)

// Identifier is an entity that can return a slice of strings that identify the entity in Terraform.
// For example, []string{"aws_instance", "an_instance", "id"}
type Identifier interface {
	Identify() []string
}

// schema models the useful output from `terraform providers schema -json`.
type schema struct {
	ProviderSchemas map[string]providerSchema `json:"provider_schemas"`
}

// providerSchema models a Terraform provider schema.
type providerSchema struct {
	ResourceSchemas map[string]resourceSchema `json:"resource_schemas"`
}

// resourceSchema models a Terraform resource schema.
type resourceSchema struct {
	name  string
	Block block
}

// Identify implements the Identifier interface.
// It returns a slice of resource name and the literal "%s" representing to-be interpolated name value of the resource instance.
func (rs resourceSchema) Identify() []string {
	return []string{rs.name, "%s"}
}

type block struct {
	Attributes      map[string]attribute `json:"attributes,omitempty"`
	BlockTypes      map[string]blockType `json:"block_types,omitempty"`
	Description     string               `json:"description,omitempty"`
	DescriptionKind string               `json:"description_kind,omitempty"`
	Deprecated      bool                 `json:"deprecated,omitempty"`
}

type blockType struct {
	parent      Identifier
	name        string
	NestingMode string `json:"nesting_mode,omitempty"`
	Block       *block `json:"block,omitempty"`
	MinItems    uint64 `json:"min_items,omitempty"`
	MaxItems    uint64 `json:"max_items,omitempty"`
}

// Identify implements the Identifier interface.
func (bt blockType) Identify() []string {
	if bt.parent != nil {
		return append(bt.parent.Identify(), bt.name)
	}
	return []string{bt.name}
}

// attribute models a Terraform attribute.
// TODO: Handle type field.
type attribute struct {
	parent          Identifier
	name            string
	AttributeType   json.RawMessage `json:"type,omitempty"`
	Description     string          `json:"description,omitempty"`
	DescriptionKind string          `json:"description_kind,omitempty"`
	Deprecated      bool            `json:"deprecated,omitempty"`
	Required        bool            `json:"required,omitempty"`
	Optional        bool            `json:"optional,omitempty"`
	Computed        bool            `json:"computed,omitempty"`
	Sensitive       bool            `json:"sensitive,omitempty"`
}

// Identify implements the Identifier interface.
func (a attribute) Identify() []string {
	if a.parent != nil {
		return append(a.parent.Identify(), a.name)
	}
	return []string{a.name}
}

// ToParameter returns the attribute as a Jsonnet required parameter.
func (a attribute) ToParameter() ast.CommaSeparatedID {
	return ast.CommaSeparatedID{Name: *newIdentifier(a.name)}
}

// Convert map of attribute names to attributes into a slice of attributes.
func mapToSlice(m map[string]attribute) []attribute {
	as := make([]attribute, len(m))
	i := 0
	for name, a := range m {
		as[i] = a
		as[i].name = name
		i++
	}
	return as
}

// sortAttributes sorts a slice of attributes.
func sortAttributes(as []attribute) {
	sort.Slice(as, func(i, j int) bool {
		if as[i].Required && !as[j].Required {
			return true
		}
		if !as[i].Required && as[j].Required {
			return false
		}
		if as[i].Required && as[j].Required {
			return as[i].name < as[j].name
		}

		if as[i].Computed && !as[j].Computed {
			return false
		}

		if !as[i].Computed && as[j].Computed {
			return true
		}

		if as[i].Computed && as[j].Computed {
			return as[i].name < as[j].name
		}
		return as[i].name < as[j].name
	})
}
