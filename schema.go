package main

import "encoding/json"

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
	Block block
}

type block struct {
	Attributes      map[string]attribute `json:"attributes,omitempty"`
	BlockTypes      map[string]blockType `json:"block_types,omitempty"`
	Description     string               `json:"description,omitempty"`
	DescriptionKind string               `json:"description_kind,omitempty"`
	Deprecated      bool                 `json:"deprecated,omitempty"`
}

type blockType struct {
	NestingMode string `json:"nesting_mode,omitempty"`
	Block       *block `json:"block,omitempty"`
	MinItems    uint64 `json:"min_items,omitempty"`
	MaxItems    uint64 `json:"max_items,omitempty"`
}

// attribute models a Terraform attribute.
// TODO: Handle type field.
type attribute struct {
	AttributeType   json.RawMessage `json:"type,omitempty"`
	Description     string          `json:"description,omitempty"`
	DescriptionKind string          `json:"description_kind,omitempty"`
	Deprecated      bool            `json:"deprecated,omitempty"`
	Required        bool            `json:"required,omitempty"`
	Optional        bool            `json:"optional,omitempty"`
	Computed        bool            `json:"computed,omitempty"`
	Sensitive       bool            `json:"sensitive,omitempty"`
}
