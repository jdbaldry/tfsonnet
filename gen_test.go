package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestNewInterpolatable(t *testing.T) {
	tests := []struct {
		name string
		in   []string
		want interpolatable
	}{
		{
			"resource attribute for known resource",
			[]string{"aws_instance", "foo", "id"},
			"${aws_instance.foo.id}",
		},
		{
			"resource attribute for jsonnet interpolation",
			[]string{"aws_instance", "%s", "id"},
			"${aws_instance.%s.id}",
		},
		{
			"empty",
			[]string{},
			"",
		},
	}

	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			got := newInterpolatable(tc.in)
			assert.Equal(t, tc.want, got)
		})
	}
}
