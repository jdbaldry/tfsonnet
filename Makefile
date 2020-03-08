GIT_ROOT := $(shell git rev-parse --show-toplevel)

all: tfsonnet examples

tfsonnet: main.go schema.go
	go build

examples: examples/aws/aws.libsonnet examples/digitalocean/digitalocean.libsonnet

examples/aws/aws.libsonnet: tfsonnet
	cd examples/aws \
		&& jsonnet providers.jsonnet > providers.tf.json \
		&& terraform init \
		&& terraform providers schema -json | $(GIT_ROOT)/tfsonnet > aws.libsonnet

examples/digitalocean/digitalocean.libsonnet: tfsonnet
	cd examples/digitalocean \
		&& jsonnet providers.jsonnet > providers.tf.json \
		&& terraform init \
		&& terraform providers schema -json | $(GIT_ROOT)/tfsonnet > digitalocean.libsonnet
