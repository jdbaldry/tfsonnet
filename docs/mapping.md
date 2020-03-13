# Mapping to Jsonnet

## Block

Blocks represent both resource blocks and nested blocks. The structure and marshaled JSON is also defined in github.com/hashicorp/terraform/command/jsonprovider. A block contains a map of attribute names to the attribute definitions and also map of block type names to block types. Block types contain blocks which may contain block types. I am not currently aware of how deeply this nesting goes but it is rarely more than a couple levels deep in the providers I've worked with.

```go
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
```

```json
"aws_ami": {
  "version": 0,
  "block": {
    "attributes": {
      "architecture": {
        "type": "string",
        "computed": true
      }
    }
  }
}
```

becomes

```jsonnet
aws_ami:: {
  new(rname, <required attributes>):: {
    <attributes>
  }
}
```

## Attribute

An attribute and its marshaled JSON is defined by the marshaling functions in github.com/hashicorp/terraform/command/jsonprovider where an attributes fields are defined. With omitempty, most fields are not present in the `terraform provider schema -json` output

```go
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
```

For the purpose of mapping the schema to a Jsonnet library, attributes are broken into three major types: required, optional, and computed.

### Required

A required attribute must be specified and cannot be computed. It becomes a required parameter to its parents `new` constructor function.

```json
"required_attribute": {
  "type": "string",
  "required": true,
  "description": "description of the attribute",
}
```

becomes

```jsonnet
parent_block_name:: {
  // @param rname (required) Name of the resource,
  // @param required_attribute (required) <URL to parameter documentation>
  new(required_attribute):: {
    required_attribute: required_attribute, // description of the attribute.
  },
}
```

> Note, the parent_block and `new` function are generated from the containing block and not from the attribute itself. See the Block documentation for that mapping.

### Optional

An optional attribute does not require setting and Terraform may or may not compute its value in its absence. Whether or not an optional field is computed is determined by the computed bool.

An optional but not computed attribute becomes a `with` function that is used as a mixin to the constructed parent block.

```json
"optional_but_not_computed": {
  "type": "string",
  "optional": true,
  "description": "description of the attribute",
}
```

become

```jsonnet
parent_block_name:: {
  new():: {},
  // @param optional_but_not_computed (required) <URL to parameter documentation>
  with_optional_but_not_computed(optional_but_not_computed):: {
    optional_but_not_computed: optional_but_not_computed, // description of the attribute.
  },
}
```

Optional and computed attributes are similar to the above but they also have an existing hidden field returned from the `new` function that contains an interpolatable string referencing the computed attribute. The `with` mixin function will override the visibility of the field and replace its computed value with the provided value.

```json
"optional_and_computed": {
  "type": "string",
  "optional": true,
  "description": "description of the attribute",
}
```

becomes

```jsonnet
parent_block_name:: {
  new(rname):: {
    rname:: rname,
    optional_and_computed:: '${parent_block.%s.optional_and_computed}' % rname,
  },
  // @param optional_and_computed (required) <URL to parameter documentation>
  with_optional_and_computed(optional_and_computed):: {
    optional_and_computed::: optional_and_computed, // description of the attribute.
  },
}
```

> Note, the rname is a special parameter required by the `new` constructors in order to build a valid reference to the resulting Terraform computed value.
