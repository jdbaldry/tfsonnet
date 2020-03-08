package main

import (
	"encoding/json"
	"testing"

	"github.com/tj/assert"
)

func TestDecode(t *testing.T) {
	tests := []struct {
		name string

		in   []byte
		want interface{}
	}{
		{
			"attribute",
			[]byte(`{ "computed": true, "type": "string" }`),
			Attribute{Computed: true},
		},
		{
			"block with only attributes",
			[]byte(`{
	"attributes": {
		"certificate_transparency_logging_preference": {
				"optional": true,
				"type": "string"
		}
	}
}`),
			Block{
				Attributes: map[string]Attribute{
					"certificate_transparency_logging_preference": {
						Optional: true,
					},
				},
			},
		},
		{
			"block with block_types",
			[]byte(`{
	"attributes": {},
	"block_types": {
			"options": {
				"block": {
						"attributes": {}
				},
				"max_items": 1,
				"nesting_mode": "list"
			}
	}
}`),
			Block{
				Attributes: map[string]Attribute{},
				BlockTypes: &map[string]BlockType{
					"options": {
						Block: Block{
							Attributes: map[string]Attribute{},
						},
						MaxItems:    1,
						NestingMode: "list",
					},
				},
			},
		},
	}

	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			switch tc.want.(type) {
			case Attribute:
				got := Attribute{}
				err := json.Unmarshal(tc.in, &got)
				assert.NoError(t, err)
				assert.EqualValues(t, tc.want, got)

			case Block:
				got := Block{}
				err := json.Unmarshal(tc.in, &got)
				assert.NoError(t, err)
				assert.EqualValues(t, tc.want, got)

			default:
				assert.Fail(t, "unknown type in test")
			}
		})
	}
}
