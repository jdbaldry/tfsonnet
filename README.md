# Terraform Jsonnet Library

Generate Jsonnet libraries from the output of `terraform providers schema -json`.

This project is very much a work in progress but has a barely functional MVP.

- Read JSON from file or stdin.
- Generate documented Jsonnet library for AWS provider resources.

## Example

Generate library from `terraform providers schema -json` output

```
cat <<EOF > aws.jsonnet
{
  provider: {
    aws: {
      profile: 'default',
      region: 'us-east-1',
    },
  },
}
EOF
jsonnet aws.jsonnet > aws.tf.json
terraform init
go install
terraform providers schema -json | tfsonnet > aws.libsonnet
```

Use `aws.libsonnet` to generate the `tf.json` for an `aws_instance`.

```
jsonnet examples/aws/aws_instance.jsonnet > aws.tf.json
terraform init
terraform plan
```

## TODO

- Support datasources.
- Support parameter type assertions.

```
rg TODO
```

## Resources

https://www.terraform.io/docs/extend/schemas/schema-behaviors.html
