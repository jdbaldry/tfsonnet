{
  digitalocean:: {
    // digitalocean_project - https://www.terraform.io/docs/providers/digitalocean/r/project.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/project.html#name.
    // @param environment (optional) https://www.terraform.io/docs/providers/digitalocean/r/project.html#environment.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/project.html#id.
    // @param purpose (optional) https://www.terraform.io/docs/providers/digitalocean/r/project.html#purpose.
    // @param resources (optional) https://www.terraform.io/docs/providers/digitalocean/r/project.html#resources.
    // @param description (optional) https://www.terraform.io/docs/providers/digitalocean/r/project.html#description.
    digitalocean_project(rname, name, environment=null, id=null, purpose=null, resources=null, description=null):: {
      name: name,
      [if environment != null then environment]: environment,
      [if id != null then id]: id,
      [if purpose != null then purpose]: purpose,
      [if resources != null then resources]: resources,
      [if description != null then description]: description,
      rname:: rname,
      updated_at:: '${digitalocean_project.%s.updated_at}' % rname,
      owner_id:: '${digitalocean_project.%s.owner_id}' % rname,
      owner_uuid:: '${digitalocean_project.%s.owner_uuid}' % rname,
      created_at:: '${digitalocean_project.%s.created_at}' % rname,
    },
    // digitalocean_volume - https://www.terraform.io/docs/providers/digitalocean/r/volume.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#name.
    // @param region (required) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#region.
    // @param size (required) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#size.
    // @param initial_filesystem_type (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#initial_filesystem_type.
    // @param snapshot_id (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#snapshot_id.
    // @param description (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#description.
    // @param filesystem_type (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#filesystem_type.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#id.
    // @param initial_filesystem_label (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume.html#initial_filesystem_label.
    digitalocean_volume(rname, name, region, size, initial_filesystem_type=null, snapshot_id=null, description=null, filesystem_type=null, tags=null, id=null, initial_filesystem_label=null):: {
      name: name,
      region: region,
      size: size,
      [if initial_filesystem_type != null then initial_filesystem_type]: initial_filesystem_type,
      [if snapshot_id != null then snapshot_id]: snapshot_id,
      [if description != null then description]: description,
      [if filesystem_type != null then filesystem_type]: filesystem_type,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      [if initial_filesystem_label != null then initial_filesystem_label]: initial_filesystem_label,
      rname:: rname,
      urn:: '${digitalocean_volume.%s.urn}' % rname,
      filesystem_label:: '${digitalocean_volume.%s.filesystem_label}' % rname,
      droplet_ids:: '${digitalocean_volume.%s.droplet_ids}' % rname,
    },
    // digitalocean_database_cluster - https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param size (required) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#size.
    // @param engine (required) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#engine.
    // @param region (required) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#region.
    // @param node_count (required) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#node_count.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#name.
    // @param sql_mode (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#sql_mode.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#tags.
    // @param version (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#version.
    // @param eviction_policy (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_cluster.html#eviction_policy.
    // @param maintenance_window (optional) maintenance_window block.
    digitalocean_database_cluster(rname, size, engine, region, node_count, name, sql_mode=null, id=null, tags=null, version=null, eviction_policy=null, maintenance_window={}):: {
      size: size,
      engine: engine,
      region: region,
      node_count: node_count,
      name: name,
      [if sql_mode != null then sql_mode]: sql_mode,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if version != null then version]: version,
      [if eviction_policy != null then eviction_policy]: eviction_policy,
      [if maintenance_window != null then maintenance_window]: maintenance_window,
      rname:: rname,
      password:: '${digitalocean_database_cluster.%s.password}' % rname,
      private_uri:: '${digitalocean_database_cluster.%s.private_uri}' % rname,
      port:: '${digitalocean_database_cluster.%s.port}' % rname,
      uri:: '${digitalocean_database_cluster.%s.uri}' % rname,
      database:: '${digitalocean_database_cluster.%s.database}' % rname,
      private_host:: '${digitalocean_database_cluster.%s.private_host}' % rname,
      urn:: '${digitalocean_database_cluster.%s.urn}' % rname,
      user:: '${digitalocean_database_cluster.%s.user}' % rname,
      host:: '${digitalocean_database_cluster.%s.host}' % rname,
    },
    // digitalocean_floating_ip_assignment - https://www.terraform.io/docs/providers/digitalocean/r/floating_ip_assignment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param droplet_id (required) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip_assignment.html#droplet_id.
    // @param ip_address (required) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip_assignment.html#ip_address.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip_assignment.html#id.
    digitalocean_floating_ip_assignment(rname, droplet_id, ip_address, id=null):: {
      droplet_id: droplet_id,
      ip_address: ip_address,
      [if id != null then id]: id,
      rname:: rname,
    },
    // digitalocean_database_firewall - https://www.terraform.io/docs/providers/digitalocean/r/database_firewall.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_id (required) https://www.terraform.io/docs/providers/digitalocean/r/database_firewall.html#cluster_id.
    // @param rule (required) rule block.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_firewall.html#id.
    digitalocean_database_firewall(rname, cluster_id, rule, id=null):: {
      cluster_id: cluster_id,
      rule: rule,
      [if id != null then id]: id,
      rname:: rname,
    },
    // digitalocean_droplet - https://www.terraform.io/docs/providers/digitalocean/r/droplet.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#name.
    // @param size (required) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#size.
    // @param region (required) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#region.
    // @param image (required) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#image.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#id.
    // @param monitoring (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#monitoring.
    // @param private_networking (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#private_networking.
    // @param user_data (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#user_data.
    // @param ipv6 (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#ipv6.
    // @param resize_disk (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#resize_disk.
    // @param ssh_keys (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#ssh_keys.
    // @param backups (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#backups.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#tags.
    // @param volume_ids (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet.html#volume_ids.
    digitalocean_droplet(rname, name, size, region, image, id=null, monitoring=null, private_networking=null, user_data=null, ipv6=null, resize_disk=null, ssh_keys=null, backups=null, tags=null, volume_ids=null):: {
      name: name,
      size: size,
      region: region,
      image: image,
      [if id != null then id]: id,
      [if monitoring != null then monitoring]: monitoring,
      [if private_networking != null then private_networking]: private_networking,
      [if user_data != null then user_data]: user_data,
      [if ipv6 != null then ipv6]: ipv6,
      [if resize_disk != null then resize_disk]: resize_disk,
      [if ssh_keys != null then ssh_keys]: ssh_keys,
      [if backups != null then backups]: backups,
      [if tags != null then tags]: tags,
      [if volume_ids != null then volume_ids]: volume_ids,
      rname:: rname,
      created_at:: '${digitalocean_droplet.%s.created_at}' % rname,
      price_hourly:: '${digitalocean_droplet.%s.price_hourly}' % rname,
      memory:: '${digitalocean_droplet.%s.memory}' % rname,
      ipv6_address_private:: '${digitalocean_droplet.%s.ipv6_address_private}' % rname,
      locked:: '${digitalocean_droplet.%s.locked}' % rname,
      price_monthly:: '${digitalocean_droplet.%s.price_monthly}' % rname,
      urn:: '${digitalocean_droplet.%s.urn}' % rname,
      vcpus:: '${digitalocean_droplet.%s.vcpus}' % rname,
      ipv6_address:: '${digitalocean_droplet.%s.ipv6_address}' % rname,
      ipv4_address_private:: '${digitalocean_droplet.%s.ipv4_address_private}' % rname,
      status:: '${digitalocean_droplet.%s.status}' % rname,
      ipv4_address:: '${digitalocean_droplet.%s.ipv4_address}' % rname,
      disk:: '${digitalocean_droplet.%s.disk}' % rname,
    },
    // digitalocean_droplet_snapshot - https://www.terraform.io/docs/providers/digitalocean/r/droplet_snapshot.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/droplet_snapshot.html#name.
    // @param droplet_id (required) https://www.terraform.io/docs/providers/digitalocean/r/droplet_snapshot.html#droplet_id.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/droplet_snapshot.html#id.
    digitalocean_droplet_snapshot(rname, name, droplet_id, id=null):: {
      name: name,
      droplet_id: droplet_id,
      [if id != null then id]: id,
      rname:: rname,
      regions:: '${digitalocean_droplet_snapshot.%s.regions}' % rname,
      size:: '${digitalocean_droplet_snapshot.%s.size}' % rname,
      created_at:: '${digitalocean_droplet_snapshot.%s.created_at}' % rname,
      min_disk_size:: '${digitalocean_droplet_snapshot.%s.min_disk_size}' % rname,
    },
    // digitalocean_firewall - https://www.terraform.io/docs/providers/digitalocean/r/firewall.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/firewall.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/firewall.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/firewall.html#tags.
    // @param droplet_ids (optional) https://www.terraform.io/docs/providers/digitalocean/r/firewall.html#droplet_ids.
    // @param inbound_rule (optional) inbound_rule block.
    // @param outbound_rule (optional) outbound_rule block.
    digitalocean_firewall(rname, name, id=null, tags=null, droplet_ids=null, inbound_rule={}, outbound_rule={}):: {
      name: name,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if droplet_ids != null then droplet_ids]: droplet_ids,
      [if inbound_rule != null then inbound_rule]: inbound_rule,
      [if outbound_rule != null then outbound_rule]: outbound_rule,
      rname:: rname,
      pending_changes:: '${digitalocean_firewall.%s.pending_changes}' % rname,
      status:: '${digitalocean_firewall.%s.status}' % rname,
      created_at:: '${digitalocean_firewall.%s.created_at}' % rname,
    },
    // digitalocean_volume_snapshot - https://www.terraform.io/docs/providers/digitalocean/r/volume_snapshot.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/volume_snapshot.html#name.
    // @param volume_id (required) https://www.terraform.io/docs/providers/digitalocean/r/volume_snapshot.html#volume_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume_snapshot.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume_snapshot.html#id.
    digitalocean_volume_snapshot(rname, name, volume_id, tags=null, id=null):: {
      name: name,
      volume_id: volume_id,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      regions:: '${digitalocean_volume_snapshot.%s.regions}' % rname,
      size:: '${digitalocean_volume_snapshot.%s.size}' % rname,
      created_at:: '${digitalocean_volume_snapshot.%s.created_at}' % rname,
      min_disk_size:: '${digitalocean_volume_snapshot.%s.min_disk_size}' % rname,
    },
    // digitalocean_cdn - https://www.terraform.io/docs/providers/digitalocean/r/cdn.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param origin (required) https://www.terraform.io/docs/providers/digitalocean/r/cdn.html#origin.
    // @param certificate_id (optional) https://www.terraform.io/docs/providers/digitalocean/r/cdn.html#certificate_id.
    // @param custom_domain (optional) https://www.terraform.io/docs/providers/digitalocean/r/cdn.html#custom_domain.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/cdn.html#id.
    // @param ttl (optional) https://www.terraform.io/docs/providers/digitalocean/r/cdn.html#ttl.
    digitalocean_cdn(rname, origin, certificate_id=null, custom_domain=null, id=null, ttl=null):: {
      origin: origin,
      [if certificate_id != null then certificate_id]: certificate_id,
      [if custom_domain != null then custom_domain]: custom_domain,
      [if id != null then id]: id,
      [if ttl != null then ttl]: ttl,
      rname:: rname,
      created_at:: '${digitalocean_cdn.%s.created_at}' % rname,
      endpoint:: '${digitalocean_cdn.%s.endpoint}' % rname,
    },
    // digitalocean_database_connection_pool - https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param size (required) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#size.
    // @param cluster_id (required) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#cluster_id.
    // @param db_name (required) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#db_name.
    // @param mode (required) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#mode.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#name.
    // @param user (required) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#user.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_connection_pool.html#id.
    digitalocean_database_connection_pool(rname, size, cluster_id, db_name, mode, name, user, id=null):: {
      size: size,
      cluster_id: cluster_id,
      db_name: db_name,
      mode: mode,
      name: name,
      user: user,
      [if id != null then id]: id,
      rname:: rname,
      port:: '${digitalocean_database_connection_pool.%s.port}' % rname,
      private_host:: '${digitalocean_database_connection_pool.%s.private_host}' % rname,
      host:: '${digitalocean_database_connection_pool.%s.host}' % rname,
      password:: '${digitalocean_database_connection_pool.%s.password}' % rname,
      private_uri:: '${digitalocean_database_connection_pool.%s.private_uri}' % rname,
      uri:: '${digitalocean_database_connection_pool.%s.uri}' % rname,
    },
    // digitalocean_domain - https://www.terraform.io/docs/providers/digitalocean/r/domain.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/domain.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/domain.html#id.
    // @param ip_address (optional) https://www.terraform.io/docs/providers/digitalocean/r/domain.html#ip_address.
    digitalocean_domain(rname, name, id=null, ip_address=null):: {
      name: name,
      [if id != null then id]: id,
      [if ip_address != null then ip_address]: ip_address,
      rname:: rname,
      urn:: '${digitalocean_domain.%s.urn}' % rname,
    },
    // digitalocean_floating_ip - https://www.terraform.io/docs/providers/digitalocean/r/floating_ip.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param region (required) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip.html#region.
    // @param droplet_id (optional) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip.html#droplet_id.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip.html#id.
    // @param ip_address (optional) https://www.terraform.io/docs/providers/digitalocean/r/floating_ip.html#ip_address.
    digitalocean_floating_ip(rname, region, droplet_id=null, id=null, ip_address=null):: {
      region: region,
      [if droplet_id != null then droplet_id]: droplet_id,
      [if id != null then id]: id,
      [if ip_address != null then ip_address]: ip_address,
      rname:: rname,
      urn:: '${digitalocean_floating_ip.%s.urn}' % rname,
    },
    // digitalocean_kubernetes_node_pool - https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#name.
    // @param cluster_id (required) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#cluster_id.
    // @param size (required) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#size.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#id.
    // @param min_nodes (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#min_nodes.
    // @param auto_scale (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#auto_scale.
    // @param max_nodes (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#max_nodes.
    // @param node_count (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_node_pool.html#node_count.
    digitalocean_kubernetes_node_pool(rname, name, cluster_id, size, tags=null, id=null, min_nodes=null, auto_scale=null, max_nodes=null, node_count=null):: {
      name: name,
      cluster_id: cluster_id,
      size: size,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      [if min_nodes != null then min_nodes]: min_nodes,
      [if auto_scale != null then auto_scale]: auto_scale,
      [if max_nodes != null then max_nodes]: max_nodes,
      [if node_count != null then node_count]: node_count,
      rname:: rname,
      nodes:: '${digitalocean_kubernetes_node_pool.%s.nodes}' % rname,
      actual_node_count:: '${digitalocean_kubernetes_node_pool.%s.actual_node_count}' % rname,
    },
    // digitalocean_tag - https://www.terraform.io/docs/providers/digitalocean/r/tag.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/tag.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/tag.html#id.
    digitalocean_tag(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // digitalocean_certificate - https://www.terraform.io/docs/providers/digitalocean/r/certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#name.
    // @param certificate_chain (optional) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#certificate_chain.
    // @param domains (optional) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#domains.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#id.
    // @param type (optional) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#type.
    // @param leaf_certificate (optional) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#leaf_certificate.
    // @param private_key (optional) https://www.terraform.io/docs/providers/digitalocean/r/certificate.html#private_key.
    digitalocean_certificate(rname, name, certificate_chain=null, domains=null, id=null, type=null, leaf_certificate=null, private_key=null):: {
      name: name,
      [if certificate_chain != null then certificate_chain]: certificate_chain,
      [if domains != null then domains]: domains,
      [if id != null then id]: id,
      [if type != null then type]: type,
      [if leaf_certificate != null then leaf_certificate]: leaf_certificate,
      [if private_key != null then private_key]: private_key,
      rname:: rname,
      state:: '${digitalocean_certificate.%s.state}' % rname,
      not_after:: '${digitalocean_certificate.%s.not_after}' % rname,
      sha1_fingerprint:: '${digitalocean_certificate.%s.sha1_fingerprint}' % rname,
    },
    // digitalocean_database_db - https://www.terraform.io/docs/providers/digitalocean/r/database_db.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_id (required) https://www.terraform.io/docs/providers/digitalocean/r/database_db.html#cluster_id.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/database_db.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_db.html#id.
    digitalocean_database_db(rname, cluster_id, name, id=null):: {
      cluster_id: cluster_id,
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // digitalocean_kubernetes_cluster - https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_cluster.html#name.
    // @param region (required) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_cluster.html#region.
    // @param version (required) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_cluster.html#version.
    // @param node_pool (required) node_pool block.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_cluster.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/kubernetes_cluster.html#tags.
    digitalocean_kubernetes_cluster(rname, name, region, version, node_pool, id=null, tags=null):: {
      name: name,
      region: region,
      version: version,
      node_pool: node_pool,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      status:: '${digitalocean_kubernetes_cluster.%s.status}' % rname,
      created_at:: '${digitalocean_kubernetes_cluster.%s.created_at}' % rname,
      endpoint:: '${digitalocean_kubernetes_cluster.%s.endpoint}' % rname,
      kube_config:: '${digitalocean_kubernetes_cluster.%s.kube_config}' % rname,
      service_subnet:: '${digitalocean_kubernetes_cluster.%s.service_subnet}' % rname,
      updated_at:: '${digitalocean_kubernetes_cluster.%s.updated_at}' % rname,
      cluster_subnet:: '${digitalocean_kubernetes_cluster.%s.cluster_subnet}' % rname,
      ipv4_address:: '${digitalocean_kubernetes_cluster.%s.ipv4_address}' % rname,
    },
    // digitalocean_loadbalancer - https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#name.
    // @param region (required) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#region.
    // @param forwarding_rule (required) forwarding_rule block.
    // @param droplet_tag (optional) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#droplet_tag.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#id.
    // @param redirect_http_to_https (optional) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#redirect_http_to_https.
    // @param algorithm (optional) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#algorithm.
    // @param droplet_ids (optional) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#droplet_ids.
    // @param enable_proxy_protocol (optional) https://www.terraform.io/docs/providers/digitalocean/r/loadbalancer.html#enable_proxy_protocol.
    // @param healthcheck (optional) healthcheck block.
    // @param sticky_sessions (optional) sticky_sessions block.
    digitalocean_loadbalancer(rname, name, region, forwarding_rule, droplet_tag=null, id=null, redirect_http_to_https=null, algorithm=null, droplet_ids=null, enable_proxy_protocol=null, healthcheck={}, sticky_sessions={}):: {
      name: name,
      region: region,
      forwarding_rule: forwarding_rule,
      [if droplet_tag != null then droplet_tag]: droplet_tag,
      [if id != null then id]: id,
      [if redirect_http_to_https != null then redirect_http_to_https]: redirect_http_to_https,
      [if algorithm != null then algorithm]: algorithm,
      [if droplet_ids != null then droplet_ids]: droplet_ids,
      [if enable_proxy_protocol != null then enable_proxy_protocol]: enable_proxy_protocol,
      [if healthcheck != null then healthcheck]: healthcheck,
      [if sticky_sessions != null then sticky_sessions]: sticky_sessions,
      rname:: rname,
      ip:: '${digitalocean_loadbalancer.%s.ip}' % rname,
      status:: '${digitalocean_loadbalancer.%s.status}' % rname,
      urn:: '${digitalocean_loadbalancer.%s.urn}' % rname,
    },
    // digitalocean_record - https://www.terraform.io/docs/providers/digitalocean/r/record.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param type (required) https://www.terraform.io/docs/providers/digitalocean/r/record.html#type.
    // @param value (required) https://www.terraform.io/docs/providers/digitalocean/r/record.html#value.
    // @param domain (required) https://www.terraform.io/docs/providers/digitalocean/r/record.html#domain.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/record.html#name.
    // @param priority (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#priority.
    // @param tag (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#tag.
    // @param port (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#port.
    // @param weight (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#weight.
    // @param flags (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#flags.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#id.
    // @param ttl (optional) https://www.terraform.io/docs/providers/digitalocean/r/record.html#ttl.
    digitalocean_record(rname, type, value, domain, name, priority=null, tag=null, port=null, weight=null, flags=null, id=null, ttl=null):: {
      type: type,
      value: value,
      domain: domain,
      name: name,
      [if priority != null then priority]: priority,
      [if tag != null then tag]: tag,
      [if port != null then port]: port,
      [if weight != null then weight]: weight,
      [if flags != null then flags]: flags,
      [if id != null then id]: id,
      [if ttl != null then ttl]: ttl,
      rname:: rname,
      fqdn:: '${digitalocean_record.%s.fqdn}' % rname,
    },
    // digitalocean_spaces_bucket - https://www.terraform.io/docs/providers/digitalocean/r/spaces_bucket.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/spaces_bucket.html#name.
    // @param acl (optional) https://www.terraform.io/docs/providers/digitalocean/r/spaces_bucket.html#acl.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/digitalocean/r/spaces_bucket.html#force_destroy.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/spaces_bucket.html#id.
    // @param region (optional) https://www.terraform.io/docs/providers/digitalocean/r/spaces_bucket.html#region.
    // @param cors_rule (optional) cors_rule block.
    digitalocean_spaces_bucket(rname, name, acl=null, force_destroy=null, id=null, region=null, cors_rule={}):: {
      name: name,
      [if acl != null then acl]: acl,
      [if force_destroy != null then force_destroy]: force_destroy,
      [if id != null then id]: id,
      [if region != null then region]: region,
      [if cors_rule != null then cors_rule]: cors_rule,
      rname:: rname,
      bucket_domain_name:: '${digitalocean_spaces_bucket.%s.bucket_domain_name}' % rname,
      urn:: '${digitalocean_spaces_bucket.%s.urn}' % rname,
    },
    // digitalocean_ssh_key - https://www.terraform.io/docs/providers/digitalocean/r/ssh_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/ssh_key.html#name.
    // @param public_key (required) https://www.terraform.io/docs/providers/digitalocean/r/ssh_key.html#public_key.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/ssh_key.html#id.
    digitalocean_ssh_key(rname, name, public_key, id=null):: {
      name: name,
      public_key: public_key,
      [if id != null then id]: id,
      rname:: rname,
      fingerprint:: '${digitalocean_ssh_key.%s.fingerprint}' % rname,
    },
    // digitalocean_volume_attachment - https://www.terraform.io/docs/providers/digitalocean/r/volume_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param droplet_id (required) https://www.terraform.io/docs/providers/digitalocean/r/volume_attachment.html#droplet_id.
    // @param volume_id (required) https://www.terraform.io/docs/providers/digitalocean/r/volume_attachment.html#volume_id.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/volume_attachment.html#id.
    digitalocean_volume_attachment(rname, droplet_id, volume_id, id=null):: {
      droplet_id: droplet_id,
      volume_id: volume_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // digitalocean_database_replica - https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_id (required) https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html#cluster_id.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html#name.
    // @param region (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html#region.
    // @param size (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html#size.
    // @param tags (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_replica.html#id.
    digitalocean_database_replica(rname, cluster_id, name, region=null, size=null, tags=null, id=null):: {
      cluster_id: cluster_id,
      name: name,
      [if region != null then region]: region,
      [if size != null then size]: size,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      port:: '${digitalocean_database_replica.%s.port}' % rname,
      user:: '${digitalocean_database_replica.%s.user}' % rname,
      host:: '${digitalocean_database_replica.%s.host}' % rname,
      password:: '${digitalocean_database_replica.%s.password}' % rname,
      private_uri:: '${digitalocean_database_replica.%s.private_uri}' % rname,
      uri:: '${digitalocean_database_replica.%s.uri}' % rname,
      private_host:: '${digitalocean_database_replica.%s.private_host}' % rname,
      database:: '${digitalocean_database_replica.%s.database}' % rname,
    },
    // digitalocean_database_user - https://www.terraform.io/docs/providers/digitalocean/r/database_user.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_id (required) https://www.terraform.io/docs/providers/digitalocean/r/database_user.html#cluster_id.
    // @param name (required) https://www.terraform.io/docs/providers/digitalocean/r/database_user.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/digitalocean/r/database_user.html#id.
    digitalocean_database_user(rname, cluster_id, name, id=null):: {
      cluster_id: cluster_id,
      name: name,
      [if id != null then id]: id,
      rname:: rname,
      role:: '${digitalocean_database_user.%s.role}' % rname,
      password:: '${digitalocean_database_user.%s.password}' % rname,
    },
  },
}