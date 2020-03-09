GIT_ROOT := $(shell git rev-parse --show-toplevel)

all: tfsonnet examples

tfsonnet: main.go schema.go gen.go
	go build

examples: examples/aws/aws.libsonnet examples/digitalocean/digitalocean.libsonnet

examples/aws/aws.json: tfsonnet
	cd examples/aws \
		&& jsonnet providers.jsonnet > providers.tf.json \
		&& terraform init \
		&& terraform providers schema -json | jq . > aws.json

examples/aws/aws.libsonnet: tfsonnet examples/aws/aws.json
	$(GIT_ROOT)/tfsonnet -i examples/aws/aws.json > $@

examples/digitalocean/digitalocean.json:
	cd examples/digitalocean \
			&& jsonnet providers.jsonnet > providers.tf.json \
			&& terraform init \
			&& terraform providers schema -json | jq . > digitalocean.json

examples/digitalocean/digitalocean.libsonnet: tfsonnet examples/digitalocean/digitalocean.json
	$(GIT_ROOT)/tfsonnet -i examples/digitalocean/digitalocean.json > $@
