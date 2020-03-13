{
  digitalocean:: {
    digitalocean_cdn:: {
      //  digitalocean_cdn - https://www.terraform.io/docs/providers/do/r/cdn.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param origin (required) https://www.terraform.io/docs/providers/do/r/cdn.html#origin.
      new(rname, origin):: {
        rname:: rname,
        origin: origin,
        created_at:: '${digitalocean_cdn.%s.created_at}' % rname,
        endpoint:: '${digitalocean_cdn.%s.endpoint}' % rname,
        id:: '${digitalocean_cdn.%s.id}' % rname,
        ttl:: '${digitalocean_cdn.%s.ttl}' % rname,
      },
      // @param certificate_id (required) https://www.terraform.io/docs/providers/do/r/cdn.html#certificate_id.
      with_certificate_id(certificate_id):: {
        certificate_id::: certificate_id,
      },
      // @param custom_domain (required) https://www.terraform.io/docs/providers/do/r/cdn.html#custom_domain.
      with_custom_domain(custom_domain):: {
        custom_domain::: custom_domain,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/cdn.html#id.
      with_id(id):: {
        id::: id,
      },
      // @param ttl (required) https://www.terraform.io/docs/providers/do/r/cdn.html#ttl.
      with_ttl(ttl):: {
        ttl::: ttl,
      },
    },
    digitalocean_certificate:: {
      //  digitalocean_certificate - https://www.terraform.io/docs/providers/do/r/certificate.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required) https://www.terraform.io/docs/providers/do/r/certificate.html#name.
      new(rname, name):: {
        rname:: rname,
        name: name,
        id:: '${digitalocean_certificate.%s.id}' % rname,
        not_after:: '${digitalocean_certificate.%s.not_after}' % rname,
        sha1_fingerprint:: '${digitalocean_certificate.%s.sha1_fingerprint}' % rname,
        state:: '${digitalocean_certificate.%s.state}' % rname,
      },
      // @param certificate_chain (required) https://www.terraform.io/docs/providers/do/r/certificate.html#certificate_chain.
      with_certificate_chain(certificate_chain):: {
        certificate_chain::: certificate_chain,
      },
      // @param domains (required) https://www.terraform.io/docs/providers/do/r/certificate.html#domains.
      with_domains(domains):: {
        domains::: domains,
      },
      // @param leaf_certificate (required) https://www.terraform.io/docs/providers/do/r/certificate.html#leaf_certificate.
      with_leaf_certificate(leaf_certificate):: {
        leaf_certificate::: leaf_certificate,
      },
      // @param private_key (required) https://www.terraform.io/docs/providers/do/r/certificate.html#private_key.
      with_private_key(private_key):: {
        private_key::: private_key,
      },
      // @param type (required) https://www.terraform.io/docs/providers/do/r/certificate.html#type.
      with_type(type):: {
        type::: type,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/certificate.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_database_cluster:: {
      //  digitalocean_database_cluster - https://www.terraform.io/docs/providers/do/r/database_cluster.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param engine (required) https://www.terraform.io/docs/providers/do/r/database_cluster.html#engine.
      // @param name (required) https://www.terraform.io/docs/providers/do/r/database_cluster.html#name.
      // @param node_count (required) https://www.terraform.io/docs/providers/do/r/database_cluster.html#node_count.
      // @param region (required) https://www.terraform.io/docs/providers/do/r/database_cluster.html#region.
      // @param size (required) https://www.terraform.io/docs/providers/do/r/database_cluster.html#size.
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
        maintenance_window:: {},
      },
      // @param eviction_policy (required) https://www.terraform.io/docs/providers/do/r/database_cluster.html#eviction_policy.
      with_eviction_policy(eviction_policy):: {
        eviction_policy::: eviction_policy,
      },
      // @param sql_mode (required) https://www.terraform.io/docs/providers/do/r/database_cluster.html#sql_mode.
      with_sql_mode(sql_mode):: {
        sql_mode::: sql_mode,
      },
      // @param tags (required) https://www.terraform.io/docs/providers/do/r/database_cluster.html#tags.
      with_tags(tags):: {
        tags::: tags,
      },
      // @param version (required) https://www.terraform.io/docs/providers/do/r/database_cluster.html#version.
      with_version(version):: {
        version::: version,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/database_cluster.html#id.
      with_id(id):: {
        id::: id,
      },
      maintenance_window:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param day (required) https://www.terraform.io/docs/providers/do/r/database_cluster.html#day.
        // @param hour (required) https://www.terraform.io/docs/providers/do/r/database_cluster.html#hour.
        new(rname, day, hour):: {
          rname:: rname,
          day: day,
          hour: hour,
        },
      },
    },
    digitalocean_database_connection_pool:: {
      //  digitalocean_database_connection_pool - https://www.terraform.io/docs/providers/do/r/database_connection_pool.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param cluster_id (required) https://www.terraform.io/docs/providers/do/r/database_connection_pool.html#cluster_id.
      // @param db_name (required) https://www.terraform.io/docs/providers/do/r/database_connection_pool.html#db_name.
      // @param mode (required) https://www.terraform.io/docs/providers/do/r/database_connection_pool.html#mode.
      // @param name (required) https://www.terraform.io/docs/providers/do/r/database_connection_pool.html#name.
      // @param size (required) https://www.terraform.io/docs/providers/do/r/database_connection_pool.html#size.
      // @param user (required) https://www.terraform.io/docs/providers/do/r/database_connection_pool.html#user.
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
      // @param id (required) https://www.terraform.io/docs/providers/do/r/database_connection_pool.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_database_db:: {
      //  digitalocean_database_db - https://www.terraform.io/docs/providers/do/r/database_db.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param cluster_id (required) https://www.terraform.io/docs/providers/do/r/database_db.html#cluster_id.
      // @param name (required) https://www.terraform.io/docs/providers/do/r/database_db.html#name.
      new(rname, cluster_id, name):: {
        rname:: rname,
        cluster_id: cluster_id,
        name: name,
        id:: '${digitalocean_database_db.%s.id}' % rname,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/database_db.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_database_firewall:: {
      //  digitalocean_database_firewall - https://www.terraform.io/docs/providers/do/r/database_firewall.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param cluster_id (required) https://www.terraform.io/docs/providers/do/r/database_firewall.html#cluster_id.
      // @param rule (required) rule block.
      new(rname, cluster_id, rule):: {
        rname:: rname,
        cluster_id: cluster_id,
        rule: rule,
        id:: '${digitalocean_database_firewall.%s.id}' % rname,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/database_firewall.html#id.
      with_id(id):: {
        id::: id,
      },
      rule:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param type (required) https://www.terraform.io/docs/providers/do/r/database_firewall.html#type.
        // @param value (required) https://www.terraform.io/docs/providers/do/r/database_firewall.html#value.
        new(rname, type, value):: {
          rname:: rname,
          type: type,
          value: value,
          created_at:: '${digitalocean_database_firewall.%s.rule.created_at}' % rname,
          uuid:: '${digitalocean_database_firewall.%s.rule.uuid}' % rname,
        },
      },
    },
    digitalocean_database_replica:: {
      //  digitalocean_database_replica - https://www.terraform.io/docs/providers/do/r/database_replica.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param cluster_id (required) https://www.terraform.io/docs/providers/do/r/database_replica.html#cluster_id.
      // @param name (required) https://www.terraform.io/docs/providers/do/r/database_replica.html#name.
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
      // @param region (required) https://www.terraform.io/docs/providers/do/r/database_replica.html#region.
      with_region(region):: {
        region::: region,
      },
      // @param size (required) https://www.terraform.io/docs/providers/do/r/database_replica.html#size.
      with_size(size):: {
        size::: size,
      },
      // @param tags (required) https://www.terraform.io/docs/providers/do/r/database_replica.html#tags.
      with_tags(tags):: {
        tags::: tags,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/database_replica.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_database_user:: {
      //  digitalocean_database_user - https://www.terraform.io/docs/providers/do/r/database_user.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param cluster_id (required) https://www.terraform.io/docs/providers/do/r/database_user.html#cluster_id.
      // @param name (required) https://www.terraform.io/docs/providers/do/r/database_user.html#name.
      new(rname, cluster_id, name):: {
        rname:: rname,
        cluster_id: cluster_id,
        name: name,
        id:: '${digitalocean_database_user.%s.id}' % rname,
        password:: '${digitalocean_database_user.%s.password}' % rname,
        role:: '${digitalocean_database_user.%s.role}' % rname,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/database_user.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_domain:: {
      //  digitalocean_domain - https://www.terraform.io/docs/providers/do/r/domain.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required) https://www.terraform.io/docs/providers/do/r/domain.html#name.
      new(rname, name):: {
        rname:: rname,
        name: name,
        id:: '${digitalocean_domain.%s.id}' % rname,
        urn:: '${digitalocean_domain.%s.urn}' % rname,
      },
      // @param ip_address (required) https://www.terraform.io/docs/providers/do/r/domain.html#ip_address.
      with_ip_address(ip_address):: {
        ip_address::: ip_address,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/domain.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_droplet:: {
      //  digitalocean_droplet - https://www.terraform.io/docs/providers/do/r/droplet.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param image (required) https://www.terraform.io/docs/providers/do/r/droplet.html#image.
      // @param name (required) https://www.terraform.io/docs/providers/do/r/droplet.html#name.
      // @param region (required) https://www.terraform.io/docs/providers/do/r/droplet.html#region.
      // @param size (required) https://www.terraform.io/docs/providers/do/r/droplet.html#size.
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
      // @param backups (required) https://www.terraform.io/docs/providers/do/r/droplet.html#backups.
      with_backups(backups):: {
        backups::: backups,
      },
      // @param ipv6 (required) https://www.terraform.io/docs/providers/do/r/droplet.html#ipv6.
      with_ipv6(ipv6):: {
        ipv6::: ipv6,
      },
      // @param monitoring (required) https://www.terraform.io/docs/providers/do/r/droplet.html#monitoring.
      with_monitoring(monitoring):: {
        monitoring::: monitoring,
      },
      // @param private_networking (required) https://www.terraform.io/docs/providers/do/r/droplet.html#private_networking.
      with_private_networking(private_networking):: {
        private_networking::: private_networking,
      },
      // @param resize_disk (required) https://www.terraform.io/docs/providers/do/r/droplet.html#resize_disk.
      with_resize_disk(resize_disk):: {
        resize_disk::: resize_disk,
      },
      // @param ssh_keys (required) https://www.terraform.io/docs/providers/do/r/droplet.html#ssh_keys.
      with_ssh_keys(ssh_keys):: {
        ssh_keys::: ssh_keys,
      },
      // @param tags (required) https://www.terraform.io/docs/providers/do/r/droplet.html#tags.
      with_tags(tags):: {
        tags::: tags,
      },
      // @param user_data (required) https://www.terraform.io/docs/providers/do/r/droplet.html#user_data.
      with_user_data(user_data):: {
        user_data::: user_data,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/droplet.html#id.
      with_id(id):: {
        id::: id,
      },
      // @param volume_ids (required) https://www.terraform.io/docs/providers/do/r/droplet.html#volume_ids.
      with_volume_ids(volume_ids):: {
        volume_ids::: volume_ids,
      },
    },
    digitalocean_droplet_snapshot:: {
      //  digitalocean_droplet_snapshot - https://www.terraform.io/docs/providers/do/r/droplet_snapshot.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param droplet_id (required) https://www.terraform.io/docs/providers/do/r/droplet_snapshot.html#droplet_id.
      // @param name (required) https://www.terraform.io/docs/providers/do/r/droplet_snapshot.html#name.
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
      // @param id (required) https://www.terraform.io/docs/providers/do/r/droplet_snapshot.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_firewall:: {
      //  digitalocean_firewall - https://www.terraform.io/docs/providers/do/r/firewall.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required) https://www.terraform.io/docs/providers/do/r/firewall.html#name.
      new(rname, name):: {
        rname:: rname,
        name: name,
        created_at:: '${digitalocean_firewall.%s.created_at}' % rname,
        id:: '${digitalocean_firewall.%s.id}' % rname,
        pending_changes:: '${digitalocean_firewall.%s.pending_changes}' % rname,
        status:: '${digitalocean_firewall.%s.status}' % rname,
        inbound_rule:: {},
        outbound_rule:: {},
      },
      // @param droplet_ids (required) https://www.terraform.io/docs/providers/do/r/firewall.html#droplet_ids.
      with_droplet_ids(droplet_ids):: {
        droplet_ids::: droplet_ids,
      },
      // @param tags (required) https://www.terraform.io/docs/providers/do/r/firewall.html#tags.
      with_tags(tags):: {
        tags::: tags,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/firewall.html#id.
      with_id(id):: {
        id::: id,
      },
      inbound_rule:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param protocol (required) https://www.terraform.io/docs/providers/do/r/firewall.html#protocol.
        new(rname, protocol):: {
          rname:: rname,
          protocol: protocol,
          port_range:: '${digitalocean_firewall.%s.inbound_rule.port_range}' % rname,
          source_addresses:: '${digitalocean_firewall.%s.inbound_rule.source_addresses}' % rname,
          source_droplet_ids:: '${digitalocean_firewall.%s.inbound_rule.source_droplet_ids}' % rname,
          source_load_balancer_uids:: '${digitalocean_firewall.%s.inbound_rule.source_load_balancer_uids}' % rname,
          source_tags:: '${digitalocean_firewall.%s.inbound_rule.source_tags}' % rname,
        },
      },
      outbound_rule:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param protocol (required) https://www.terraform.io/docs/providers/do/r/firewall.html#protocol.
        new(rname, protocol):: {
          rname:: rname,
          protocol: protocol,
          destination_addresses:: '${digitalocean_firewall.%s.outbound_rule.destination_addresses}' % rname,
          destination_droplet_ids:: '${digitalocean_firewall.%s.outbound_rule.destination_droplet_ids}' % rname,
          destination_load_balancer_uids:: '${digitalocean_firewall.%s.outbound_rule.destination_load_balancer_uids}' % rname,
          destination_tags:: '${digitalocean_firewall.%s.outbound_rule.destination_tags}' % rname,
          port_range:: '${digitalocean_firewall.%s.outbound_rule.port_range}' % rname,
        },
      },
    },
    digitalocean_floating_ip:: {
      //  digitalocean_floating_ip - https://www.terraform.io/docs/providers/do/r/floating_ip.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param region (required) https://www.terraform.io/docs/providers/do/r/floating_ip.html#region.
      new(rname, region):: {
        rname:: rname,
        region: region,
        id:: '${digitalocean_floating_ip.%s.id}' % rname,
        ip_address:: '${digitalocean_floating_ip.%s.ip_address}' % rname,
        urn:: '${digitalocean_floating_ip.%s.urn}' % rname,
      },
      // @param droplet_id (required) https://www.terraform.io/docs/providers/do/r/floating_ip.html#droplet_id.
      with_droplet_id(droplet_id):: {
        droplet_id::: droplet_id,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/floating_ip.html#id.
      with_id(id):: {
        id::: id,
      },
      // @param ip_address (required) https://www.terraform.io/docs/providers/do/r/floating_ip.html#ip_address.
      with_ip_address(ip_address):: {
        ip_address::: ip_address,
      },
    },
    digitalocean_floating_ip_assignment:: {
      //  digitalocean_floating_ip_assignment - https://www.terraform.io/docs/providers/do/r/floating_ip_assignment.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param droplet_id (required) https://www.terraform.io/docs/providers/do/r/floating_ip_assignment.html#droplet_id.
      // @param ip_address (required) https://www.terraform.io/docs/providers/do/r/floating_ip_assignment.html#ip_address.
      new(rname, droplet_id, ip_address):: {
        rname:: rname,
        droplet_id: droplet_id,
        ip_address: ip_address,
        id:: '${digitalocean_floating_ip_assignment.%s.id}' % rname,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/floating_ip_assignment.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_kubernetes_cluster:: {
      //  digitalocean_kubernetes_cluster - https://www.terraform.io/docs/providers/do/r/kubernetes_cluster.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required) https://www.terraform.io/docs/providers/do/r/kubernetes_cluster.html#name.
      // @param region (required) https://www.terraform.io/docs/providers/do/r/kubernetes_cluster.html#region.
      // @param version (required) https://www.terraform.io/docs/providers/do/r/kubernetes_cluster.html#version.
      // @param node_pool (required) node_pool block.
      new(rname, name, region, version, node_pool):: {
        rname:: rname,
        name: name,
        region: region,
        version: version,
        node_pool: node_pool,
        cluster_subnet:: '${digitalocean_kubernetes_cluster.%s.cluster_subnet}' % rname,
        created_at:: '${digitalocean_kubernetes_cluster.%s.created_at}' % rname,
        endpoint:: '${digitalocean_kubernetes_cluster.%s.endpoint}' % rname,
        id:: '${digitalocean_kubernetes_cluster.%s.id}' % rname,
        ipv4_address:: '${digitalocean_kubernetes_cluster.%s.ipv4_address}' % rname,
        kube_config:: '${digitalocean_kubernetes_cluster.%s.kube_config}' % rname,
        service_subnet:: '${digitalocean_kubernetes_cluster.%s.service_subnet}' % rname,
        status:: '${digitalocean_kubernetes_cluster.%s.status}' % rname,
        updated_at:: '${digitalocean_kubernetes_cluster.%s.updated_at}' % rname,
      },
      // @param tags (required) https://www.terraform.io/docs/providers/do/r/kubernetes_cluster.html#tags.
      with_tags(tags):: {
        tags::: tags,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/kubernetes_cluster.html#id.
      with_id(id):: {
        id::: id,
      },
      node_pool:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param name (required) https://www.terraform.io/docs/providers/do/r/kubernetes_cluster.html#name.
        // @param size (required) https://www.terraform.io/docs/providers/do/r/kubernetes_cluster.html#size.
        new(rname, name, size):: {
          rname:: rname,
          name: name,
          size: size,
          actual_node_count:: '${digitalocean_kubernetes_cluster.%s.node_pool.actual_node_count}' % rname,
          id:: '${digitalocean_kubernetes_cluster.%s.node_pool.id}' % rname,
          max_nodes:: '${digitalocean_kubernetes_cluster.%s.node_pool.max_nodes}' % rname,
          node_count:: '${digitalocean_kubernetes_cluster.%s.node_pool.node_count}' % rname,
          auto_scale:: '${digitalocean_kubernetes_cluster.%s.node_pool.auto_scale}' % rname,
          min_nodes:: '${digitalocean_kubernetes_cluster.%s.node_pool.min_nodes}' % rname,
          nodes:: '${digitalocean_kubernetes_cluster.%s.node_pool.nodes}' % rname,
          tags:: '${digitalocean_kubernetes_cluster.%s.node_pool.tags}' % rname,
        },
      },
    },
    digitalocean_kubernetes_node_pool:: {
      //  digitalocean_kubernetes_node_pool - https://www.terraform.io/docs/providers/do/r/kubernetes_node_pool.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param cluster_id (required) https://www.terraform.io/docs/providers/do/r/kubernetes_node_pool.html#cluster_id.
      // @param name (required) https://www.terraform.io/docs/providers/do/r/kubernetes_node_pool.html#name.
      // @param size (required) https://www.terraform.io/docs/providers/do/r/kubernetes_node_pool.html#size.
      new(rname, cluster_id, name, size):: {
        rname:: rname,
        cluster_id: cluster_id,
        name: name,
        size: size,
        actual_node_count:: '${digitalocean_kubernetes_node_pool.%s.actual_node_count}' % rname,
        id:: '${digitalocean_kubernetes_node_pool.%s.id}' % rname,
        nodes:: '${digitalocean_kubernetes_node_pool.%s.nodes}' % rname,
      },
      // @param auto_scale (required) https://www.terraform.io/docs/providers/do/r/kubernetes_node_pool.html#auto_scale.
      with_auto_scale(auto_scale):: {
        auto_scale::: auto_scale,
      },
      // @param max_nodes (required) https://www.terraform.io/docs/providers/do/r/kubernetes_node_pool.html#max_nodes.
      with_max_nodes(max_nodes):: {
        max_nodes::: max_nodes,
      },
      // @param min_nodes (required) https://www.terraform.io/docs/providers/do/r/kubernetes_node_pool.html#min_nodes.
      with_min_nodes(min_nodes):: {
        min_nodes::: min_nodes,
      },
      // @param node_count (required) https://www.terraform.io/docs/providers/do/r/kubernetes_node_pool.html#node_count.
      with_node_count(node_count):: {
        node_count::: node_count,
      },
      // @param tags (required) https://www.terraform.io/docs/providers/do/r/kubernetes_node_pool.html#tags.
      with_tags(tags):: {
        tags::: tags,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/kubernetes_node_pool.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_loadbalancer:: {
      //  digitalocean_loadbalancer - https://www.terraform.io/docs/providers/do/r/loadbalancer.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#name.
      // @param region (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#region.
      // @param forwarding_rule (required) forwarding_rule block.
      new(rname, name, region, forwarding_rule):: {
        rname:: rname,
        name: name,
        region: region,
        forwarding_rule: forwarding_rule,
        droplet_ids:: '${digitalocean_loadbalancer.%s.droplet_ids}' % rname,
        id:: '${digitalocean_loadbalancer.%s.id}' % rname,
        ip:: '${digitalocean_loadbalancer.%s.ip}' % rname,
        status:: '${digitalocean_loadbalancer.%s.status}' % rname,
        urn:: '${digitalocean_loadbalancer.%s.urn}' % rname,
        healthcheck:: {},
        sticky_sessions:: {},
      },
      // @param algorithm (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#algorithm.
      with_algorithm(algorithm):: {
        algorithm::: algorithm,
      },
      // @param droplet_tag (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#droplet_tag.
      with_droplet_tag(droplet_tag):: {
        droplet_tag::: droplet_tag,
      },
      // @param enable_proxy_protocol (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#enable_proxy_protocol.
      with_enable_proxy_protocol(enable_proxy_protocol):: {
        enable_proxy_protocol::: enable_proxy_protocol,
      },
      // @param redirect_http_to_https (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#redirect_http_to_https.
      with_redirect_http_to_https(redirect_http_to_https):: {
        redirect_http_to_https::: redirect_http_to_https,
      },
      // @param droplet_ids (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#droplet_ids.
      with_droplet_ids(droplet_ids):: {
        droplet_ids::: droplet_ids,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#id.
      with_id(id):: {
        id::: id,
      },
      forwarding_rule:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param entry_port (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#entry_port.
        // @param entry_protocol (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#entry_protocol.
        // @param target_port (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#target_port.
        // @param target_protocol (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#target_protocol.
        new(rname, entry_port, entry_protocol, target_port, target_protocol):: {
          rname:: rname,
          entry_port: entry_port,
          entry_protocol: entry_protocol,
          target_port: target_port,
          target_protocol: target_protocol,
          tls_passthrough:: '${digitalocean_loadbalancer.%s.forwarding_rule.tls_passthrough}' % rname,
          certificate_id:: '${digitalocean_loadbalancer.%s.forwarding_rule.certificate_id}' % rname,
        },
      },
      healthcheck:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param port (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#port.
        // @param protocol (required) https://www.terraform.io/docs/providers/do/r/loadbalancer.html#protocol.
        new(rname, port, protocol):: {
          rname:: rname,
          port: port,
          protocol: protocol,
          check_interval_seconds:: '${digitalocean_loadbalancer.%s.healthcheck.check_interval_seconds}' % rname,
          healthy_threshold:: '${digitalocean_loadbalancer.%s.healthcheck.healthy_threshold}' % rname,
          path:: '${digitalocean_loadbalancer.%s.healthcheck.path}' % rname,
          response_timeout_seconds:: '${digitalocean_loadbalancer.%s.healthcheck.response_timeout_seconds}' % rname,
          unhealthy_threshold:: '${digitalocean_loadbalancer.%s.healthcheck.unhealthy_threshold}' % rname,
        },
      },
      sticky_sessions:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        new(rname):: {
          rname:: rname,
          cookie_name:: '${digitalocean_loadbalancer.%s.sticky_sessions.cookie_name}' % rname,
          cookie_ttl_seconds:: '${digitalocean_loadbalancer.%s.sticky_sessions.cookie_ttl_seconds}' % rname,
          type:: '${digitalocean_loadbalancer.%s.sticky_sessions.type}' % rname,
        },
      },
    },
    digitalocean_project:: {
      //  digitalocean_project - https://www.terraform.io/docs/providers/do/r/project.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required) https://www.terraform.io/docs/providers/do/r/project.html#name.
      new(rname, name):: {
        rname:: rname,
        name: name,
        created_at:: '${digitalocean_project.%s.created_at}' % rname,
        id:: '${digitalocean_project.%s.id}' % rname,
        owner_id:: '${digitalocean_project.%s.owner_id}' % rname,
        owner_uuid:: '${digitalocean_project.%s.owner_uuid}' % rname,
        updated_at:: '${digitalocean_project.%s.updated_at}' % rname,
      },
      // @param description (required) https://www.terraform.io/docs/providers/do/r/project.html#description.
      with_description(description):: {
        description::: description,
      },
      // @param environment (required) https://www.terraform.io/docs/providers/do/r/project.html#environment.
      with_environment(environment):: {
        environment::: environment,
      },
      // @param purpose (required) https://www.terraform.io/docs/providers/do/r/project.html#purpose.
      with_purpose(purpose):: {
        purpose::: purpose,
      },
      // @param resources (required) https://www.terraform.io/docs/providers/do/r/project.html#resources.
      with_resources(resources):: {
        resources::: resources,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/project.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_record:: {
      //  digitalocean_record - https://www.terraform.io/docs/providers/do/r/record.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param domain (required) https://www.terraform.io/docs/providers/do/r/record.html#domain.
      // @param name (required) https://www.terraform.io/docs/providers/do/r/record.html#name.
      // @param type (required) https://www.terraform.io/docs/providers/do/r/record.html#type.
      // @param value (required) https://www.terraform.io/docs/providers/do/r/record.html#value.
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
      // @param flags (required) https://www.terraform.io/docs/providers/do/r/record.html#flags.
      with_flags(flags):: {
        flags::: flags,
      },
      // @param port (required) https://www.terraform.io/docs/providers/do/r/record.html#port.
      with_port(port):: {
        port::: port,
      },
      // @param priority (required) https://www.terraform.io/docs/providers/do/r/record.html#priority.
      with_priority(priority):: {
        priority::: priority,
      },
      // @param tag (required) https://www.terraform.io/docs/providers/do/r/record.html#tag.
      with_tag(tag):: {
        tag::: tag,
      },
      // @param weight (required) https://www.terraform.io/docs/providers/do/r/record.html#weight.
      with_weight(weight):: {
        weight::: weight,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/record.html#id.
      with_id(id):: {
        id::: id,
      },
      // @param ttl (required) https://www.terraform.io/docs/providers/do/r/record.html#ttl.
      with_ttl(ttl):: {
        ttl::: ttl,
      },
    },
    digitalocean_spaces_bucket:: {
      //  digitalocean_spaces_bucket - https://www.terraform.io/docs/providers/do/r/spaces_bucket.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required) https://www.terraform.io/docs/providers/do/r/spaces_bucket.html#name.
      new(rname, name):: {
        rname:: rname,
        name: name,
        bucket_domain_name:: '${digitalocean_spaces_bucket.%s.bucket_domain_name}' % rname,
        id:: '${digitalocean_spaces_bucket.%s.id}' % rname,
        urn:: '${digitalocean_spaces_bucket.%s.urn}' % rname,
        cors_rule:: {},
      },
      // @param acl (required) https://www.terraform.io/docs/providers/do/r/spaces_bucket.html#acl.
      with_acl(acl):: {
        acl::: acl,
      },
      // @param force_destroy (required) https://www.terraform.io/docs/providers/do/r/spaces_bucket.html#force_destroy.
      with_force_destroy(force_destroy):: {
        force_destroy::: force_destroy,
      },
      // @param region (required) https://www.terraform.io/docs/providers/do/r/spaces_bucket.html#region.
      with_region(region):: {
        region::: region,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/spaces_bucket.html#id.
      with_id(id):: {
        id::: id,
      },
      cors_rule:: {
        // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
        // @param allowed_methods (required) https://www.terraform.io/docs/providers/do/r/spaces_bucket.html#allowed_methods.
        // @param allowed_origins (required) https://www.terraform.io/docs/providers/do/r/spaces_bucket.html#allowed_origins.
        new(rname, allowed_methods, allowed_origins):: {
          rname:: rname,
          allowed_methods: allowed_methods,
          allowed_origins: allowed_origins,
          max_age_seconds:: '${digitalocean_spaces_bucket.%s.cors_rule.max_age_seconds}' % rname,
          allowed_headers:: '${digitalocean_spaces_bucket.%s.cors_rule.allowed_headers}' % rname,
        },
      },
    },
    digitalocean_ssh_key:: {
      //  digitalocean_ssh_key - https://www.terraform.io/docs/providers/do/r/ssh_key.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required) https://www.terraform.io/docs/providers/do/r/ssh_key.html#name.
      // @param public_key (required) https://www.terraform.io/docs/providers/do/r/ssh_key.html#public_key.
      new(rname, name, public_key):: {
        rname:: rname,
        name: name,
        public_key: public_key,
        fingerprint:: '${digitalocean_ssh_key.%s.fingerprint}' % rname,
        id:: '${digitalocean_ssh_key.%s.id}' % rname,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/ssh_key.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_tag:: {
      //  digitalocean_tag - https://www.terraform.io/docs/providers/do/r/tag.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required) https://www.terraform.io/docs/providers/do/r/tag.html#name.
      new(rname, name):: {
        rname:: rname,
        name: name,
        id:: '${digitalocean_tag.%s.id}' % rname,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/tag.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_volume:: {
      //  digitalocean_volume - https://www.terraform.io/docs/providers/do/r/volume.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required) https://www.terraform.io/docs/providers/do/r/volume.html#name.
      // @param region (required) https://www.terraform.io/docs/providers/do/r/volume.html#region.
      // @param size (required) https://www.terraform.io/docs/providers/do/r/volume.html#size.
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
      // @param description (required) https://www.terraform.io/docs/providers/do/r/volume.html#description.
      with_description(description):: {
        description::: description,
      },
      // @param initial_filesystem_label (required) https://www.terraform.io/docs/providers/do/r/volume.html#initial_filesystem_label.
      with_initial_filesystem_label(initial_filesystem_label):: {
        initial_filesystem_label::: initial_filesystem_label,
      },
      // @param initial_filesystem_type (required) https://www.terraform.io/docs/providers/do/r/volume.html#initial_filesystem_type.
      with_initial_filesystem_type(initial_filesystem_type):: {
        initial_filesystem_type::: initial_filesystem_type,
      },
      // @param snapshot_id (required) https://www.terraform.io/docs/providers/do/r/volume.html#snapshot_id.
      with_snapshot_id(snapshot_id):: {
        snapshot_id::: snapshot_id,
      },
      // @param tags (required) https://www.terraform.io/docs/providers/do/r/volume.html#tags.
      with_tags(tags):: {
        tags::: tags,
      },
      // @param filesystem_type (required) https://www.terraform.io/docs/providers/do/r/volume.html#filesystem_type.
      with_filesystem_type(filesystem_type):: {
        filesystem_type::: filesystem_type,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/volume.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_volume_attachment:: {
      //  digitalocean_volume_attachment - https://www.terraform.io/docs/providers/do/r/volume_attachment.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param droplet_id (required) https://www.terraform.io/docs/providers/do/r/volume_attachment.html#droplet_id.
      // @param volume_id (required) https://www.terraform.io/docs/providers/do/r/volume_attachment.html#volume_id.
      new(rname, droplet_id, volume_id):: {
        rname:: rname,
        droplet_id: droplet_id,
        volume_id: volume_id,
        id:: '${digitalocean_volume_attachment.%s.id}' % rname,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/volume_attachment.html#id.
      with_id(id):: {
        id::: id,
      },
    },
    digitalocean_volume_snapshot:: {
      //  digitalocean_volume_snapshot - https://www.terraform.io/docs/providers/do/r/volume_snapshot.html
      // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
      // @param name (required) https://www.terraform.io/docs/providers/do/r/volume_snapshot.html#name.
      // @param volume_id (required) https://www.terraform.io/docs/providers/do/r/volume_snapshot.html#volume_id.
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
      // @param tags (required) https://www.terraform.io/docs/providers/do/r/volume_snapshot.html#tags.
      with_tags(tags):: {
        tags::: tags,
      },
      // @param id (required) https://www.terraform.io/docs/providers/do/r/volume_snapshot.html#id.
      with_id(id):: {
        id::: id,
      },
    },
  },
}