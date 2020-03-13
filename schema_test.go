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

func TestSortAttributes(t *testing.T) {
	tests := []struct {
		name string
		in   []attribute
		want []attribute
	}{
		{
			"required fields < not required fields",
			[]attribute{
				{Required: false},
				{Required: true},
			},
			[]attribute{
				{Required: true},
				{Required: false},
			},
		},
		{
			"don't swap already sorted required fields",
			[]attribute{
				{Required: true},
				{Required: false},
			},
			[]attribute{
				{Required: true},
				{Required: false},
			},
		},
		{
			"if both are required, sort on name",
			[]attribute{
				{Required: true, name: "z"},
				{Required: true, name: "a"},
			},
			[]attribute{
				{Required: true, name: "a"},
				{Required: true, name: "z"},
			},
		},
		{
			"optional fields < computed fields",
			[]attribute{
				{Computed: true},
				{Optional: true},
			},
			[]attribute{
				{Optional: true},
				{Computed: true},
			},
		},
		{
			"don't swap already sorted optional fields",
			[]attribute{
				{Optional: true},
				{Optional: false},
			},
			[]attribute{
				{Optional: true},
				{Optional: false},
			},
		},
		{
			"if both are optional, sort on name",
			[]attribute{
				{Optional: true, name: "z"},
				{Optional: true, name: "a"},
			},
			[]attribute{
				{Optional: true, name: "a"},
				{Optional: true, name: "z"},
			},
		},
	}

	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			got := make([]attribute, len(tc.in))
			copy(got, tc.in)
			sortAttributes(got)
			assert.Equal(t, tc.want, got)
		})
	}
}
