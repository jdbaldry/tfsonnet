{
  digitalocean:: {
    // digitalocean_cdn - https://www.terraform.io/docs/providers/do/r/cdn.html
    digitalocean_cdn:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param origin (required)
      new(rname, origin):: {
        rname:: rname,
        origin: origin,
        created_at:: '${digitalocean_cdn.%s.created_at}' % rname,
        endpoint:: '${digitalocean_cdn.%s.endpoint}' % rname,
        id:: '${digitalocean_cdn.%s.id}' % rname,
        ttl:: '${digitalocean_cdn.%s.ttl}' % rname,
      },
      // @param certificate_id (required)
      with_certificate_id(certificate_id):: {
        certificate_id: certificate_id,
      },
      // @param custom_domain (required)
      with_custom_domain(custom_domain):: {
        custom_domain: custom_domain,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
      // @param ttl (required)
      with_ttl(ttl):: {
        ttl: ttl,
      },
    },
    // digitalocean_certificate - https://www.terraform.io/docs/providers/do/r/certificate.html
    digitalocean_certificate:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required)
      new(rname, name):: {
        rname:: rname,
        name: name,
        id:: '${digitalocean_certificate.%s.id}' % rname,
        not_after:: '${digitalocean_certificate.%s.not_after}' % rname,
        sha1_fingerprint:: '${digitalocean_certificate.%s.sha1_fingerprint}' % rname,
        state:: '${digitalocean_certificate.%s.state}' % rname,
      },
      // @param certificate_chain (required)
      with_certificate_chain(certificate_chain):: {
        certificate_chain: certificate_chain,
      },
      // @param domains (required)
      with_domains(domains):: {
        domains: domains,
      },
      // @param leaf_certificate (required)
      with_leaf_certificate(leaf_certificate):: {
        leaf_certificate: leaf_certificate,
      },
      // @param private_key (required)
      with_private_key(private_key):: {
        private_key: private_key,
      },
      // @param type (required)
      with_type(type):: {
        type: type,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_database_cluster - https://www.terraform.io/docs/providers/do/r/database_cluster.html
    digitalocean_database_cluster:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param engine (required)
      // @param name (required)
      // @param node_count (required)
      // @param region (required)
      // @param size (required)
      new(rname, engine, name, node_count, region, size):: {
        rname:: rname,
        engine: engine,
        name: name,
        node_count: node_count,
        region: region,
        size: size,
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
      },
      // @param eviction_policy (required)
      with_eviction_policy(eviction_policy):: {
        eviction_policy: eviction_policy,
      },
      // @param sql_mode (required)
      with_sql_mode(sql_mode):: {
        sql_mode: sql_mode,
      },
      // @param tags (required)
      with_tags(tags):: {
        tags: tags,
      },
      // @param version (required)
      with_version(version):: {
        version: version,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
      // @param maintenance_window (required)
      with_maintenance_window(maintenance_window):: {
        maintenance_window: maintenance_window,
      },
      maintenance_window:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
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
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
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
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_database_db - https://www.terraform.io/docs/providers/do/r/database_db.html
    digitalocean_database_db:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param cluster_id (required)
      // @param name (required)
      new(rname, cluster_id, name):: {
        rname:: rname,
        cluster_id: cluster_id,
        name: name,
        id:: '${digitalocean_database_db.%s.id}' % rname,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_database_firewall - https://www.terraform.io/docs/providers/do/r/database_firewall.html
    digitalocean_database_firewall:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param cluster_id (required)
      // @param rule (required)
      new(rname, cluster_id, rule):: {
        rname:: rname,
        cluster_id: cluster_id,
        id:: '${digitalocean_database_firewall.%s.id}' % rname,
        rule: rule,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
      rule:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
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
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param cluster_id (required)
      // @param name (required)
      new(rname, cluster_id, name):: {
        rname:: rname,
        cluster_id: cluster_id,
        name: name,
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
      // @param region (required)
      with_region(region):: {
        region: region,
      },
      // @param size (required)
      with_size(size):: {
        size: size,
      },
      // @param tags (required)
      with_tags(tags):: {
        tags: tags,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_database_user - https://www.terraform.io/docs/providers/do/r/database_user.html
    digitalocean_database_user:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
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
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_domain - https://www.terraform.io/docs/providers/do/r/domain.html
    digitalocean_domain:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required)
      new(rname, name):: {
        rname:: rname,
        name: name,
        id:: '${digitalocean_domain.%s.id}' % rname,
        urn:: '${digitalocean_domain.%s.urn}' % rname,
      },
      // @param ip_address (required)
      with_ip_address(ip_address):: {
        ip_address: ip_address,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_droplet - https://www.terraform.io/docs/providers/do/r/droplet.html
    digitalocean_droplet:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param image (required)
      // @param name (required)
      // @param region (required)
      // @param size (required)
      new(rname, image, name, region, size):: {
        rname:: rname,
        image: image,
        name: name,
        region: region,
        size: size,
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
      // @param backups (required)
      with_backups(backups):: {
        backups: backups,
      },
      // @param ipv6 (required)
      with_ipv6(ipv6):: {
        ipv6: ipv6,
      },
      // @param monitoring (required)
      with_monitoring(monitoring):: {
        monitoring: monitoring,
      },
      // @param private_networking (required)
      with_private_networking(private_networking):: {
        private_networking: private_networking,
      },
      // @param resize_disk (required)
      with_resize_disk(resize_disk):: {
        resize_disk: resize_disk,
      },
      // @param ssh_keys (required)
      with_ssh_keys(ssh_keys):: {
        ssh_keys: ssh_keys,
      },
      // @param tags (required)
      with_tags(tags):: {
        tags: tags,
      },
      // @param user_data (required)
      with_user_data(user_data):: {
        user_data: user_data,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
      // @param volume_ids (required)
      with_volume_ids(volume_ids):: {
        volume_ids: volume_ids,
      },
    },
    // digitalocean_droplet_snapshot - https://www.terraform.io/docs/providers/do/r/droplet_snapshot.html
    digitalocean_droplet_snapshot:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
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
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_firewall - https://www.terraform.io/docs/providers/do/r/firewall.html
    digitalocean_firewall:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required)
      new(rname, name):: {
        rname:: rname,
        name: name,
        created_at:: '${digitalocean_firewall.%s.created_at}' % rname,
        id:: '${digitalocean_firewall.%s.id}' % rname,
        pending_changes:: '${digitalocean_firewall.%s.pending_changes}' % rname,
        status:: '${digitalocean_firewall.%s.status}' % rname,
      },
      // @param droplet_ids (required)
      with_droplet_ids(droplet_ids):: {
        droplet_ids: droplet_ids,
      },
      // @param tags (required)
      with_tags(tags):: {
        tags: tags,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
      // @param inbound_rule (required)
      with_inbound_rule(inbound_rule):: {
        inbound_rule: inbound_rule,
      },
      inbound_rule:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param protocol (required)
        new(rname, protocol):: {
          rname:: rname,
          protocol: protocol,
        },
        // @param port_range (required)
        with_port_range(port_range):: {
          port_range: port_range,
        },
        // @param source_addresses (required)
        with_source_addresses(source_addresses):: {
          source_addresses: source_addresses,
        },
        // @param source_droplet_ids (required)
        with_source_droplet_ids(source_droplet_ids):: {
          source_droplet_ids: source_droplet_ids,
        },
        // @param source_load_balancer_uids (required)
        with_source_load_balancer_uids(source_load_balancer_uids):: {
          source_load_balancer_uids: source_load_balancer_uids,
        },
        // @param source_tags (required)
        with_source_tags(source_tags):: {
          source_tags: source_tags,
        },
      },
      // @param outbound_rule (required)
      with_outbound_rule(outbound_rule):: {
        outbound_rule: outbound_rule,
      },
      outbound_rule:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param protocol (required)
        new(rname, protocol):: {
          rname:: rname,
          protocol: protocol,
        },
        // @param destination_addresses (required)
        with_destination_addresses(destination_addresses):: {
          destination_addresses: destination_addresses,
        },
        // @param destination_droplet_ids (required)
        with_destination_droplet_ids(destination_droplet_ids):: {
          destination_droplet_ids: destination_droplet_ids,
        },
        // @param destination_load_balancer_uids (required)
        with_destination_load_balancer_uids(destination_load_balancer_uids):: {
          destination_load_balancer_uids: destination_load_balancer_uids,
        },
        // @param destination_tags (required)
        with_destination_tags(destination_tags):: {
          destination_tags: destination_tags,
        },
        // @param port_range (required)
        with_port_range(port_range):: {
          port_range: port_range,
        },
      },
    },
    // digitalocean_floating_ip - https://www.terraform.io/docs/providers/do/r/floating_ip.html
    digitalocean_floating_ip:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param region (required)
      new(rname, region):: {
        rname:: rname,
        region: region,
        id:: '${digitalocean_floating_ip.%s.id}' % rname,
        ip_address:: '${digitalocean_floating_ip.%s.ip_address}' % rname,
        urn:: '${digitalocean_floating_ip.%s.urn}' % rname,
      },
      // @param droplet_id (required)
      with_droplet_id(droplet_id):: {
        droplet_id: droplet_id,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
      // @param ip_address (required)
      with_ip_address(ip_address):: {
        ip_address: ip_address,
      },
    },
    // digitalocean_floating_ip_assignment - https://www.terraform.io/docs/providers/do/r/floating_ip_assignment.html
    digitalocean_floating_ip_assignment:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param droplet_id (required)
      // @param ip_address (required)
      new(rname, droplet_id, ip_address):: {
        rname:: rname,
        droplet_id: droplet_id,
        ip_address: ip_address,
        id:: '${digitalocean_floating_ip_assignment.%s.id}' % rname,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_kubernetes_cluster - https://www.terraform.io/docs/providers/do/r/kubernetes_cluster.html
    digitalocean_kubernetes_cluster:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required)
      // @param region (required)
      // @param version (required)
      // @param node_pool (required)
      new(rname, name, region, version, node_pool):: {
        rname:: rname,
        name: name,
        region: region,
        version: version,
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
      // @param tags (required)
      with_tags(tags):: {
        tags: tags,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
      node_pool:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param name (required)
        // @param size (required)
        new(rname, name, size):: {
          rname:: rname,
          name: name,
          size: size,
          actual_node_count:: '${digitalocean_kubernetes_cluster.%s.node_pool.actual_node_count}' % rname,
          id:: '${digitalocean_kubernetes_cluster.%s.node_pool.id}' % rname,
          nodes:: '${digitalocean_kubernetes_cluster.%s.node_pool.nodes}' % rname,
        },
        // @param auto_scale (required)
        with_auto_scale(auto_scale):: {
          auto_scale: auto_scale,
        },
        // @param max_nodes (required)
        with_max_nodes(max_nodes):: {
          max_nodes: max_nodes,
        },
        // @param min_nodes (required)
        with_min_nodes(min_nodes):: {
          min_nodes: min_nodes,
        },
        // @param node_count (required)
        with_node_count(node_count):: {
          node_count: node_count,
        },
        // @param tags (required)
        with_tags(tags):: {
          tags: tags,
        },
      },
    },
    // digitalocean_kubernetes_node_pool - https://www.terraform.io/docs/providers/do/r/kubernetes_node_pool.html
    digitalocean_kubernetes_node_pool:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param cluster_id (required)
      // @param name (required)
      // @param size (required)
      new(rname, cluster_id, name, size):: {
        rname:: rname,
        cluster_id: cluster_id,
        name: name,
        size: size,
        actual_node_count:: '${digitalocean_kubernetes_node_pool.%s.actual_node_count}' % rname,
        id:: '${digitalocean_kubernetes_node_pool.%s.id}' % rname,
        nodes:: '${digitalocean_kubernetes_node_pool.%s.nodes}' % rname,
      },
      // @param auto_scale (required)
      with_auto_scale(auto_scale):: {
        auto_scale: auto_scale,
      },
      // @param max_nodes (required)
      with_max_nodes(max_nodes):: {
        max_nodes: max_nodes,
      },
      // @param min_nodes (required)
      with_min_nodes(min_nodes):: {
        min_nodes: min_nodes,
      },
      // @param node_count (required)
      with_node_count(node_count):: {
        node_count: node_count,
      },
      // @param tags (required)
      with_tags(tags):: {
        tags: tags,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_loadbalancer - https://www.terraform.io/docs/providers/do/r/loadbalancer.html
    digitalocean_loadbalancer:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required)
      // @param region (required)
      // @param forwarding_rule (required)
      new(rname, name, region, forwarding_rule):: {
        rname:: rname,
        name: name,
        region: region,
        droplet_ids:: '${digitalocean_loadbalancer.%s.droplet_ids}' % rname,
        id:: '${digitalocean_loadbalancer.%s.id}' % rname,
        ip:: '${digitalocean_loadbalancer.%s.ip}' % rname,
        status:: '${digitalocean_loadbalancer.%s.status}' % rname,
        urn:: '${digitalocean_loadbalancer.%s.urn}' % rname,
        forwarding_rule: forwarding_rule,
      },
      // @param algorithm (required)
      with_algorithm(algorithm):: {
        algorithm: algorithm,
      },
      // @param droplet_tag (required)
      with_droplet_tag(droplet_tag):: {
        droplet_tag: droplet_tag,
      },
      // @param enable_proxy_protocol (required)
      with_enable_proxy_protocol(enable_proxy_protocol):: {
        enable_proxy_protocol: enable_proxy_protocol,
      },
      // @param redirect_http_to_https (required)
      with_redirect_http_to_https(redirect_http_to_https):: {
        redirect_http_to_https: redirect_http_to_https,
      },
      // @param droplet_ids (required)
      with_droplet_ids(droplet_ids):: {
        droplet_ids: droplet_ids,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
      forwarding_rule:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param entry_port (required)
        // @param entry_protocol (required)
        // @param target_port (required)
        // @param target_protocol (required)
        new(rname, entry_port, entry_protocol, target_port, target_protocol):: {
          rname:: rname,
          entry_port: entry_port,
          entry_protocol: entry_protocol,
          target_port: target_port,
          target_protocol: target_protocol,
        },
        // @param certificate_id (required)
        with_certificate_id(certificate_id):: {
          certificate_id: certificate_id,
        },
        // @param tls_passthrough (required)
        with_tls_passthrough(tls_passthrough):: {
          tls_passthrough: tls_passthrough,
        },
      },
      // @param healthcheck (required)
      with_healthcheck(healthcheck):: {
        healthcheck: healthcheck,
      },
      healthcheck:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param port (required)
        // @param protocol (required)
        new(rname, port, protocol):: {
          rname:: rname,
          port: port,
          protocol: protocol,
        },
        // @param check_interval_seconds (required)
        with_check_interval_seconds(check_interval_seconds):: {
          check_interval_seconds: check_interval_seconds,
        },
        // @param healthy_threshold (required)
        with_healthy_threshold(healthy_threshold):: {
          healthy_threshold: healthy_threshold,
        },
        // @param path (required)
        with_path(path):: {
          path: path,
        },
        // @param response_timeout_seconds (required)
        with_response_timeout_seconds(response_timeout_seconds):: {
          response_timeout_seconds: response_timeout_seconds,
        },
        // @param unhealthy_threshold (required)
        with_unhealthy_threshold(unhealthy_threshold):: {
          unhealthy_threshold: unhealthy_threshold,
        },
      },
      // @param sticky_sessions (required)
      with_sticky_sessions(sticky_sessions):: {
        sticky_sessions: sticky_sessions,
      },
      sticky_sessions:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        new(rname):: {
          rname:: rname,
        },
        // @param cookie_name (required)
        with_cookie_name(cookie_name):: {
          cookie_name: cookie_name,
        },
        // @param cookie_ttl_seconds (required)
        with_cookie_ttl_seconds(cookie_ttl_seconds):: {
          cookie_ttl_seconds: cookie_ttl_seconds,
        },
        // @param type (required)
        with_type(type):: {
          type: type,
        },
      },
    },
    // digitalocean_project - https://www.terraform.io/docs/providers/do/r/project.html
    digitalocean_project:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required)
      new(rname, name):: {
        rname:: rname,
        name: name,
        created_at:: '${digitalocean_project.%s.created_at}' % rname,
        id:: '${digitalocean_project.%s.id}' % rname,
        owner_id:: '${digitalocean_project.%s.owner_id}' % rname,
        owner_uuid:: '${digitalocean_project.%s.owner_uuid}' % rname,
        updated_at:: '${digitalocean_project.%s.updated_at}' % rname,
      },
      // @param description (required)
      with_description(description):: {
        description: description,
      },
      // @param environment (required)
      with_environment(environment):: {
        environment: environment,
      },
      // @param purpose (required)
      with_purpose(purpose):: {
        purpose: purpose,
      },
      // @param resources (required)
      with_resources(resources):: {
        resources: resources,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_record - https://www.terraform.io/docs/providers/do/r/record.html
    digitalocean_record:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param domain (required)
      // @param name (required)
      // @param type (required)
      // @param value (required)
      new(rname, domain, name, type, value):: {
        rname:: rname,
        domain: domain,
        name: name,
        type: type,
        value: value,
        fqdn:: '${digitalocean_record.%s.fqdn}' % rname,
        id:: '${digitalocean_record.%s.id}' % rname,
        ttl:: '${digitalocean_record.%s.ttl}' % rname,
      },
      // @param flags (required)
      with_flags(flags):: {
        flags: flags,
      },
      // @param port (required)
      with_port(port):: {
        port: port,
      },
      // @param priority (required)
      with_priority(priority):: {
        priority: priority,
      },
      // @param tag (required)
      with_tag(tag):: {
        tag: tag,
      },
      // @param weight (required)
      with_weight(weight):: {
        weight: weight,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
      // @param ttl (required)
      with_ttl(ttl):: {
        ttl: ttl,
      },
    },
    // digitalocean_spaces_bucket - https://www.terraform.io/docs/providers/do/r/spaces_bucket.html
    digitalocean_spaces_bucket:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required)
      new(rname, name):: {
        rname:: rname,
        name: name,
        bucket_domain_name:: '${digitalocean_spaces_bucket.%s.bucket_domain_name}' % rname,
        id:: '${digitalocean_spaces_bucket.%s.id}' % rname,
        urn:: '${digitalocean_spaces_bucket.%s.urn}' % rname,
      },
      // @param acl (required)
      with_acl(acl):: {
        acl: acl,
      },
      // @param force_destroy (required)
      with_force_destroy(force_destroy):: {
        force_destroy: force_destroy,
      },
      // @param region (required)
      with_region(region):: {
        region: region,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
      // @param cors_rule (required)
      with_cors_rule(cors_rule):: {
        cors_rule: cors_rule,
      },
      cors_rule:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param allowed_methods (required)
        // @param allowed_origins (required)
        new(rname, allowed_methods, allowed_origins):: {
          rname:: rname,
          allowed_methods: allowed_methods,
          allowed_origins: allowed_origins,
        },
        // @param allowed_headers (required)
        with_allowed_headers(allowed_headers):: {
          allowed_headers: allowed_headers,
        },
        // @param max_age_seconds (required)
        with_max_age_seconds(max_age_seconds):: {
          max_age_seconds: max_age_seconds,
        },
      },
    },
    // digitalocean_ssh_key - https://www.terraform.io/docs/providers/do/r/ssh_key.html
    digitalocean_ssh_key:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required)
      // @param public_key (required)
      new(rname, name, public_key):: {
        rname:: rname,
        name: name,
        public_key: public_key,
        fingerprint:: '${digitalocean_ssh_key.%s.fingerprint}' % rname,
        id:: '${digitalocean_ssh_key.%s.id}' % rname,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_tag - https://www.terraform.io/docs/providers/do/r/tag.html
    digitalocean_tag:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required)
      new(rname, name):: {
        rname:: rname,
        name: name,
        id:: '${digitalocean_tag.%s.id}' % rname,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_volume - https://www.terraform.io/docs/providers/do/r/volume.html
    digitalocean_volume:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required)
      // @param region (required)
      // @param size (required)
      new(rname, name, region, size):: {
        rname:: rname,
        name: name,
        region: region,
        size: size,
        droplet_ids:: '${digitalocean_volume.%s.droplet_ids}' % rname,
        filesystem_label:: '${digitalocean_volume.%s.filesystem_label}' % rname,
        filesystem_type:: '${digitalocean_volume.%s.filesystem_type}' % rname,
        id:: '${digitalocean_volume.%s.id}' % rname,
        urn:: '${digitalocean_volume.%s.urn}' % rname,
      },
      // @param description (required)
      with_description(description):: {
        description: description,
      },
      // @param initial_filesystem_label (required)
      with_initial_filesystem_label(initial_filesystem_label):: {
        initial_filesystem_label: initial_filesystem_label,
      },
      // @param initial_filesystem_type (required)
      with_initial_filesystem_type(initial_filesystem_type):: {
        initial_filesystem_type: initial_filesystem_type,
      },
      // @param snapshot_id (required)
      with_snapshot_id(snapshot_id):: {
        snapshot_id: snapshot_id,
      },
      // @param tags (required)
      with_tags(tags):: {
        tags: tags,
      },
      // @param filesystem_type (required)
      with_filesystem_type(filesystem_type):: {
        filesystem_type: filesystem_type,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_volume_attachment - https://www.terraform.io/docs/providers/do/r/volume_attachment.html
    digitalocean_volume_attachment:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param droplet_id (required)
      // @param volume_id (required)
      new(rname, droplet_id, volume_id):: {
        rname:: rname,
        droplet_id: droplet_id,
        volume_id: volume_id,
        id:: '${digitalocean_volume_attachment.%s.id}' % rname,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
    // digitalocean_volume_snapshot - https://www.terraform.io/docs/providers/do/r/volume_snapshot.html
    digitalocean_volume_snapshot:: {
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required)
      // @param volume_id (required)
      new(rname, name, volume_id):: {
        rname:: rname,
        name: name,
        volume_id: volume_id,
        created_at:: '${digitalocean_volume_snapshot.%s.created_at}' % rname,
        id:: '${digitalocean_volume_snapshot.%s.id}' % rname,
        min_disk_size:: '${digitalocean_volume_snapshot.%s.min_disk_size}' % rname,
        regions:: '${digitalocean_volume_snapshot.%s.regions}' % rname,
        size:: '${digitalocean_volume_snapshot.%s.size}' % rname,
      },
      // @param tags (required)
      with_tags(tags):: {
        tags: tags,
      },
      // @param id (required)
      with_id(id):: {
        id: id,
      },
    },
  },
}