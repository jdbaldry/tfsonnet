local tf = import 'aws.libsonnet';

{
  resource: {
    local resource = self,
    local policy = {
      Version: '2012-10-17',
      Statement: [
        {
          Effect: 'Allow',
          Principal: {
            Service: 'eks.amazonaws.com',
          },
          Action: 'sts:AssumeRole',
        },
      ],
    },

    local iam_role = tf.aws.aws_iam_role,
    aws_iam_role: {
      eks:
        iam_role.new(
          rname='eks',
          assume_role_policy=std.manifestJson(policy)
        ),
    },

    local iam_role_policy_attachment = tf.aws.aws_iam_role_policy_attachment,
    aws_iam_role_policy_attachment: {
      cluster_policy:
        iam_role_policy_attachment.new(
          rname='cluster_policy',
          policy_arn='arn:aws:iam::aws:policy/AmazonEKSClusterPolicy',
          role=resource.aws_iam_role.eks.name,
        ),

      service_policy:
        iam_role_policy_attachment.new(
          rname='service_policy',
          policy_arn='arn:aws:iam::aws:policy/AmazonEKSServicePolicy',
          role=resource.aws_iam_role.eks.name,
        ),
    },

    local eks_cluster = tf.aws.aws_eks_cluster,
    aws_eks_cluster: {
      test:
        eks_cluster.new(
          rname='test',
          name='test',
          role_arn=resource.aws_iam_role.eks.arn,
          vpc_config=eks_cluster.vpc_config.new(
            subnet_ids=['subnet-foobar'],
          ),
        ) +
        eks_cluster.with_version('1.15') + {
          depends_on: [
            'aws_iam_role_policy_attachment.cluster_policy',
            'aws_iam_role_policy_attachment.service_policy',
          ],
        },
    },
  },
}
