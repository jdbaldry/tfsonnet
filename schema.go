package main

// Attribute models a Terraform attribute.
// TODO: Handle type field.
type Attribute struct {
	Computed bool `json:"computed"`
	Required bool `json:"required"`
	Optional bool `json:"optional"`
}

// BlockType models a Terraform block_type field that optionally appears in in the schema and describes the type of the Terraform block.
type BlockType struct {
	Block       Block
	MinItems    int    `json:"min_items"`
	MaxItems    int    `json:"max_items"`
	NestingMode string `json:"nesting_mode"`
}

// Block models a Terraform HCL block.
type Block struct {
	Attributes map[string]Attribute
	BlockTypes *map[string]BlockType `json:"block_types"`
}

// ResourceSchema models a Terraform resource schema.
type ResourceSchema struct {
	Block Block
}

// ProviderSchema models a Terraform provider schema.
type ProviderSchema struct {
	ResourceSchemas map[string]ResourceSchema `json:"resource_schemas"`
}

// Schema models the useful output from `terraform providers schema -json`.
type Schema struct {
	ProviderSchemas map[string]ProviderSchema `json:"provider_schemas"`
}
