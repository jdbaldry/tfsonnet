package main

import "strings"

// makeInterpolatable returns a string that can be interpolated by Terraform.
func makeInterpolatable(s []string, sep string) string {
	return "${" + strings.Join(s, sep) + "}"
}

// interpolatableID returns a Terraform identifier as an interpolatable string.
func interpolatableID(s []string) string {
	return makeInterpolatable(s, ".")
}
