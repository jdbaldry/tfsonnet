# Terraform Jsonnet Library

Generate Jsonnet libraries from the output of `terraform providers schema -json`.

This project is very much a work in progress but has a barely functional MVP.

- Read JSON from file or stdin.
- Generate documented Jsonnet library for AWS provider resources.

## Example

Generate aws.libsonnet

```
go run cmd/tfsonnet/main.go -i data/aws.json > data/aws.libsonnet
```

Use aws.libsonnet to generate the tf.json for an aws_instance.

```
jsonnet data/aws.jsonnet > aws.tf.json
terraform init
terraform plan
```

## TODO

```
rg TODO
```

## Resources

https://www.terraform.io/docs/extend/schemas/schema-behaviors.html
