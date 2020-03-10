local tf = import 'aws.libsonnet';

{
  resource: {
    aws_instance: {
      example: tf.aws.aws_instance.new(
        rname='example',
        ami='ami-2757f631',
        instance_type='t2.micro',
      ),
    },
  },
}
