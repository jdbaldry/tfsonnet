package main

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestMakeInterpolatable(t *testing.T) {
	tests := []struct {
		name string

		s    []string
		sep  string
		want string
	}{
		{
			"attribute id",
			[]string{"aws_instance", "foo", "id"},
			".",
			"${aws_instance.foo.id}",
		},
	}

	for _, tc := range tests {
		t.Run(tc.name, func(t *testing.T) {
			got := makeInterpolatable(tc.s, tc.sep)
			assert.Equal(t, tc.want, got)
		})
	}
}
