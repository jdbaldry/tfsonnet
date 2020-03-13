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
			attribute{Computed: true, AttributeType: json.RawMessage([]byte(`"string"`))},
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
			block{
				Attributes: map[string]attribute{
					"certificate_transparency_logging_preference": {
						Optional:      true,
						AttributeType: json.RawMessage([]byte(`"string"`)),
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
			block{
				Attributes: map[string]attribute{},
				BlockTypes: map[string]blockType{
					"options": {
						Block: &block{
							Attributes: map[string]attribute{},
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
			case attribute:
				got := attribute{}
				err := json.Unmarshal(tc.in, &got)
				assert.NoError(t, err)
				assert.EqualValues(t, tc.want, got)

			case block:
				got := block{}
				err := json.Unmarshal(tc.in, &got)
				assert.NoError(t, err)
				assert.EqualValues(t, tc.want, got)

			default:
				assert.Fail(t, "unknown type in test")
			}
		})
	}
}
