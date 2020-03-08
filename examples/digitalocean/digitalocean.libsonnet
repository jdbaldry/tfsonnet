{
  digitalocean:: {
    //  digitalocean_cdn - https://www.terraform.io/docs/providers/digitalocean/r/cdn.html
    // @param origin (required) https://www.terraform.io/docs/providers/digitalocean/r/cdn.html#origin.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate_id (optional) https://www.terraform.io/docs/providers/digitalocean/r/cdn.html#certificate_id.
    // @param custom_domain (optional) https://www.terraform.io/docs/providers/digitalocean/r/cdn.html#custom_domain.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/cdn.html#id.
    // @param ttl (optional) https://www.terraform.io/docs/providers/digitalocean/r/cdn.html#ttl.
    digitalocean_cdn(rname, origin, certificate_id=null, custom_domain=null, id=null, ttl=null):: {
      origin: origin,
      [if certificate_id != null then 'certificate_id']: certificate_id,
      [if custom_domain != null then 'custom_domain']: custom_domain,
      [if id != null then 'id']: id,
      [if ttl != null then 'ttl']: ttl,
      created_at:: '${digitalocean_cdn.%s.created_at}' % rname,
      endpoint:: '${digitalocean_cdn.%s.endpoint}' % rname,
      rname:: rname,
    },
    //  digitalocean_certificate - https://www.terraform.io/docs/providers/digitalocean/r/certificate.html
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate_chain (optional) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#certificate_chain.
    // @param domains (optional) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#domains.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#id.
    // @param leaf_certificate (optional) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#leaf_certificate.
    // @param private_key (optional) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#private_key.
    // @param type (optional) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#type.
    digitalocean_certificate(rname, name, certificate_chain=null, domains=null, id=null, leaf_certificate=null, private_key=null, type=null):: {
      name: name,
      [if certificate_chain != null then 'certificate_chain']: certificate_chain,
      [if domains != null then 'domains']: domains,
      [if id != null then 'id']: id,
      [if leaf_certificate != null then 'leaf_certificate']: leaf_certificate,
      [if private_key != null then 'private_key']: private_key,
      [if type != null then 'type']: type,
      not_after:: '${digitalocean_certificate.%s.not_after}' % rname,
      rname:: rname,
      sha1_fingerprint:: '${digitalocean_certificate.%s.sha1_fingerprint}' % rname,
      state:: '${digitalocean_certificate.%s.state}' % rname,
    },
    //  digitalocean_database_cluster - https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html
    // @param engine (required) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#engine.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#name.
    // @param node_count (required) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#node_count.
    // @param region (required) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#region.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param size (required) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#size.
    // @param eviction_policy (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#eviction_policy.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#id.
    // @param maintenance_window (optional) maintenance_window block.
    // @param sql_mode (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#sql_mode.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#tags.
    // @param version (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#version.
    digitalocean_database_cluster(rname, engine, name, node_count, region, size, eviction_policy=null, id=null, maintenance_window={}, sql_mode=null, tags=null, version=null):: {
      engine: engine,
      name: name,
      node_count: node_count,
      region: region,
      size: size,
      [if eviction_policy != null then 'eviction_policy']: eviction_policy,
      [if id != null then 'id']: id,
      [if maintenance_window != null then 'maintenance_window']: maintenance_window,
      [if sql_mode != null then 'sql_mode']: sql_mode,
      [if tags != null then 'tags']: tags,
      [if version != null then 'version']: version,
      database:: '${digitalocean_database_cluster.%s.database}' % rname,
      host:: '${digitalocean_database_cluster.%s.host}' % rname,
      password:: '${digitalocean_database_cluster.%s.password}' % rname,
      port:: '${digitalocean_database_cluster.%s.port}' % rname,
      private_host:: '${digitalocean_database_cluster.%s.private_host}' % rname,
      private_uri:: '${digitalocean_database_cluster.%s.private_uri}' % rname,
      rname:: rname,
      uri:: '${digitalocean_database_cluster.%s.uri}' % rname,
      urn:: '${digitalocean_database_cluster.%s.urn}' % rname,
      user:: '${digitalocean_database_cluster.%s.user}' % rname,
    },
    //  digitalocean_database_connection_pool - https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html
    // @param cluster_id (required) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#cluster_id.
    // @param db_name (required) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#db_name.
    // @param mode (required) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#mode.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param size (required) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#size.
    // @param user (required) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#user.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#id.
    digitalocean_database_connection_pool(rname, cluster_id, db_name, mode, name, size, user, id=null):: {
      cluster_id: cluster_id,
      db_name: db_name,
      mode: mode,
      name: name,
      size: size,
      user: user,
      [if id != null then 'id']: id,
      host:: '${digitalocean_database_connection_pool.%s.host}' % rname,
      password:: '${digitalocean_database_connection_pool.%s.password}' % rname,
      port:: '${digitalocean_database_connection_pool.%s.port}' % rname,
      private_host:: '${digitalocean_database_connection_pool.%s.private_host}' % rname,
      private_uri:: '${digitalocean_database_connection_pool.%s.private_uri}' % rname,
      rname:: rname,
      uri:: '${digitalocean_database_connection_pool.%s.uri}' % rname,
    },
    //  digitalocean_database_db - https://www.terraform.io/docs/providers/digitalocean/r/database_db.html
    // @param cluster_id (required) https://www.terraform.io/docs/providers/digitalocean/r/database_db.html#cluster_id.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/database_db.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_db.html#id.
    digitalocean_database_db(rname, cluster_id, name, id=null):: {
      cluster_id: cluster_id,
      name: name,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    //  digitalocean_database_firewall - https://www.terraform.io/docs/providers/digitalocean/r/database_firewall.html
    // @param cluster_id (required) https://www.terraform.io/docs/providers/digitalocean/r/database_firewall.html#cluster_id.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rule (required) rule block.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_firewall.html#id.
    digitalocean_database_firewall(rname, cluster_id, rule, id=null):: {
      cluster_id: cluster_id,
      rule: rule,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    //  digitalocean_database_replica - https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html
    // @param cluster_id (required) https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html#cluster_id.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html#id.
    // @param region (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html#region.
    // @param size (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html#size.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html#tags.
    digitalocean_database_replica(rname, cluster_id, name, id=null, region=null, size=null, tags=null):: {
      cluster_id: cluster_id,
      name: name,
      [if id != null then 'id']: id,
      [if region != null then 'region']: region,
      [if size != null then 'size']: size,
      [if tags != null then 'tags']: tags,
      database:: '${digitalocean_database_replica.%s.database}' % rname,
      host:: '${digitalocean_database_replica.%s.host}' % rname,
      password:: '${digitalocean_database_replica.%s.password}' % rname,
      port:: '${digitalocean_database_replica.%s.port}' % rname,
      private_host:: '${digitalocean_database_replica.%s.private_host}' % rname,
      private_uri:: '${digitalocean_database_replica.%s.private_uri}' % rname,
      rname:: rname,
      uri:: '${digitalocean_database_replica.%s.uri}' % rname,
      user:: '${digitalocean_database_replica.%s.user}' % rname,
    },
    //  digitalocean_database_user - https://www.terraform.io/docs/providers/digitalocean/r/database_user.html
    // @param cluster_id (required) https://www.terraform.io/docs/providers/digitalocean/r/database_user.html#cluster_id.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/database_user.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_user.html#id.
    digitalocean_database_user(rname, cluster_id, name, id=null):: {
      cluster_id: cluster_id,
      name: name,
      [if id != null then 'id']: id,
      password:: '${digitalocean_database_user.%s.password}' % rname,
      rname:: rname,
      role:: '${digitalocean_database_user.%s.role}' % rname,
    },
    //  digitalocean_domain - https://www.terraform.io/docs/providers/digitalocean/r/domain.html
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/domain.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/domain.html#id.
    // @param ip_address (optional) https://www.terraform.io/docs/providers/digitalocean/r/domain.html#ip_address.
    digitalocean_domain(rname, name, id=null, ip_address=null):: {
      name: name,
      [if id != null then 'id']: id,
      [if ip_address != null then 'ip_address']: ip_address,
      rname:: rname,
      urn:: '${digitalocean_domain.%s.urn}' % rname,
    },
    //  digitalocean_droplet - https://www.terraform.io/docs/providers/digitalocean/r/droplet.html
    // @param image (required) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#image.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#name.
    // @param region (required) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#region.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param size (required) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#size.
    // @param backups (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#backups.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#id.
    // @param ipv6 (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#ipv6.
    // @param monitoring (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#monitoring.
    // @param private_networking (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#private_networking.
    // @param resize_disk (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#resize_disk.
    // @param ssh_keys (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#ssh_keys.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#tags.
    // @param user_data (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#user_data.
    // @param volume_ids (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#volume_ids.
    digitalocean_droplet(rname, image, name, region, size, backups=null, id=null, ipv6=null, monitoring=null, private_networking=null, resize_disk=null, ssh_keys=null, tags=null, user_data=null, volume_ids=null):: {
      image: image,
      name: name,
      region: region,
      size: size,
      [if backups != null then 'backups']: backups,
      [if id != null then 'id']: id,
      [if ipv6 != null then 'ipv6']: ipv6,
      [if monitoring != null then 'monitoring']: monitoring,
      [if private_networking != null then 'private_networking']: private_networking,
      [if resize_disk != null then 'resize_disk']: resize_disk,
      [if ssh_keys != null then 'ssh_keys']: ssh_keys,
      [if tags != null then 'tags']: tags,
      [if user_data != null then 'user_data']: user_data,
      [if volume_ids != null then 'volume_ids']: volume_ids,
      created_at:: '${digitalocean_droplet.%s.created_at}' % rname,
      disk:: '${digitalocean_droplet.%s.disk}' % rname,
      ipv4_address:: '${digitalocean_droplet.%s.ipv4_address}' % rname,
      ipv4_address_private:: '${digitalocean_droplet.%s.ipv4_address_private}' % rname,
      ipv6_address:: '${digitalocean_droplet.%s.ipv6_address}' % rname,
      ipv6_address_private:: '${digitalocean_droplet.%s.ipv6_address_private}' % rname,
      locked:: '${digitalocean_droplet.%s.locked}' % rname,
      memory:: '${digitalocean_droplet.%s.memory}' % rname,
      price_hourly:: '${digitalocean_droplet.%s.price_hourly}' % rname,
      price_monthly:: '${digitalocean_droplet.%s.price_monthly}' % rname,
      rname:: rname,
      status:: '${digitalocean_droplet.%s.status}' % rname,
      urn:: '${digitalocean_droplet.%s.urn}' % rname,
      vcpus:: '${digitalocean_droplet.%s.vcpus}' % rname,
    },
    //  digitalocean_droplet_snapshot - https://www.terraform.io/docs/providers/digitalocean/r/droplet_snapshot.html
    // @param droplet_id (required) https://www.terraform.io/docs/providers/digitalocean/r/droplet_snapshot.html#droplet_id.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/droplet_snapshot.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet_snapshot.html#id.
    digitalocean_droplet_snapshot(rname, droplet_id, name, id=null):: {
      droplet_id: droplet_id,
      name: name,
      [if id != null then 'id']: id,
      created_at:: '${digitalocean_droplet_snapshot.%s.created_at}' % rname,
      min_disk_size:: '${digitalocean_droplet_snapshot.%s.min_disk_size}' % rname,
      regions:: '${digitalocean_droplet_snapshot.%s.regions}' % rname,
      rname:: rname,
      size:: '${digitalocean_droplet_snapshot.%s.size}' % rname,
    },
    //  digitalocean_firewall - https://www.terraform.io/docs/providers/digitalocean/r/firewall.html
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/firewall.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param droplet_ids (optional) https://www.terraform.io/docs/providers/digitalocean/r/firewall.html#droplet_ids.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/firewall.html#id.
    // @param inbound_rule (optional) inbound_rule block.
    // @param outbound_rule (optional) outbound_rule block.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/firewall.html#tags.
    digitalocean_firewall(rname, name, droplet_ids=null, id=null, inbound_rule={}, outbound_rule={}, tags=null):: {
      name: name,
      [if droplet_ids != null then 'droplet_ids']: droplet_ids,
      [if id != null then 'id']: id,
      [if inbound_rule != null then 'inbound_rule']: inbound_rule,
      [if outbound_rule != null then 'outbound_rule']: outbound_rule,
      [if tags != null then 'tags']: tags,
      created_at:: '${digitalocean_firewall.%s.created_at}' % rname,
      pending_changes:: '${digitalocean_firewall.%s.pending_changes}' % rname,
      rname:: rname,
      status:: '${digitalocean_firewall.%s.status}' % rname,
    },
    //  digitalocean_floating_ip - https://www.terraform.io/docs/providers/digitalocean/r/floating_ip.html
    // @param region (required) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip.html#region.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param droplet_id (optional) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip.html#droplet_id.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip.html#id.
    // @param ip_address (optional) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip.html#ip_address.
    digitalocean_floating_ip(rname, region, droplet_id=null, id=null, ip_address=null):: {
      region: region,
      [if droplet_id != null then 'droplet_id']: droplet_id,
      [if id != null then 'id']: id,
      [if ip_address != null then 'ip_address']: ip_address,
      rname:: rname,
      urn:: '${digitalocean_floating_ip.%s.urn}' % rname,
    },
    //  digitalocean_floating_ip_assignment - https://www.terraform.io/docs/providers/digitalocean/r/floating_ip_assignment.html
    // @param droplet_id (required) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip_assignment.html#droplet_id.
    // @param ip_address (required) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip_assignment.html#ip_address.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip_assignment.html#id.
    digitalocean_floating_ip_assignment(rname, droplet_id, ip_address, id=null):: {
      droplet_id: droplet_id,
      ip_address: ip_address,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    //  digitalocean_kubernetes_cluster - https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_cluster.html
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_cluster.html#name.
    // @param node_pool (required) node_pool block.
    // @param region (required) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_cluster.html#region.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param version (required) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_cluster.html#version.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_cluster.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_cluster.html#tags.
    digitalocean_kubernetes_cluster(rname, name, node_pool, region, version, id=null, tags=null):: {
      name: name,
      node_pool: node_pool,
      region: region,
      version: version,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      cluster_subnet:: '${digitalocean_kubernetes_cluster.%s.cluster_subnet}' % rname,
      created_at:: '${digitalocean_kubernetes_cluster.%s.created_at}' % rname,
      endpoint:: '${digitalocean_kubernetes_cluster.%s.endpoint}' % rname,
      ipv4_address:: '${digitalocean_kubernetes_cluster.%s.ipv4_address}' % rname,
      kube_config:: '${digitalocean_kubernetes_cluster.%s.kube_config}' % rname,
      rname:: rname,
      service_subnet:: '${digitalocean_kubernetes_cluster.%s.service_subnet}' % rname,
      status:: '${digitalocean_kubernetes_cluster.%s.status}' % rname,
      updated_at:: '${digitalocean_kubernetes_cluster.%s.updated_at}' % rname,
    },
    //  digitalocean_kubernetes_node_pool - https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html
    // @param cluster_id (required) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#cluster_id.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param size (required) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#size.
    // @param auto_scale (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#auto_scale.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#id.
    // @param max_nodes (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#max_nodes.
    // @param min_nodes (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#min_nodes.
    // @param node_count (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#node_count.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#tags.
    digitalocean_kubernetes_node_pool(rname, cluster_id, name, size, auto_scale=null, id=null, max_nodes=null, min_nodes=null, node_count=null, tags=null):: {
      cluster_id: cluster_id,
      name: name,
      size: size,
      [if auto_scale != null then 'auto_scale']: auto_scale,
      [if id != null then 'id']: id,
      [if max_nodes != null then 'max_nodes']: max_nodes,
      [if min_nodes != null then 'min_nodes']: min_nodes,
      [if node_count != null then 'node_count']: node_count,
      [if tags != null then 'tags']: tags,
      actual_node_count:: '${digitalocean_kubernetes_node_pool.%s.actual_node_count}' % rname,
      nodes:: '${digitalocean_kubernetes_node_pool.%s.nodes}' % rname,
      rname:: rname,
    },
    //  digitalocean_loadbalancer - https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html
    // @param forwarding_rule (required) forwarding_rule block.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#name.
    // @param region (required) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#region.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param algorithm (optional) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#algorithm.
    // @param droplet_ids (optional) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#droplet_ids.
    // @param droplet_tag (optional) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#droplet_tag.
    // @param enable_proxy_protocol (optional) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#enable_proxy_protocol.
    // @param healthcheck (optional) healthcheck block.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#id.
    // @param redirect_http_to_https (optional) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#redirect_http_to_https.
    // @param sticky_sessions (optional) sticky_sessions block.
    digitalocean_loadbalancer(rname, forwarding_rule, name, region, algorithm=null, droplet_ids=null, droplet_tag=null, enable_proxy_protocol=null, healthcheck={}, id=null, redirect_http_to_https=null, sticky_sessions={}):: {
      forwarding_rule: forwarding_rule,
      name: name,
      region: region,
      [if algorithm != null then 'algorithm']: algorithm,
      [if droplet_ids != null then 'droplet_ids']: droplet_ids,
      [if droplet_tag != null then 'droplet_tag']: droplet_tag,
      [if enable_proxy_protocol != null then 'enable_proxy_protocol']: enable_proxy_protocol,
      [if healthcheck != null then 'healthcheck']: healthcheck,
      [if id != null then 'id']: id,
      [if redirect_http_to_https != null then 'redirect_http_to_https']: redirect_http_to_https,
      [if sticky_sessions != null then 'sticky_sessions']: sticky_sessions,
      ip:: '${digitalocean_loadbalancer.%s.ip}' % rname,
      rname:: rname,
      status:: '${digitalocean_loadbalancer.%s.status}' % rname,
      urn:: '${digitalocean_loadbalancer.%s.urn}' % rname,
    },
    //  digitalocean_project - https://www.terraform.io/docs/providers/digitalocean/r/project.html
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/project.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param description (optional) https://www.terraform.io/docs/providers/digitalocean/r/project.html#description.
    // @param environment (optional) https://www.terraform.io/docs/providers/digitalocean/r/project.html#environment.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/project.html#id.
    // @param purpose (optional) https://www.terraform.io/docs/providers/digitalocean/r/project.html#purpose.
    // @param resources (optional) https://www.terraform.io/docs/providers/digitalocean/r/project.html#resources.
    digitalocean_project(rname, name, description=null, environment=null, id=null, purpose=null, resources=null):: {
      name: name,
      [if description != null then 'description']: description,
      [if environment != null then 'environment']: environment,
      [if id != null then 'id']: id,
      [if purpose != null then 'purpose']: purpose,
      [if resources != null then 'resources']: resources,
      created_at:: '${digitalocean_project.%s.created_at}' % rname,
      owner_id:: '${digitalocean_project.%s.owner_id}' % rname,
      owner_uuid:: '${digitalocean_project.%s.owner_uuid}' % rname,
      rname:: rname,
      updated_at:: '${digitalocean_project.%s.updated_at}' % rname,
    },
    //  digitalocean_record - https://www.terraform.io/docs/providers/digitalocean/r/record.html
    // @param domain (required) https://www.terraform.io/docs/providers/digitalocean/r/record.html#domain.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/record.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param type (required) https://www.terraform.io/docs/providers/digitalocean/r/record.html#type.
    // @param value (required) https://www.terraform.io/docs/providers/digitalocean/r/record.html#value.
    // @param flags (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#flags.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#id.
    // @param port (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#port.
    // @param priority (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#priority.
    // @param tag (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#tag.
    // @param ttl (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#ttl.
    // @param weight (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#weight.
    digitalocean_record(rname, domain, name, type, value, flags=null, id=null, port=null, priority=null, tag=null, ttl=null, weight=null):: {
      domain: domain,
      name: name,
      type: type,
      value: value,
      [if flags != null then 'flags']: flags,
      [if id != null then 'id']: id,
      [if port != null then 'port']: port,
      [if priority != null then 'priority']: priority,
      [if tag != null then 'tag']: tag,
      [if ttl != null then 'ttl']: ttl,
      [if weight != null then 'weight']: weight,
      fqdn:: '${digitalocean_record.%s.fqdn}' % rname,
      rname:: rname,
    },
    //  digitalocean_spaces_bucket - https://www.terraform.io/docs/providers/digitalocean/r/spaces_bucket.html
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/spaces_bucket.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param acl (optional) https://www.terraform.io/docs/providers/digitalocean/r/spaces_bucket.html#acl.
    // @param cors_rule (optional) cors_rule block.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/digitalocean/r/spaces_bucket.html#force_destroy.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/spaces_bucket.html#id.
    // @param region (optional) https://www.terraform.io/docs/providers/digitalocean/r/spaces_bucket.html#region.
    digitalocean_spaces_bucket(rname, name, acl=null, cors_rule={}, force_destroy=null, id=null, region=null):: {
      name: name,
      [if acl != null then 'acl']: acl,
      [if cors_rule != null then 'cors_rule']: cors_rule,
      [if force_destroy != null then 'force_destroy']: force_destroy,
      [if id != null then 'id']: id,
      [if region != null then 'region']: region,
      bucket_domain_name:: '${digitalocean_spaces_bucket.%s.bucket_domain_name}' % rname,
      rname:: rname,
      urn:: '${digitalocean_spaces_bucket.%s.urn}' % rname,
    },
    //  digitalocean_ssh_key - https://www.terraform.io/docs/providers/digitalocean/r/ssh_key.html
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/ssh_key.html#name.
    // @param public_key (required) https://www.terraform.io/docs/providers/digitalocean/r/ssh_key.html#public_key.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/ssh_key.html#id.
    digitalocean_ssh_key(rname, name, public_key, id=null):: {
      name: name,
      public_key: public_key,
      [if id != null then 'id']: id,
      fingerprint:: '${digitalocean_ssh_key.%s.fingerprint}' % rname,
      rname:: rname,
    },
    //  digitalocean_tag - https://www.terraform.io/docs/providers/digitalocean/r/tag.html
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/tag.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/tag.html#id.
    digitalocean_tag(rname, name, id=null):: {
      name: name,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    //  digitalocean_volume - https://www.terraform.io/docs/providers/digitalocean/r/volume.html
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#name.
    // @param region (required) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#region.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param size (required) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#size.
    // @param description (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#description.
    // @param filesystem_type (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#filesystem_type.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#id.
    // @param initial_filesystem_label (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#initial_filesystem_label.
    // @param initial_filesystem_type (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#initial_filesystem_type.
    // @param snapshot_id (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#snapshot_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#tags.
    digitalocean_volume(rname, name, region, size, description=null, filesystem_type=null, id=null, initial_filesystem_label=null, initial_filesystem_type=null, snapshot_id=null, tags=null):: {
      name: name,
      region: region,
      size: size,
      [if description != null then 'description']: description,
      [if filesystem_type != null then 'filesystem_type']: filesystem_type,
      [if id != null then 'id']: id,
      [if initial_filesystem_label != null then 'initial_filesystem_label']: initial_filesystem_label,
      [if initial_filesystem_type != null then 'initial_filesystem_type']: initial_filesystem_type,
      [if snapshot_id != null then 'snapshot_id']: snapshot_id,
      [if tags != null then 'tags']: tags,
      droplet_ids:: '${digitalocean_volume.%s.droplet_ids}' % rname,
      filesystem_label:: '${digitalocean_volume.%s.filesystem_label}' % rname,
      rname:: rname,
      urn:: '${digitalocean_volume.%s.urn}' % rname,
    },
    //  digitalocean_volume_attachment - https://www.terraform.io/docs/providers/digitalocean/r/volume_attachment.html
    // @param droplet_id (required) https://www.terraform.io/docs/providers/digitalocean/r/volume_attachment.html#droplet_id.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param volume_id (required) https://www.terraform.io/docs/providers/digitalocean/r/volume_attachment.html#volume_id.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume_attachment.html#id.
    digitalocean_volume_attachment(rname, droplet_id, volume_id, id=null):: {
      droplet_id: droplet_id,
      volume_id: volume_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    //  digitalocean_volume_snapshot - https://www.terraform.io/docs/providers/digitalocean/r/volume_snapshot.html
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/volume_snapshot.html#name.
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param volume_id (required) https://www.terraform.io/docs/providers/digitalocean/r/volume_snapshot.html#volume_id.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume_snapshot.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume_snapshot.html#tags.
    digitalocean_volume_snapshot(rname, name, volume_id, id=null, tags=null):: {
      name: name,
      volume_id: volume_id,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      created_at:: '${digitalocean_volume_snapshot.%s.created_at}' % rname,
      min_disk_size:: '${digitalocean_volume_snapshot.%s.min_disk_size}' % rname,
      regions:: '${digitalocean_volume_snapshot.%s.regions}' % rname,
      rname:: rname,
      size:: '${digitalocean_volume_snapshot.%s.size}' % rname,
    },
  },
}