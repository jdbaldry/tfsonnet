local tf = import 'digitalocean.libsonnet';
{
  resource: {
    digitalocean_kubernetes_cluster: {
      test: tf.digitalocean.digitalocean_kubernetes_cluster.new(
        rname='test',
        name='test',
        node_pool={
          name: 'bloop',
          size: 10,
        },
        region='lon1',
        version='1.15.5-do.1',
      ),
    },
  },
}
