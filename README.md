# Terraform Jsonnet Library

Generate Jsonnet libraries from the output of `terraform providers schema -json`.

This project is very much a work in progress but has a barely functional MVP.

- Read JSON from file or stdin.
- Generate documented Jsonnet library for AWS provider resources.

## Why?
- The powerful jsonnet mixin semantics allows the creation of libraries more flexible than written in HCL.
- Jsonnet can be used to template more than just Terraform IaaC. See https://github.com/google/jsonnet/tree/master/examples, https://github.com/grafana/grafonnet-lib, https://github.com/bitnami-labs/kube-libsonnet, or https://github.com/grafana/jsonnet-libs.

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
- Properly support nested attributes. Currently only un-nested resource attributes are handled correctly (`'${aws.aws_instance.id}'`) and not block attributes (`'${aws.aws_eks_cluster.vpc_config.vpc_id}'`) or nested attributes (`'\${aws.aws_eks_cluster.certificate_authority.data}'`).
- Support parameter type assertions.

```
rg TODO
```

## Resources

https://www.terraform.io/docs/extend/schemas/schema-behaviors.html
