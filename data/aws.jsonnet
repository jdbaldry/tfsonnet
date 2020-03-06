local tf = import 'aws.libsonnet';

{
  provider: {
    aws: {
      profile: 'default',
      region: 'us-east-1',
    },
  },
  resource: {
    aws_instance: {
      example: tf.aws.aws_instance(
        rname='example',
        ami='ami-2757f631',
        instance_type='t2.micro',
      ),
    },
  },
}
