{
  digitalocean:: {
    // digitalocean_cdn - https://www.terraform.io/docs/providers/do/r/cdn.html
    digitalocean_cdn:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param origin (required)
      // @param certificate_id (optional)
      // @param custom_domain (optional)
      new(rname, origin, certificate_id=null, custom_domain=null):: {
        rname:: rname,
        origin: origin,
        [if certificate_id != null then 'certificate_id']: certificate_id,
        [if custom_domain != null then 'custom_domain']: custom_domain,
        created_at:: '${digitalocean_cdn.%s.created_at}' % rname,
        endpoint:: '${digitalocean_cdn.%s.endpoint}' % rname,
        id:: '${digitalocean_cdn.%s.id}' % rname,
        ttl:: '${digitalocean_cdn.%s.ttl}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
      with_ttl(ttl):: {
        ttl::: ttl,
      },
    },
    // digitalocean_certificate - https://www.terraform.io/docs/providers/do/r/certificate.html
    digitalocean_certificate:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param name (required)
      // @param certificate_chain (optional)
      // @param domains (optional)
      // @param leaf_certificate (optional)
      // @param private_key (optional)
      // @param type (optional)
      new(rname, name, certificate_chain=null, domains=null, leaf_certificate=null, private_key=null, type=null):: {
        rname:: rname,
        name: name,
        [if certificate_chain != null then 'certificate_chain']: certificate_chain,
        [if domains != null then 'domains']: domains,
        [if leaf_certificate != null then 'leaf_certificate']: leaf_certificate,
        [if private_key != null then 'private_key']: private_key,
        [if type != null then 'type']: type,
        id:: '${digitalocean_certificate.%s.id}' % rname,
        not_after:: '${digitalocean_certificate.%s.not_after}' % rname,
        sha1_fingerprint:: '${digitalocean_certificate.%s.sha1_fingerprint}' % rname,
        state:: '${digitalocean_certificate.%s.state}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_database_cluster - https://www.terraform.io/docs/providers/do/r/database_cluster.html
    digitalocean_database_cluster:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param engine (required)
      // @param name (required)
      // @param node_count (required)
      // @param region (required)
      // @param size (required)
      // @param eviction_policy (optional)
      // @param sql_mode (optional)
      // @param tags (optional)
      // @param version (optional)
      new(rname, engine, name, node_count, region, size, eviction_policy=null, sql_mode=null, tags=null, version=null):: {
        rname:: rname,
        engine: engine,
        name: name,
        node_count: node_count,
        region: region,
        size: size,
        [if eviction_policy != null then 'eviction_policy']: eviction_policy,
        [if sql_mode != null then 'sql_mode']: sql_mode,
        [if tags != null then 'tags']: tags,
        [if version != null then 'version']: version,
        database:: '${digitalocean_database_cluster.%s.database}' % rname,
        host:: '${digitalocean_database_cluster.%s.host}' % rname,
        id:: '${digitalocean_database_cluster.%s.id}' % rname,
        password:: '${digitalocean_database_cluster.%s.password}' % rname,
        port:: '${digitalocean_database_cluster.%s.port}' % rname,
        private_host:: '${digitalocean_database_cluster.%s.private_host}' % rname,
        private_uri:: '${digitalocean_database_cluster.%s.private_uri}' % rname,
        uri:: '${digitalocean_database_cluster.%s.uri}' % rname,
        urn:: '${digitalocean_database_cluster.%s.urn}' % rname,
        user:: '${digitalocean_database_cluster.%s.user}' % rname,
        maintenance_window:: {},
      },
      with_id(id):: {
        id::: id,
      },
      with_maintenance_window(maintenance_window):: self + {
        maintenance_window: maintenance_window,
      },
      maintenance_window:: {
        // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
        // @param day (required)
        // @param hour (required)
        new(rname, day, hour):: {
          rname:: rname,
          day: day,
          hour: hour,
        },
      },
    },
    // digitalocean_database_connection_pool - https://www.terraform.io/docs/providers/do/r/database_connection_pool.html
    digitalocean_database_connection_pool:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param cluster_id (required)
      // @param db_name (required)
      // @param mode (required)
      // @param name (required)
      // @param size (required)
      // @param user (required)
      new(rname, cluster_id, db_name, mode, name, size, user):: {
        rname:: rname,
        cluster_id: cluster_id,
        db_name: db_name,
        mode: mode,
        name: name,
        size: size,
        user: user,
        host:: '${digitalocean_database_connection_pool.%s.host}' % rname,
        id:: '${digitalocean_database_connection_pool.%s.id}' % rname,
        password:: '${digitalocean_database_connection_pool.%s.password}' % rname,
        port:: '${digitalocean_database_connection_pool.%s.port}' % rname,
        private_host:: '${digitalocean_database_connection_pool.%s.private_host}' % rname,
        private_uri:: '${digitalocean_database_connection_pool.%s.private_uri}' % rname,
        uri:: '${digitalocean_database_connection_pool.%s.uri}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_database_db - https://www.terraform.io/docs/providers/do/r/database_db.html
    digitalocean_database_db:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param cluster_id (required)
      // @param name (required)
      new(rname, cluster_id, name):: {
        rname:: rname,
        cluster_id: cluster_id,
        name: name,
        id:: '${digitalocean_database_db.%s.id}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_database_firewall - https://www.terraform.io/docs/providers/do/r/database_firewall.html
    digitalocean_database_firewall:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param cluster_id (required)
      // @param rule (required)
      new(rname, cluster_id, rule):: {
        rname:: rname,
        cluster_id: cluster_id,
        id:: '${digitalocean_database_firewall.%s.id}' % rname,
        rule: rule,
      },
      with_id(id):: {
        id::: id,
      },
      rule:: {
        // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
        // @param type (required)
        // @param value (required)
        new(rname, type, value):: {
          rname:: rname,
          type: type,
          value: value,
          created_at:: '${digitalocean_database_firewall.%s.rule.created_at}' % rname,
          uuid:: '${digitalocean_database_firewall.%s.rule.uuid}' % rname,
        },
      },
    },
    // digitalocean_database_replica - https://www.terraform.io/docs/providers/do/r/database_replica.html
    digitalocean_database_replica:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param cluster_id (required)
      // @param name (required)
      // @param region (optional)
      // @param size (optional)
      // @param tags (optional)
      new(rname, cluster_id, name, region=null, size=null, tags=null):: {
        rname:: rname,
        cluster_id: cluster_id,
        name: name,
        [if region != null then 'region']: region,
        [if size != null then 'size']: size,
        [if tags != null then 'tags']: tags,
        database:: '${digitalocean_database_replica.%s.database}' % rname,
        host:: '${digitalocean_database_replica.%s.host}' % rname,
        id:: '${digitalocean_database_replica.%s.id}' % rname,
        password:: '${digitalocean_database_replica.%s.password}' % rname,
        port:: '${digitalocean_database_replica.%s.port}' % rname,
        private_host:: '${digitalocean_database_replica.%s.private_host}' % rname,
        private_uri:: '${digitalocean_database_replica.%s.private_uri}' % rname,
        uri:: '${digitalocean_database_replica.%s.uri}' % rname,
        user:: '${digitalocean_database_replica.%s.user}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_database_user - https://www.terraform.io/docs/providers/do/r/database_user.html
    digitalocean_database_user:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param cluster_id (required)
      // @param name (required)
      new(rname, cluster_id, name):: {
        rname:: rname,
        cluster_id: cluster_id,
        name: name,
        id:: '${digitalocean_database_user.%s.id}' % rname,
        password:: '${digitalocean_database_user.%s.password}' % rname,
        role:: '${digitalocean_database_user.%s.role}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_domain - https://www.terraform.io/docs/providers/do/r/domain.html
    digitalocean_domain:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param name (required)
      // @param ip_address (optional)
      new(rname, name, ip_address=null):: {
        rname:: rname,
        name: name,
        [if ip_address != null then 'ip_address']: ip_address,
        id:: '${digitalocean_domain.%s.id}' % rname,
        urn:: '${digitalocean_domain.%s.urn}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_droplet - https://www.terraform.io/docs/providers/do/r/droplet.html
    digitalocean_droplet:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param image (required)
      // @param name (required)
      // @param region (required)
      // @param size (required)
      // @param backups (optional)
      // @param ipv6 (optional)
      // @param monitoring (optional)
      // @param private_networking (optional)
      // @param resize_disk (optional)
      // @param ssh_keys (optional)
      // @param tags (optional)
      // @param user_data (optional)
      new(rname, image, name, region, size, backups=null, ipv6=null, monitoring=null, private_networking=null, resize_disk=null, ssh_keys=null, tags=null, user_data=null):: {
        rname:: rname,
        image: image,
        name: name,
        region: region,
        size: size,
        [if backups != null then 'backups']: backups,
        [if ipv6 != null then 'ipv6']: ipv6,
        [if monitoring != null then 'monitoring']: monitoring,
        [if private_networking != null then 'private_networking']: private_networking,
        [if resize_disk != null then 'resize_disk']: resize_disk,
        [if ssh_keys != null then 'ssh_keys']: ssh_keys,
        [if tags != null then 'tags']: tags,
        [if user_data != null then 'user_data']: user_data,
        created_at:: '${digitalocean_droplet.%s.created_at}' % rname,
        disk:: '${digitalocean_droplet.%s.disk}' % rname,
        id:: '${digitalocean_droplet.%s.id}' % rname,
        ipv4_address:: '${digitalocean_droplet.%s.ipv4_address}' % rname,
        ipv4_address_private:: '${digitalocean_droplet.%s.ipv4_address_private}' % rname,
        ipv6_address:: '${digitalocean_droplet.%s.ipv6_address}' % rname,
        ipv6_address_private:: '${digitalocean_droplet.%s.ipv6_address_private}' % rname,
        locked:: '${digitalocean_droplet.%s.locked}' % rname,
        memory:: '${digitalocean_droplet.%s.memory}' % rname,
        price_hourly:: '${digitalocean_droplet.%s.price_hourly}' % rname,
        price_monthly:: '${digitalocean_droplet.%s.price_monthly}' % rname,
        status:: '${digitalocean_droplet.%s.status}' % rname,
        urn:: '${digitalocean_droplet.%s.urn}' % rname,
        vcpus:: '${digitalocean_droplet.%s.vcpus}' % rname,
        volume_ids:: '${digitalocean_droplet.%s.volume_ids}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
      with_volume_ids(volume_ids):: {
        volume_ids::: volume_ids,
      },
    },
    // digitalocean_droplet_snapshot - https://www.terraform.io/docs/providers/do/r/droplet_snapshot.html
    digitalocean_droplet_snapshot:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param droplet_id (required)
      // @param name (required)
      new(rname, droplet_id, name):: {
        rname:: rname,
        droplet_id: droplet_id,
        name: name,
        created_at:: '${digitalocean_droplet_snapshot.%s.created_at}' % rname,
        id:: '${digitalocean_droplet_snapshot.%s.id}' % rname,
        min_disk_size:: '${digitalocean_droplet_snapshot.%s.min_disk_size}' % rname,
        regions:: '${digitalocean_droplet_snapshot.%s.regions}' % rname,
        size:: '${digitalocean_droplet_snapshot.%s.size}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_firewall - https://www.terraform.io/docs/providers/do/r/firewall.html
    digitalocean_firewall:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param name (required)
      // @param droplet_ids (optional)
      // @param tags (optional)
      new(rname, name, droplet_ids=null, tags=null):: {
        rname:: rname,
        name: name,
        [if droplet_ids != null then 'droplet_ids']: droplet_ids,
        [if tags != null then 'tags']: tags,
        created_at:: '${digitalocean_firewall.%s.created_at}' % rname,
        id:: '${digitalocean_firewall.%s.id}' % rname,
        pending_changes:: '${digitalocean_firewall.%s.pending_changes}' % rname,
        status:: '${digitalocean_firewall.%s.status}' % rname,
        inbound_rule:: {},
        outbound_rule:: {},
      },
      with_id(id):: {
        id::: id,
      },
      with_inbound_rule(inbound_rule):: self + {
        inbound_rule: inbound_rule,
      },
      inbound_rule:: {
        // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
        // @param protocol (required)
        // @param port_range (optional)
        // @param source_addresses (optional)
        // @param source_droplet_ids (optional)
        // @param source_load_balancer_uids (optional)
        // @param source_tags (optional)
        new(rname, protocol, port_range=null, source_addresses=null, source_droplet_ids=null, source_load_balancer_uids=null, source_tags=null):: {
          rname:: rname,
          protocol: protocol,
          [if port_range != null then 'port_range']: port_range,
          [if source_addresses != null then 'source_addresses']: source_addresses,
          [if source_droplet_ids != null then 'source_droplet_ids']: source_droplet_ids,
          [if source_load_balancer_uids != null then 'source_load_balancer_uids']: source_load_balancer_uids,
          [if source_tags != null then 'source_tags']: source_tags,
        },
      },
      with_outbound_rule(outbound_rule):: self + {
        outbound_rule: outbound_rule,
      },
      outbound_rule:: {
        // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
        // @param protocol (required)
        // @param destination_addresses (optional)
        // @param destination_droplet_ids (optional)
        // @param destination_load_balancer_uids (optional)
        // @param destination_tags (optional)
        // @param port_range (optional)
        new(rname, protocol, destination_addresses=null, destination_droplet_ids=null, destination_load_balancer_uids=null, destination_tags=null, port_range=null):: {
          rname:: rname,
          protocol: protocol,
          [if destination_addresses != null then 'destination_addresses']: destination_addresses,
          [if destination_droplet_ids != null then 'destination_droplet_ids']: destination_droplet_ids,
          [if destination_load_balancer_uids != null then 'destination_load_balancer_uids']: destination_load_balancer_uids,
          [if destination_tags != null then 'destination_tags']: destination_tags,
          [if port_range != null then 'port_range']: port_range,
        },
      },
    },
    // digitalocean_floating_ip - https://www.terraform.io/docs/providers/do/r/floating_ip.html
    digitalocean_floating_ip:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param region (required)
      // @param droplet_id (optional)
      new(rname, region, droplet_id=null):: {
        rname:: rname,
        region: region,
        [if droplet_id != null then 'droplet_id']: droplet_id,
        id:: '${digitalocean_floating_ip.%s.id}' % rname,
        ip_address:: '${digitalocean_floating_ip.%s.ip_address}' % rname,
        urn:: '${digitalocean_floating_ip.%s.urn}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
      with_ip_address(ip_address):: {
        ip_address::: ip_address,
      },
    },
    // digitalocean_floating_ip_assignment - https://www.terraform.io/docs/providers/do/r/floating_ip_assignment.html
    digitalocean_floating_ip_assignment:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param droplet_id (required)
      // @param ip_address (required)
      new(rname, droplet_id, ip_address):: {
        rname:: rname,
        droplet_id: droplet_id,
        ip_address: ip_address,
        id:: '${digitalocean_floating_ip_assignment.%s.id}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_kubernetes_cluster - https://www.terraform.io/docs/providers/do/r/kubernetes_cluster.html
    digitalocean_kubernetes_cluster:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param name (required)
      // @param region (required)
      // @param version (required)
      // @param tags (optional)
      // @param node_pool (required)
      new(rname, name, region, version, node_pool, tags=null):: {
        rname:: rname,
        name: name,
        region: region,
        version: version,
        [if tags != null then 'tags']: tags,
        cluster_subnet:: '${digitalocean_kubernetes_cluster.%s.cluster_subnet}' % rname,
        created_at:: '${digitalocean_kubernetes_cluster.%s.created_at}' % rname,
        endpoint:: '${digitalocean_kubernetes_cluster.%s.endpoint}' % rname,
        id:: '${digitalocean_kubernetes_cluster.%s.id}' % rname,
        ipv4_address:: '${digitalocean_kubernetes_cluster.%s.ipv4_address}' % rname,
        kube_config:: '${digitalocean_kubernetes_cluster.%s.kube_config}' % rname,
        service_subnet:: '${digitalocean_kubernetes_cluster.%s.service_subnet}' % rname,
        status:: '${digitalocean_kubernetes_cluster.%s.status}' % rname,
        updated_at:: '${digitalocean_kubernetes_cluster.%s.updated_at}' % rname,
        node_pool: node_pool,
      },
      with_id(id):: {
        id::: id,
      },
      node_pool:: {
        // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
        // @param name (required)
        // @param size (required)
        // @param auto_scale (optional)
        // @param max_nodes (optional)
        // @param min_nodes (optional)
        // @param node_count (optional)
        // @param tags (optional)
        new(rname, name, size, auto_scale=null, max_nodes=null, min_nodes=null, node_count=null, tags=null):: {
          rname:: rname,
          name: name,
          size: size,
          [if auto_scale != null then 'auto_scale']: auto_scale,
          [if max_nodes != null then 'max_nodes']: max_nodes,
          [if min_nodes != null then 'min_nodes']: min_nodes,
          [if node_count != null then 'node_count']: node_count,
          [if tags != null then 'tags']: tags,
          actual_node_count:: '${digitalocean_kubernetes_cluster.%s.node_pool.actual_node_count}' % rname,
          id:: '${digitalocean_kubernetes_cluster.%s.node_pool.id}' % rname,
          nodes:: '${digitalocean_kubernetes_cluster.%s.node_pool.nodes}' % rname,
        },
      },
    },
    // digitalocean_kubernetes_node_pool - https://www.terraform.io/docs/providers/do/r/kubernetes_node_pool.html
    digitalocean_kubernetes_node_pool:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param cluster_id (required)
      // @param name (required)
      // @param size (required)
      // @param auto_scale (optional)
      // @param max_nodes (optional)
      // @param min_nodes (optional)
      // @param node_count (optional)
      // @param tags (optional)
      new(rname, cluster_id, name, size, auto_scale=null, max_nodes=null, min_nodes=null, node_count=null, tags=null):: {
        rname:: rname,
        cluster_id: cluster_id,
        name: name,
        size: size,
        [if auto_scale != null then 'auto_scale']: auto_scale,
        [if max_nodes != null then 'max_nodes']: max_nodes,
        [if min_nodes != null then 'min_nodes']: min_nodes,
        [if node_count != null then 'node_count']: node_count,
        [if tags != null then 'tags']: tags,
        actual_node_count:: '${digitalocean_kubernetes_node_pool.%s.actual_node_count}' % rname,
        id:: '${digitalocean_kubernetes_node_pool.%s.id}' % rname,
        nodes:: '${digitalocean_kubernetes_node_pool.%s.nodes}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_loadbalancer - https://www.terraform.io/docs/providers/do/r/loadbalancer.html
    digitalocean_loadbalancer:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param name (required)
      // @param region (required)
      // @param algorithm (optional)
      // @param droplet_tag (optional)
      // @param enable_proxy_protocol (optional)
      // @param redirect_http_to_https (optional)
      // @param forwarding_rule (required)
      new(rname, name, region, forwarding_rule, algorithm=null, droplet_tag=null, enable_proxy_protocol=null, redirect_http_to_https=null):: {
        rname:: rname,
        name: name,
        region: region,
        [if algorithm != null then 'algorithm']: algorithm,
        [if droplet_tag != null then 'droplet_tag']: droplet_tag,
        [if enable_proxy_protocol != null then 'enable_proxy_protocol']: enable_proxy_protocol,
        [if redirect_http_to_https != null then 'redirect_http_to_https']: redirect_http_to_https,
        droplet_ids:: '${digitalocean_loadbalancer.%s.droplet_ids}' % rname,
        id:: '${digitalocean_loadbalancer.%s.id}' % rname,
        ip:: '${digitalocean_loadbalancer.%s.ip}' % rname,
        status:: '${digitalocean_loadbalancer.%s.status}' % rname,
        urn:: '${digitalocean_loadbalancer.%s.urn}' % rname,
        forwarding_rule: forwarding_rule,
        healthcheck:: {},
        sticky_sessions:: {},
      },
      with_droplet_ids(droplet_ids):: {
        droplet_ids::: droplet_ids,
      },
      with_id(id):: {
        id::: id,
      },
      forwarding_rule:: {
        // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
        // @param entry_port (required)
        // @param entry_protocol (required)
        // @param target_port (required)
        // @param target_protocol (required)
        // @param certificate_id (optional)
        // @param tls_passthrough (optional)
        new(rname, entry_port, entry_protocol, target_port, target_protocol, certificate_id=null, tls_passthrough=null):: {
          rname:: rname,
          entry_port: entry_port,
          entry_protocol: entry_protocol,
          target_port: target_port,
          target_protocol: target_protocol,
          [if certificate_id != null then 'certificate_id']: certificate_id,
          [if tls_passthrough != null then 'tls_passthrough']: tls_passthrough,
        },
      },
      with_healthcheck(healthcheck):: self + {
        healthcheck: healthcheck,
      },
      healthcheck:: {
        // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
        // @param port (required)
        // @param protocol (required)
        // @param check_interval_seconds (optional)
        // @param healthy_threshold (optional)
        // @param path (optional)
        // @param response_timeout_seconds (optional)
        // @param unhealthy_threshold (optional)
        new(rname, port, protocol, check_interval_seconds=null, healthy_threshold=null, path=null, response_timeout_seconds=null, unhealthy_threshold=null):: {
          rname:: rname,
          port: port,
          protocol: protocol,
          [if check_interval_seconds != null then 'check_interval_seconds']: check_interval_seconds,
          [if healthy_threshold != null then 'healthy_threshold']: healthy_threshold,
          [if path != null then 'path']: path,
          [if response_timeout_seconds != null then 'response_timeout_seconds']: response_timeout_seconds,
          [if unhealthy_threshold != null then 'unhealthy_threshold']: unhealthy_threshold,
        },
      },
      with_sticky_sessions(sticky_sessions):: self + {
        sticky_sessions: sticky_sessions,
      },
      sticky_sessions:: {
        // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
        // @param cookie_name (optional)
        // @param cookie_ttl_seconds (optional)
        // @param type (optional)
        new(rname, cookie_name=null, cookie_ttl_seconds=null, type=null):: {
          rname:: rname,
          [if cookie_name != null then 'cookie_name']: cookie_name,
          [if cookie_ttl_seconds != null then 'cookie_ttl_seconds']: cookie_ttl_seconds,
          [if type != null then 'type']: type,
        },
      },
    },
    // digitalocean_project - https://www.terraform.io/docs/providers/do/r/project.html
    digitalocean_project:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param name (required)
      // @param description (optional)
      // @param environment (optional)
      // @param purpose (optional)
      // @param resources (optional)
      new(rname, name, description=null, environment=null, purpose=null, resources=null):: {
        rname:: rname,
        name: name,
        [if description != null then 'description']: description,
        [if environment != null then 'environment']: environment,
        [if purpose != null then 'purpose']: purpose,
        [if resources != null then 'resources']: resources,
        created_at:: '${digitalocean_project.%s.created_at}' % rname,
        id:: '${digitalocean_project.%s.id}' % rname,
        owner_id:: '${digitalocean_project.%s.owner_id}' % rname,
        owner_uuid:: '${digitalocean_project.%s.owner_uuid}' % rname,
        updated_at:: '${digitalocean_project.%s.updated_at}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_record - https://www.terraform.io/docs/providers/do/r/record.html
    digitalocean_record:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param domain (required)
      // @param name (required)
      // @param type (required)
      // @param value (required)
      // @param flags (optional)
      // @param port (optional)
      // @param priority (optional)
      // @param tag (optional)
      // @param weight (optional)
      new(rname, domain, name, type, value, flags=null, port=null, priority=null, tag=null, weight=null):: {
        rname:: rname,
        domain: domain,
        name: name,
        type: type,
        value: value,
        [if flags != null then 'flags']: flags,
        [if port != null then 'port']: port,
        [if priority != null then 'priority']: priority,
        [if tag != null then 'tag']: tag,
        [if weight != null then 'weight']: weight,
        fqdn:: '${digitalocean_record.%s.fqdn}' % rname,
        id:: '${digitalocean_record.%s.id}' % rname,
        ttl:: '${digitalocean_record.%s.ttl}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
      with_ttl(ttl):: {
        ttl::: ttl,
      },
    },
    // digitalocean_spaces_bucket - https://www.terraform.io/docs/providers/do/r/spaces_bucket.html
    digitalocean_spaces_bucket:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param name (required)
      // @param acl (optional)
      // @param force_destroy (optional)
      // @param region (optional)
      new(rname, name, acl=null, force_destroy=null, region=null):: {
        rname:: rname,
        name: name,
        [if acl != null then 'acl']: acl,
        [if force_destroy != null then 'force_destroy']: force_destroy,
        [if region != null then 'region']: region,
        bucket_domain_name:: '${digitalocean_spaces_bucket.%s.bucket_domain_name}' % rname,
        id:: '${digitalocean_spaces_bucket.%s.id}' % rname,
        urn:: '${digitalocean_spaces_bucket.%s.urn}' % rname,
        cors_rule:: {},
      },
      with_id(id):: {
        id::: id,
      },
      with_cors_rule(cors_rule):: self + {
        cors_rule: cors_rule,
      },
      cors_rule:: {
        // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
        // @param allowed_methods (required)
        // @param allowed_origins (required)
        // @param allowed_headers (optional)
        // @param max_age_seconds (optional)
        new(rname, allowed_methods, allowed_origins, allowed_headers=null, max_age_seconds=null):: {
          rname:: rname,
          allowed_methods: allowed_methods,
          allowed_origins: allowed_origins,
          [if allowed_headers != null then 'allowed_headers']: allowed_headers,
          [if max_age_seconds != null then 'max_age_seconds']: max_age_seconds,
        },
      },
    },
    // digitalocean_ssh_key - https://www.terraform.io/docs/providers/do/r/ssh_key.html
    digitalocean_ssh_key:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param name (required)
      // @param public_key (required)
      new(rname, name, public_key):: {
        rname:: rname,
        name: name,
        public_key: public_key,
        fingerprint:: '${digitalocean_ssh_key.%s.fingerprint}' % rname,
        id:: '${digitalocean_ssh_key.%s.id}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_tag - https://www.terraform.io/docs/providers/do/r/tag.html
    digitalocean_tag:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param name (required)
      new(rname, name):: {
        rname:: rname,
        name: name,
        id:: '${digitalocean_tag.%s.id}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_volume - https://www.terraform.io/docs/providers/do/r/volume.html
    digitalocean_volume:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param name (required)
      // @param region (required)
      // @param size (required)
      // @param description (optional)
      // @param initial_filesystem_label (optional)
      // @param initial_filesystem_type (optional)
      // @param snapshot_id (optional)
      // @param tags (optional)
      new(rname, name, region, size, description=null, initial_filesystem_label=null, initial_filesystem_type=null, snapshot_id=null, tags=null):: {
        rname:: rname,
        name: name,
        region: region,
        size: size,
        [if description != null then 'description']: description,
        [if initial_filesystem_label != null then 'initial_filesystem_label']: initial_filesystem_label,
        [if initial_filesystem_type != null then 'initial_filesystem_type']: initial_filesystem_type,
        [if snapshot_id != null then 'snapshot_id']: snapshot_id,
        [if tags != null then 'tags']: tags,
        droplet_ids:: '${digitalocean_volume.%s.droplet_ids}' % rname,
        filesystem_label:: '${digitalocean_volume.%s.filesystem_label}' % rname,
        filesystem_type:: '${digitalocean_volume.%s.filesystem_type}' % rname,
        id:: '${digitalocean_volume.%s.id}' % rname,
        urn:: '${digitalocean_volume.%s.urn}' % rname,
      },
      with_filesystem_type(filesystem_type):: {
        filesystem_type::: filesystem_type,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_volume_attachment - https://www.terraform.io/docs/providers/do/r/volume_attachment.html
    digitalocean_volume_attachment:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param droplet_id (required)
      // @param volume_id (required)
      new(rname, droplet_id, volume_id):: {
        rname:: rname,
        droplet_id: droplet_id,
        volume_id: volume_id,
        id:: '${digitalocean_volume_attachment.%s.id}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
    // digitalocean_volume_snapshot - https://www.terraform.io/docs/providers/do/r/volume_snapshot.html
    digitalocean_volume_snapshot:: {
      // @param rname (required) Workaround to build terraform interpolatable strings for attribute references.
      // @param name (required)
      // @param volume_id (required)
      // @param tags (optional)
      new(rname, name, volume_id, tags=null):: {
        rname:: rname,
        name: name,
        volume_id: volume_id,
        [if tags != null then 'tags']: tags,
        created_at:: '${digitalocean_volume_snapshot.%s.created_at}' % rname,
        id:: '${digitalocean_volume_snapshot.%s.id}' % rname,
        min_disk_size:: '${digitalocean_volume_snapshot.%s.min_disk_size}' % rname,
        regions:: '${digitalocean_volume_snapshot.%s.regions}' % rname,
        size:: '${digitalocean_volume_snapshot.%s.size}' % rname,
      },
      with_id(id):: {
        id::: id,
      },
    },
  },
}