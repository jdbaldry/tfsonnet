{
  aws:: {
    // aws_eip_association - https://www.terraform.io/docs/providers/aws/r/eip_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#id.
    // @param instance_id (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#instance_id.
    // @param network_interface_id (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#network_interface_id.
    // @param private_ip_address (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#private_ip_address.
    // @param public_ip (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#public_ip.
    // @param allocation_id (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#allocation_id.
    // @param allow_reassociation (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#allow_reassociation.
    aws_eip_association(rname, id=null, instance_id=null, network_interface_id=null, private_ip_address=null, public_ip=null, allocation_id=null, allow_reassociation=null):: {
      [if id != null then id]: id,
      [if instance_id != null then instance_id]: instance_id,
      [if network_interface_id != null then network_interface_id]: network_interface_id,
      [if private_ip_address != null then private_ip_address]: private_ip_address,
      [if public_ip != null then public_ip]: public_ip,
      [if allocation_id != null then allocation_id]: allocation_id,
      [if allow_reassociation != null then allow_reassociation]: allow_reassociation,
      rname:: rname,
    },
    // aws_iam_group_policy_attachment - https://www.terraform.io/docs/providers/aws/r/iam_group_policy_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param group (required) https://www.terraform.io/docs/providers/aws/r/iam_group_policy_attachment.html#group.
    // @param policy_arn (required) https://www.terraform.io/docs/providers/aws/r/iam_group_policy_attachment.html#policy_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_group_policy_attachment.html#id.
    aws_iam_group_policy_attachment(rname, group, policy_arn, id=null):: {
      group: group,
      policy_arn: policy_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_route53_resolver_rule_association - https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param resolver_rule_id (required) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule_association.html#resolver_rule_id.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule_association.html#vpc_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule_association.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule_association.html#name.
    aws_route53_resolver_rule_association(rname, resolver_rule_id, vpc_id, id=null, name=null):: {
      resolver_rule_id: resolver_rule_id,
      vpc_id: vpc_id,
      [if id != null then id]: id,
      [if name != null then name]: name,
      rname:: rname,
    },
    // aws_sagemaker_endpoint_configuration - https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint_configuration.html#id.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint_configuration.html#kms_key_arn.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint_configuration.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint_configuration.html#tags.
    aws_sagemaker_endpoint_configuration(rname, id=null, kms_key_arn=null, name=null, tags=null):: {
      [if id != null then id]: id,
      [if kms_key_arn != null then kms_key_arn]: kms_key_arn,
      [if name != null then name]: name,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_sagemaker_endpoint_configuration.%s.arn}' % rname,
    },
    // aws_cloudfront_public_key - https://www.terraform.io/docs/providers/aws/r/cloudfront_public_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param encoded_key (required) https://www.terraform.io/docs/providers/aws/r/cloudfront_public_key.html#encoded_key.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_public_key.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_public_key.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_public_key.html#name_prefix.
    // @param comment (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_public_key.html#comment.
    aws_cloudfront_public_key(rname, encoded_key, id=null, name=null, name_prefix=null, comment=null):: {
      encoded_key: encoded_key,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if comment != null then comment]: comment,
      rname:: rname,
      etag:: '${aws_cloudfront_public_key.%s.etag}' % rname,
      caller_reference:: '${aws_cloudfront_public_key.%s.caller_reference}' % rname,
    },
    // aws_cognito_user_group - https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html#name.
    // @param user_pool_id (required) https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html#user_pool_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html#id.
    // @param precedence (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html#precedence.
    // @param role_arn (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html#role_arn.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html#description.
    aws_cognito_user_group(rname, name, user_pool_id, id=null, precedence=null, role_arn=null, description=null):: {
      name: name,
      user_pool_id: user_pool_id,
      [if id != null then id]: id,
      [if precedence != null then precedence]: precedence,
      [if role_arn != null then role_arn]: role_arn,
      [if description != null then description]: description,
      rname:: rname,
    },
    // aws_config_configuration_aggregator - https://www.terraform.io/docs/providers/aws/r/config_configuration_aggregator.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/config_configuration_aggregator.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/config_configuration_aggregator.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_configuration_aggregator.html#id.
    aws_config_configuration_aggregator(rname, name, tags=null, id=null):: {
      name: name,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_config_configuration_aggregator.%s.arn}' % rname,
    },
    // aws_emr_security_configuration - https://www.terraform.io/docs/providers/aws/r/emr_security_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param configuration (required) https://www.terraform.io/docs/providers/aws/r/emr_security_configuration.html#configuration.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/emr_security_configuration.html#name_prefix.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/emr_security_configuration.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/emr_security_configuration.html#name.
    aws_emr_security_configuration(rname, configuration, name_prefix=null, id=null, name=null):: {
      configuration: configuration,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if id != null then id]: id,
      [if name != null then name]: name,
      rname:: rname,
      creation_date:: '${aws_emr_security_configuration.%s.creation_date}' % rname,
    },
    // aws_iam_user_group_membership - https://www.terraform.io/docs/providers/aws/r/iam_user_group_membership.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param groups (required) https://www.terraform.io/docs/providers/aws/r/iam_user_group_membership.html#groups.
    // @param user (required) https://www.terraform.io/docs/providers/aws/r/iam_user_group_membership.html#user.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_group_membership.html#id.
    aws_iam_user_group_membership(rname, groups, user, id=null):: {
      groups: groups,
      user: user,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_s3_bucket_object - https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#bucket.
    // @param key (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#key.
    // @param content_base64 (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#content_base64.
    // @param etag (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#etag.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#id.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#kms_key_id.
    // @param metadata (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#metadata.
    // @param content (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#content.
    // @param content_language (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#content_language.
    // @param website_redirect (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#website_redirect.
    // @param acl (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#acl.
    // @param content_encoding (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#content_encoding.
    // @param source (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#source.
    // @param storage_class (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#storage_class.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#tags.
    // @param cache_control (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#cache_control.
    // @param content_disposition (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#content_disposition.
    // @param content_type (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#content_type.
    // @param server_side_encryption (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#server_side_encryption.
    aws_s3_bucket_object(rname, bucket, key, content_base64=null, etag=null, id=null, kms_key_id=null, metadata=null, content=null, content_language=null, website_redirect=null, acl=null, content_encoding=null, source=null, storage_class=null, tags=null, cache_control=null, content_disposition=null, content_type=null, server_side_encryption=null):: {
      bucket: bucket,
      key: key,
      [if content_base64 != null then content_base64]: content_base64,
      [if etag != null then etag]: etag,
      [if id != null then id]: id,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if metadata != null then metadata]: metadata,
      [if content != null then content]: content,
      [if content_language != null then content_language]: content_language,
      [if website_redirect != null then website_redirect]: website_redirect,
      [if acl != null then acl]: acl,
      [if content_encoding != null then content_encoding]: content_encoding,
      [if source != null then source]: source,
      [if storage_class != null then storage_class]: storage_class,
      [if tags != null then tags]: tags,
      [if cache_control != null then cache_control]: cache_control,
      [if content_disposition != null then content_disposition]: content_disposition,
      [if content_type != null then content_type]: content_type,
      [if server_side_encryption != null then server_side_encryption]: server_side_encryption,
      rname:: rname,
      version_id:: '${aws_s3_bucket_object.%s.version_id}' % rname,
    },
    // aws_backup_vault - https://www.terraform.io/docs/providers/aws/r/backup_vault.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/backup_vault.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/backup_vault.html#id.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/backup_vault.html#kms_key_arn.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/backup_vault.html#tags.
    aws_backup_vault(rname, name, id=null, kms_key_arn=null, tags=null):: {
      name: name,
      [if id != null then id]: id,
      [if kms_key_arn != null then kms_key_arn]: kms_key_arn,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_backup_vault.%s.arn}' % rname,
      recovery_points:: '${aws_backup_vault.%s.recovery_points}' % rname,
    },
    // aws_mq_broker - https://www.terraform.io/docs/providers/aws/r/mq_broker.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param broker_name (required) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#broker_name.
    // @param engine_version (required) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#engine_version.
    // @param engine_type (required) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#engine_type.
    // @param host_instance_type (required) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#host_instance_type.
    // @param security_groups (required) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#security_groups.
    // @param publicly_accessible (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#publicly_accessible.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#tags.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#apply_immediately.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#id.
    // @param subnet_ids (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#subnet_ids.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#auto_minor_version_upgrade.
    // @param deployment_mode (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#deployment_mode.
    aws_mq_broker(rname, broker_name, engine_version, engine_type, host_instance_type, security_groups, publicly_accessible=null, tags=null, apply_immediately=null, id=null, subnet_ids=null, auto_minor_version_upgrade=null, deployment_mode=null):: {
      broker_name: broker_name,
      engine_version: engine_version,
      engine_type: engine_type,
      host_instance_type: host_instance_type,
      security_groups: security_groups,
      [if publicly_accessible != null then publicly_accessible]: publicly_accessible,
      [if tags != null then tags]: tags,
      [if apply_immediately != null then apply_immediately]: apply_immediately,
      [if id != null then id]: id,
      [if subnet_ids != null then subnet_ids]: subnet_ids,
      [if auto_minor_version_upgrade != null then auto_minor_version_upgrade]: auto_minor_version_upgrade,
      [if deployment_mode != null then deployment_mode]: deployment_mode,
      rname:: rname,
      arn:: '${aws_mq_broker.%s.arn}' % rname,
      instances:: '${aws_mq_broker.%s.instances}' % rname,
    },
    // aws_pinpoint_baidu_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_baidu_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param secret_key (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_baidu_channel.html#secret_key.
    // @param api_key (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_baidu_channel.html#api_key.
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_baidu_channel.html#application_id.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_baidu_channel.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_baidu_channel.html#id.
    aws_pinpoint_baidu_channel(rname, secret_key, api_key, application_id, enabled=null, id=null):: {
      secret_key: secret_key,
      api_key: api_key,
      application_id: application_id,
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_sfn_state_machine - https://www.terraform.io/docs/providers/aws/r/sfn_state_machine.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param definition (required) https://www.terraform.io/docs/providers/aws/r/sfn_state_machine.html#definition.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/sfn_state_machine.html#name.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/sfn_state_machine.html#role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sfn_state_machine.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sfn_state_machine.html#tags.
    aws_sfn_state_machine(rname, definition, name, role_arn, id=null, tags=null):: {
      definition: definition,
      name: name,
      role_arn: role_arn,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      creation_date:: '${aws_sfn_state_machine.%s.creation_date}' % rname,
      status:: '${aws_sfn_state_machine.%s.status}' % rname,
    },
    // aws_storagegateway_cached_iscsi_volume - https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param gateway_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#gateway_arn.
    // @param network_interface_id (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#network_interface_id.
    // @param target_name (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#target_name.
    // @param volume_size_in_bytes (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#volume_size_in_bytes.
    // @param snapshot_id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#snapshot_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#id.
    // @param source_volume_arn (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#source_volume_arn.
    aws_storagegateway_cached_iscsi_volume(rname, gateway_arn, network_interface_id, target_name, volume_size_in_bytes, snapshot_id=null, id=null, source_volume_arn=null):: {
      gateway_arn: gateway_arn,
      network_interface_id: network_interface_id,
      target_name: target_name,
      volume_size_in_bytes: volume_size_in_bytes,
      [if snapshot_id != null then snapshot_id]: snapshot_id,
      [if id != null then id]: id,
      [if source_volume_arn != null then source_volume_arn]: source_volume_arn,
      rname:: rname,
      volume_id:: '${aws_storagegateway_cached_iscsi_volume.%s.volume_id}' % rname,
      chap_enabled:: '${aws_storagegateway_cached_iscsi_volume.%s.chap_enabled}' % rname,
      network_interface_port:: '${aws_storagegateway_cached_iscsi_volume.%s.network_interface_port}' % rname,
      target_arn:: '${aws_storagegateway_cached_iscsi_volume.%s.target_arn}' % rname,
      arn:: '${aws_storagegateway_cached_iscsi_volume.%s.arn}' % rname,
      lun_number:: '${aws_storagegateway_cached_iscsi_volume.%s.lun_number}' % rname,
      volume_arn:: '${aws_storagegateway_cached_iscsi_volume.%s.volume_arn}' % rname,
    },
    // aws_waf_ipset - https://www.terraform.io/docs/providers/aws/r/waf_ipset.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_ipset.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_ipset.html#id.
    aws_waf_ipset(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_waf_ipset.%s.arn}' % rname,
    },
    // aws_wafregional_rule_group - https://www.terraform.io/docs/providers/aws/r/wafregional_rule_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rule_group.html#name.
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rule_group.html#metric_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_rule_group.html#id.
    aws_wafregional_rule_group(rname, name, metric_name, id=null):: {
      name: name,
      metric_name: metric_name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_lightsail_key_pair - https://www.terraform.io/docs/providers/aws/r/lightsail_key_pair.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_key_pair.html#id.
    // @param pgp_key (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_key_pair.html#pgp_key.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_key_pair.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_key_pair.html#name_prefix.
    // @param public_key (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_key_pair.html#public_key.
    aws_lightsail_key_pair(rname, id=null, pgp_key=null, name=null, name_prefix=null, public_key=null):: {
      [if id != null then id]: id,
      [if pgp_key != null then pgp_key]: pgp_key,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if public_key != null then public_key]: public_key,
      rname:: rname,
      encrypted_private_key:: '${aws_lightsail_key_pair.%s.encrypted_private_key}' % rname,
      encrypted_fingerprint:: '${aws_lightsail_key_pair.%s.encrypted_fingerprint}' % rname,
      fingerprint:: '${aws_lightsail_key_pair.%s.fingerprint}' % rname,
      private_key:: '${aws_lightsail_key_pair.%s.private_key}' % rname,
      arn:: '${aws_lightsail_key_pair.%s.arn}' % rname,
    },
    // aws_iam_user - https://www.terraform.io/docs/providers/aws/r/iam_user.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iam_user.html#name.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/iam_user.html#force_destroy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_user.html#id.
    // @param path (optional) https://www.terraform.io/docs/providers/aws/r/iam_user.html#path.
    // @param permissions_boundary (optional) https://www.terraform.io/docs/providers/aws/r/iam_user.html#permissions_boundary.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/iam_user.html#tags.
    aws_iam_user(rname, name, force_destroy=null, id=null, path=null, permissions_boundary=null, tags=null):: {
      name: name,
      [if force_destroy != null then force_destroy]: force_destroy,
      [if id != null then id]: id,
      [if path != null then path]: path,
      [if permissions_boundary != null then permissions_boundary]: permissions_boundary,
      [if tags != null then tags]: tags,
      rname:: rname,
      unique_id:: '${aws_iam_user.%s.unique_id}' % rname,
      arn:: '${aws_iam_user.%s.arn}' % rname,
    },
    // aws_proxy_protocol_policy - https://www.terraform.io/docs/providers/aws/r/proxy_protocol_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_ports (required) https://www.terraform.io/docs/providers/aws/r/proxy_protocol_policy.html#instance_ports.
    // @param load_balancer (required) https://www.terraform.io/docs/providers/aws/r/proxy_protocol_policy.html#load_balancer.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/proxy_protocol_policy.html#id.
    aws_proxy_protocol_policy(rname, instance_ports, load_balancer, id=null):: {
      instance_ports: instance_ports,
      load_balancer: load_balancer,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_rds_cluster_endpoint - https://www.terraform.io/docs/providers/aws/r/rds_cluster_endpoint.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_endpoint_identifier (required) https://www.terraform.io/docs/providers/aws/r/rds_cluster_endpoint.html#cluster_endpoint_identifier.
    // @param cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/rds_cluster_endpoint.html#cluster_identifier.
    // @param custom_endpoint_type (required) https://www.terraform.io/docs/providers/aws/r/rds_cluster_endpoint.html#custom_endpoint_type.
    // @param excluded_members (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_endpoint.html#excluded_members.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_endpoint.html#id.
    // @param static_members (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_endpoint.html#static_members.
    aws_rds_cluster_endpoint(rname, cluster_endpoint_identifier, cluster_identifier, custom_endpoint_type, excluded_members=null, id=null, static_members=null):: {
      cluster_endpoint_identifier: cluster_endpoint_identifier,
      cluster_identifier: cluster_identifier,
      custom_endpoint_type: custom_endpoint_type,
      [if excluded_members != null then excluded_members]: excluded_members,
      [if id != null then id]: id,
      [if static_members != null then static_members]: static_members,
      rname:: rname,
      arn:: '${aws_rds_cluster_endpoint.%s.arn}' % rname,
      endpoint:: '${aws_rds_cluster_endpoint.%s.endpoint}' % rname,
    },
    // aws_config_aggregate_authorization - https://www.terraform.io/docs/providers/aws/r/config_aggregate_authorization.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param region (required) https://www.terraform.io/docs/providers/aws/r/config_aggregate_authorization.html#region.
    // @param account_id (required) https://www.terraform.io/docs/providers/aws/r/config_aggregate_authorization.html#account_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/config_aggregate_authorization.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_aggregate_authorization.html#id.
    aws_config_aggregate_authorization(rname, region, account_id, tags=null, id=null):: {
      region: region,
      account_id: account_id,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_config_aggregate_authorization.%s.arn}' % rname,
    },
    // aws_db_instance_role_association - https://www.terraform.io/docs/providers/aws/r/db_instance_role_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param db_instance_identifier (required) https://www.terraform.io/docs/providers/aws/r/db_instance_role_association.html#db_instance_identifier.
    // @param feature_name (required) https://www.terraform.io/docs/providers/aws/r/db_instance_role_association.html#feature_name.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/db_instance_role_association.html#role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_instance_role_association.html#id.
    aws_db_instance_role_association(rname, db_instance_identifier, feature_name, role_arn, id=null):: {
      db_instance_identifier: db_instance_identifier,
      feature_name: feature_name,
      role_arn: role_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_ses_domain_identity_verification - https://www.terraform.io/docs/providers/aws/r/ses_domain_identity_verification.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain (required) https://www.terraform.io/docs/providers/aws/r/ses_domain_identity_verification.html#domain.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_domain_identity_verification.html#id.
    aws_ses_domain_identity_verification(rname, domain, id=null):: {
      domain: domain,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_ses_domain_identity_verification.%s.arn}' % rname,
    },
    // aws_waf_regex_match_set - https://www.terraform.io/docs/providers/aws/r/waf_regex_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_regex_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_regex_match_set.html#id.
    aws_waf_regex_match_set(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_customer_gateway - https://www.terraform.io/docs/providers/aws/r/customer_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/customer_gateway.html#bgp_asn.
    // @param ip_address (required) https://www.terraform.io/docs/providers/aws/r/customer_gateway.html#ip_address.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/customer_gateway.html#type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/customer_gateway.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/customer_gateway.html#tags.
    aws_customer_gateway(rname, bgp_asn, ip_address, type, id=null, tags=null):: {
      bgp_asn: bgp_asn,
      ip_address: ip_address,
      type: type,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
    },
    // aws_redshift_parameter_group - https://www.terraform.io/docs/providers/aws/r/redshift_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/redshift_parameter_group.html#family.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/redshift_parameter_group.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/redshift_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_parameter_group.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/redshift_parameter_group.html#tags.
    aws_redshift_parameter_group(rname, family, name, description=null, id=null, tags=null):: {
      family: family,
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_redshift_parameter_group.%s.arn}' % rname,
    },
    // aws_route53_resolver_rule - https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain_name (required) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html#domain_name.
    // @param rule_type (required) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html#rule_type.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html#name.
    // @param resolver_endpoint_id (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html#resolver_endpoint_id.
    aws_route53_resolver_rule(rname, domain_name, rule_type, tags=null, id=null, name=null, resolver_endpoint_id=null):: {
      domain_name: domain_name,
      rule_type: rule_type,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if resolver_endpoint_id != null then resolver_endpoint_id]: resolver_endpoint_id,
      rname:: rname,
      owner_id:: '${aws_route53_resolver_rule.%s.owner_id}' % rname,
      arn:: '${aws_route53_resolver_rule.%s.arn}' % rname,
      share_status:: '${aws_route53_resolver_rule.%s.share_status}' % rname,
    },
    // aws_appautoscaling_scheduled_action - https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#name.
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#resource_id.
    // @param service_namespace (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#service_namespace.
    // @param scalable_dimension (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#scalable_dimension.
    // @param end_time (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#end_time.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#id.
    // @param schedule (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#schedule.
    // @param start_time (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#start_time.
    aws_appautoscaling_scheduled_action(rname, name, resource_id, service_namespace, scalable_dimension=null, end_time=null, id=null, schedule=null, start_time=null):: {
      name: name,
      resource_id: resource_id,
      service_namespace: service_namespace,
      [if scalable_dimension != null then scalable_dimension]: scalable_dimension,
      [if end_time != null then end_time]: end_time,
      [if id != null then id]: id,
      [if schedule != null then schedule]: schedule,
      [if start_time != null then start_time]: start_time,
      rname:: rname,
      arn:: '${aws_appautoscaling_scheduled_action.%s.arn}' % rname,
    },
    // aws_iot_policy_attachment - https://www.terraform.io/docs/providers/aws/r/iot_policy_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/iot_policy_attachment.html#policy.
    // @param target (required) https://www.terraform.io/docs/providers/aws/r/iot_policy_attachment.html#target.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_policy_attachment.html#id.
    aws_iot_policy_attachment(rname, policy, target, id=null):: {
      policy: policy,
      target: target,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_ses_receipt_rule - https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#name.
    // @param rule_set_name (required) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#rule_set_name.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#id.
    // @param recipients (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#recipients.
    // @param scan_enabled (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#scan_enabled.
    // @param tls_policy (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#tls_policy.
    // @param after (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#after.
    aws_ses_receipt_rule(rname, name, rule_set_name, enabled=null, id=null, recipients=null, scan_enabled=null, tls_policy=null, after=null):: {
      name: name,
      rule_set_name: rule_set_name,
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      [if recipients != null then recipients]: recipients,
      [if scan_enabled != null then scan_enabled]: scan_enabled,
      [if tls_policy != null then tls_policy]: tls_policy,
      [if after != null then after]: after,
      rname:: rname,
    },
    // aws_simpledb_domain - https://www.terraform.io/docs/providers/aws/r/simpledb_domain.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/simpledb_domain.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/simpledb_domain.html#id.
    aws_simpledb_domain(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_sns_sms_preferences - https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param usage_report_s3_bucket (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#usage_report_s3_bucket.
    // @param default_sender_id (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#default_sender_id.
    // @param default_sms_type (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#default_sms_type.
    // @param delivery_status_iam_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#delivery_status_iam_role_arn.
    // @param delivery_status_success_sampling_rate (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#delivery_status_success_sampling_rate.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#id.
    // @param monthly_spend_limit (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#monthly_spend_limit.
    aws_sns_sms_preferences(rname, usage_report_s3_bucket=null, default_sender_id=null, default_sms_type=null, delivery_status_iam_role_arn=null, delivery_status_success_sampling_rate=null, id=null, monthly_spend_limit=null):: {
      [if usage_report_s3_bucket != null then usage_report_s3_bucket]: usage_report_s3_bucket,
      [if default_sender_id != null then default_sender_id]: default_sender_id,
      [if default_sms_type != null then default_sms_type]: default_sms_type,
      [if delivery_status_iam_role_arn != null then delivery_status_iam_role_arn]: delivery_status_iam_role_arn,
      [if delivery_status_success_sampling_rate != null then delivery_status_success_sampling_rate]: delivery_status_success_sampling_rate,
      [if id != null then id]: id,
      [if monthly_spend_limit != null then monthly_spend_limit]: monthly_spend_limit,
      rname:: rname,
    },
    // aws_ebs_encryption_by_default - https://www.terraform.io/docs/providers/aws/r/ebs_encryption_by_default.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/ebs_encryption_by_default.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_encryption_by_default.html#id.
    aws_ebs_encryption_by_default(rname, enabled=null, id=null):: {
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_dynamodb_table - https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param hash_key (required) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#hash_key.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#name.
    // @param billing_mode (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#billing_mode.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#id.
    // @param range_key (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#range_key.
    // @param stream_enabled (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#stream_enabled.
    // @param stream_view_type (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#stream_view_type.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#tags.
    // @param read_capacity (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#read_capacity.
    // @param write_capacity (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#write_capacity.
    aws_dynamodb_table(rname, hash_key, name, billing_mode=null, id=null, range_key=null, stream_enabled=null, stream_view_type=null, tags=null, read_capacity=null, write_capacity=null):: {
      hash_key: hash_key,
      name: name,
      [if billing_mode != null then billing_mode]: billing_mode,
      [if id != null then id]: id,
      [if range_key != null then range_key]: range_key,
      [if stream_enabled != null then stream_enabled]: stream_enabled,
      [if stream_view_type != null then stream_view_type]: stream_view_type,
      [if tags != null then tags]: tags,
      [if read_capacity != null then read_capacity]: read_capacity,
      [if write_capacity != null then write_capacity]: write_capacity,
      rname:: rname,
      stream_arn:: '${aws_dynamodb_table.%s.stream_arn}' % rname,
      arn:: '${aws_dynamodb_table.%s.arn}' % rname,
      stream_label:: '${aws_dynamodb_table.%s.stream_label}' % rname,
    },
    // aws_storagegateway_nfs_file_share - https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param location_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#location_arn.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#role_arn.
    // @param client_list (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#client_list.
    // @param gateway_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#gateway_arn.
    // @param guess_mime_type_enabled (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#guess_mime_type_enabled.
    // @param default_storage_class (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#default_storage_class.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#id.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#kms_key_arn.
    // @param requester_pays (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#requester_pays.
    // @param read_only (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#read_only.
    // @param kms_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#kms_encrypted.
    // @param object_acl (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#object_acl.
    // @param squash (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#squash.
    aws_storagegateway_nfs_file_share(rname, location_arn, role_arn, client_list, gateway_arn, guess_mime_type_enabled=null, default_storage_class=null, id=null, kms_key_arn=null, requester_pays=null, read_only=null, kms_encrypted=null, object_acl=null, squash=null):: {
      location_arn: location_arn,
      role_arn: role_arn,
      client_list: client_list,
      gateway_arn: gateway_arn,
      [if guess_mime_type_enabled != null then guess_mime_type_enabled]: guess_mime_type_enabled,
      [if default_storage_class != null then default_storage_class]: default_storage_class,
      [if id != null then id]: id,
      [if kms_key_arn != null then kms_key_arn]: kms_key_arn,
      [if requester_pays != null then requester_pays]: requester_pays,
      [if read_only != null then read_only]: read_only,
      [if kms_encrypted != null then kms_encrypted]: kms_encrypted,
      [if object_acl != null then object_acl]: object_acl,
      [if squash != null then squash]: squash,
      rname:: rname,
      fileshare_id:: '${aws_storagegateway_nfs_file_share.%s.fileshare_id}' % rname,
      arn:: '${aws_storagegateway_nfs_file_share.%s.arn}' % rname,
    },
    // aws_docdb_cluster - https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_members (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#cluster_members.
    // @param master_username (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#master_username.
    // @param cluster_identifier (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#cluster_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#id.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#engine.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#port.
    // @param final_snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#final_snapshot_identifier.
    // @param backup_retention_period (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#backup_retention_period.
    // @param skip_final_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#skip_final_snapshot.
    // @param db_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#db_subnet_group_name.
    // @param storage_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#storage_encrypted.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#vpc_security_group_ids.
    // @param snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#snapshot_identifier.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#apply_immediately.
    // @param cluster_identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#cluster_identifier_prefix.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#kms_key_id.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#engine_version.
    // @param master_password (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#master_password.
    // @param preferred_backup_window (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#preferred_backup_window.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#preferred_maintenance_window.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#tags.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#availability_zones.
    // @param db_cluster_parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#db_cluster_parameter_group_name.
    // @param enabled_cloudwatch_logs_exports (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#enabled_cloudwatch_logs_exports.
    aws_docdb_cluster(rname, cluster_members=null, master_username=null, cluster_identifier=null, id=null, engine=null, port=null, final_snapshot_identifier=null, backup_retention_period=null, skip_final_snapshot=null, db_subnet_group_name=null, storage_encrypted=null, vpc_security_group_ids=null, snapshot_identifier=null, apply_immediately=null, cluster_identifier_prefix=null, kms_key_id=null, engine_version=null, master_password=null, preferred_backup_window=null, preferred_maintenance_window=null, tags=null, availability_zones=null, db_cluster_parameter_group_name=null, enabled_cloudwatch_logs_exports=null):: {
      [if cluster_members != null then cluster_members]: cluster_members,
      [if master_username != null then master_username]: master_username,
      [if cluster_identifier != null then cluster_identifier]: cluster_identifier,
      [if id != null then id]: id,
      [if engine != null then engine]: engine,
      [if port != null then port]: port,
      [if final_snapshot_identifier != null then final_snapshot_identifier]: final_snapshot_identifier,
      [if backup_retention_period != null then backup_retention_period]: backup_retention_period,
      [if skip_final_snapshot != null then skip_final_snapshot]: skip_final_snapshot,
      [if db_subnet_group_name != null then db_subnet_group_name]: db_subnet_group_name,
      [if storage_encrypted != null then storage_encrypted]: storage_encrypted,
      [if vpc_security_group_ids != null then vpc_security_group_ids]: vpc_security_group_ids,
      [if snapshot_identifier != null then snapshot_identifier]: snapshot_identifier,
      [if apply_immediately != null then apply_immediately]: apply_immediately,
      [if cluster_identifier_prefix != null then cluster_identifier_prefix]: cluster_identifier_prefix,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if engine_version != null then engine_version]: engine_version,
      [if master_password != null then master_password]: master_password,
      [if preferred_backup_window != null then preferred_backup_window]: preferred_backup_window,
      [if preferred_maintenance_window != null then preferred_maintenance_window]: preferred_maintenance_window,
      [if tags != null then tags]: tags,
      [if availability_zones != null then availability_zones]: availability_zones,
      [if db_cluster_parameter_group_name != null then db_cluster_parameter_group_name]: db_cluster_parameter_group_name,
      [if enabled_cloudwatch_logs_exports != null then enabled_cloudwatch_logs_exports]: enabled_cloudwatch_logs_exports,
      rname:: rname,
      endpoint:: '${aws_docdb_cluster.%s.endpoint}' % rname,
      arn:: '${aws_docdb_cluster.%s.arn}' % rname,
      cluster_resource_id:: '${aws_docdb_cluster.%s.cluster_resource_id}' % rname,
      hosted_zone_id:: '${aws_docdb_cluster.%s.hosted_zone_id}' % rname,
      reader_endpoint:: '${aws_docdb_cluster.%s.reader_endpoint}' % rname,
    },
    // aws_dx_hosted_private_virtual_interface_accepter - https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface_accepter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param virtual_interface_id (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface_accepter.html#virtual_interface_id.
    // @param dx_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface_accepter.html#dx_gateway_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface_accepter.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface_accepter.html#tags.
    // @param vpn_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface_accepter.html#vpn_gateway_id.
    aws_dx_hosted_private_virtual_interface_accepter(rname, virtual_interface_id, dx_gateway_id=null, id=null, tags=null, vpn_gateway_id=null):: {
      virtual_interface_id: virtual_interface_id,
      [if dx_gateway_id != null then dx_gateway_id]: dx_gateway_id,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if vpn_gateway_id != null then vpn_gateway_id]: vpn_gateway_id,
      rname:: rname,
      arn:: '${aws_dx_hosted_private_virtual_interface_accepter.%s.arn}' % rname,
    },
    // aws_lightsail_static_ip - https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip.html#id.
    aws_lightsail_static_ip(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
      support_code:: '${aws_lightsail_static_ip.%s.support_code}' % rname,
      arn:: '${aws_lightsail_static_ip.%s.arn}' % rname,
      ip_address:: '${aws_lightsail_static_ip.%s.ip_address}' % rname,
    },
    // aws_sagemaker_model - https://www.terraform.io/docs/providers/aws/r/sagemaker_model.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param execution_role_arn (required) https://www.terraform.io/docs/providers/aws/r/sagemaker_model.html#execution_role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_model.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_model.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_model.html#tags.
    // @param enable_network_isolation (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_model.html#enable_network_isolation.
    aws_sagemaker_model(rname, execution_role_arn, id=null, name=null, tags=null, enable_network_isolation=null):: {
      execution_role_arn: execution_role_arn,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if tags != null then tags]: tags,
      [if enable_network_isolation != null then enable_network_isolation]: enable_network_isolation,
      rname:: rname,
      arn:: '${aws_sagemaker_model.%s.arn}' % rname,
    },
    // aws_alb_target_group_attachment - https://www.terraform.io/docs/providers/aws/r/alb_target_group_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param target_group_arn (required) https://www.terraform.io/docs/providers/aws/r/alb_target_group_attachment.html#target_group_arn.
    // @param target_id (required) https://www.terraform.io/docs/providers/aws/r/alb_target_group_attachment.html#target_id.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group_attachment.html#availability_zone.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group_attachment.html#id.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group_attachment.html#port.
    aws_alb_target_group_attachment(rname, target_group_arn, target_id, availability_zone=null, id=null, port=null):: {
      target_group_arn: target_group_arn,
      target_id: target_id,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if id != null then id]: id,
      [if port != null then port]: port,
      rname:: rname,
    },
    // aws_lb_cookie_stickiness_policy - https://www.terraform.io/docs/providers/aws/r/lb_cookie_stickiness_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param lb_port (required) https://www.terraform.io/docs/providers/aws/r/lb_cookie_stickiness_policy.html#lb_port.
    // @param load_balancer (required) https://www.terraform.io/docs/providers/aws/r/lb_cookie_stickiness_policy.html#load_balancer.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/lb_cookie_stickiness_policy.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb_cookie_stickiness_policy.html#id.
    // @param cookie_expiration_period (optional) https://www.terraform.io/docs/providers/aws/r/lb_cookie_stickiness_policy.html#cookie_expiration_period.
    aws_lb_cookie_stickiness_policy(rname, lb_port, load_balancer, name, id=null, cookie_expiration_period=null):: {
      lb_port: lb_port,
      load_balancer: load_balancer,
      name: name,
      [if id != null then id]: id,
      [if cookie_expiration_period != null then cookie_expiration_period]: cookie_expiration_period,
      rname:: rname,
    },
    // aws_opsworks_haproxy_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stats_password (required) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#stats_password.
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#stack_id.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_shutdown_recipes.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#drain_elb_on_shutdown.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#use_ebs_optimized_instances.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#auto_assign_elastic_ips.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_instance_profile_arn.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_security_group_ids.
    // @param healthcheck_method (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#healthcheck_method.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#instance_shutdown_timeout.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#name.
    // @param stats_enabled (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#stats_enabled.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#auto_healing.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_configure_recipes.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_setup_recipes.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_undeploy_recipes.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#elastic_load_balancer.
    // @param healthcheck_url (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#healthcheck_url.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#id.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#install_updates_on_boot.
    // @param stats_url (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#stats_url.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#system_packages.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#auto_assign_public_ips.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_deploy_recipes.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_json.
    // @param stats_user (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#stats_user.
    aws_opsworks_haproxy_layer(rname, stats_password, stack_id, custom_shutdown_recipes=null, drain_elb_on_shutdown=null, use_ebs_optimized_instances=null, auto_assign_elastic_ips=null, custom_instance_profile_arn=null, custom_security_group_ids=null, healthcheck_method=null, instance_shutdown_timeout=null, name=null, stats_enabled=null, auto_healing=null, custom_configure_recipes=null, custom_setup_recipes=null, custom_undeploy_recipes=null, elastic_load_balancer=null, healthcheck_url=null, id=null, install_updates_on_boot=null, stats_url=null, system_packages=null, auto_assign_public_ips=null, custom_deploy_recipes=null, custom_json=null, stats_user=null):: {
      stats_password: stats_password,
      stack_id: stack_id,
      [if custom_shutdown_recipes != null then custom_shutdown_recipes]: custom_shutdown_recipes,
      [if drain_elb_on_shutdown != null then drain_elb_on_shutdown]: drain_elb_on_shutdown,
      [if use_ebs_optimized_instances != null then use_ebs_optimized_instances]: use_ebs_optimized_instances,
      [if auto_assign_elastic_ips != null then auto_assign_elastic_ips]: auto_assign_elastic_ips,
      [if custom_instance_profile_arn != null then custom_instance_profile_arn]: custom_instance_profile_arn,
      [if custom_security_group_ids != null then custom_security_group_ids]: custom_security_group_ids,
      [if healthcheck_method != null then healthcheck_method]: healthcheck_method,
      [if instance_shutdown_timeout != null then instance_shutdown_timeout]: instance_shutdown_timeout,
      [if name != null then name]: name,
      [if stats_enabled != null then stats_enabled]: stats_enabled,
      [if auto_healing != null then auto_healing]: auto_healing,
      [if custom_configure_recipes != null then custom_configure_recipes]: custom_configure_recipes,
      [if custom_setup_recipes != null then custom_setup_recipes]: custom_setup_recipes,
      [if custom_undeploy_recipes != null then custom_undeploy_recipes]: custom_undeploy_recipes,
      [if elastic_load_balancer != null then elastic_load_balancer]: elastic_load_balancer,
      [if healthcheck_url != null then healthcheck_url]: healthcheck_url,
      [if id != null then id]: id,
      [if install_updates_on_boot != null then install_updates_on_boot]: install_updates_on_boot,
      [if stats_url != null then stats_url]: stats_url,
      [if system_packages != null then system_packages]: system_packages,
      [if auto_assign_public_ips != null then auto_assign_public_ips]: auto_assign_public_ips,
      [if custom_deploy_recipes != null then custom_deploy_recipes]: custom_deploy_recipes,
      [if custom_json != null then custom_json]: custom_json,
      [if stats_user != null then stats_user]: stats_user,
      rname:: rname,
    },
    // aws_s3_bucket_metric - https://www.terraform.io/docs/providers/aws/r/s3_bucket_metric.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_metric.html#bucket.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_metric.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_metric.html#id.
    aws_s3_bucket_metric(rname, bucket, name, id=null):: {
      bucket: bucket,
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_ses_configuration_set - https://www.terraform.io/docs/providers/aws/r/ses_configuration_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ses_configuration_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_configuration_set.html#id.
    aws_ses_configuration_set(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_dx_transit_virtual_interface - https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vlan (required) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#vlan.
    // @param connection_id (required) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#connection_id.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#name.
    // @param dx_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#dx_gateway_id.
    // @param address_family (required) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#address_family.
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#bgp_asn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#tags.
    // @param bgp_auth_key (optional) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#bgp_auth_key.
    // @param mtu (optional) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#mtu.
    // @param amazon_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#amazon_address.
    // @param customer_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#customer_address.
    aws_dx_transit_virtual_interface(rname, vlan, connection_id, name, dx_gateway_id, address_family, bgp_asn, id=null, tags=null, bgp_auth_key=null, mtu=null, amazon_address=null, customer_address=null):: {
      vlan: vlan,
      connection_id: connection_id,
      name: name,
      dx_gateway_id: dx_gateway_id,
      address_family: address_family,
      bgp_asn: bgp_asn,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if bgp_auth_key != null then bgp_auth_key]: bgp_auth_key,
      [if mtu != null then mtu]: mtu,
      [if amazon_address != null then amazon_address]: amazon_address,
      [if customer_address != null then customer_address]: customer_address,
      rname:: rname,
      arn:: '${aws_dx_transit_virtual_interface.%s.arn}' % rname,
      aws_device:: '${aws_dx_transit_virtual_interface.%s.aws_device}' % rname,
      jumbo_frame_capable:: '${aws_dx_transit_virtual_interface.%s.jumbo_frame_capable}' % rname,
    },
    // aws_opsworks_memcached_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#stack_id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#name.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#system_packages.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_shutdown_recipes.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#drain_elb_on_shutdown.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#id.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#install_updates_on_boot.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_instance_profile_arn.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_json.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_security_group_ids.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#elastic_load_balancer.
    // @param allocated_memory (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#allocated_memory.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#auto_healing.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_configure_recipes.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_deploy_recipes.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#auto_assign_elastic_ips.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#auto_assign_public_ips.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_undeploy_recipes.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#use_ebs_optimized_instances.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_setup_recipes.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#instance_shutdown_timeout.
    aws_opsworks_memcached_layer(rname, stack_id, name=null, system_packages=null, custom_shutdown_recipes=null, drain_elb_on_shutdown=null, id=null, install_updates_on_boot=null, custom_instance_profile_arn=null, custom_json=null, custom_security_group_ids=null, elastic_load_balancer=null, allocated_memory=null, auto_healing=null, custom_configure_recipes=null, custom_deploy_recipes=null, auto_assign_elastic_ips=null, auto_assign_public_ips=null, custom_undeploy_recipes=null, use_ebs_optimized_instances=null, custom_setup_recipes=null, instance_shutdown_timeout=null):: {
      stack_id: stack_id,
      [if name != null then name]: name,
      [if system_packages != null then system_packages]: system_packages,
      [if custom_shutdown_recipes != null then custom_shutdown_recipes]: custom_shutdown_recipes,
      [if drain_elb_on_shutdown != null then drain_elb_on_shutdown]: drain_elb_on_shutdown,
      [if id != null then id]: id,
      [if install_updates_on_boot != null then install_updates_on_boot]: install_updates_on_boot,
      [if custom_instance_profile_arn != null then custom_instance_profile_arn]: custom_instance_profile_arn,
      [if custom_json != null then custom_json]: custom_json,
      [if custom_security_group_ids != null then custom_security_group_ids]: custom_security_group_ids,
      [if elastic_load_balancer != null then elastic_load_balancer]: elastic_load_balancer,
      [if allocated_memory != null then allocated_memory]: allocated_memory,
      [if auto_healing != null then auto_healing]: auto_healing,
      [if custom_configure_recipes != null then custom_configure_recipes]: custom_configure_recipes,
      [if custom_deploy_recipes != null then custom_deploy_recipes]: custom_deploy_recipes,
      [if auto_assign_elastic_ips != null then auto_assign_elastic_ips]: auto_assign_elastic_ips,
      [if auto_assign_public_ips != null then auto_assign_public_ips]: auto_assign_public_ips,
      [if custom_undeploy_recipes != null then custom_undeploy_recipes]: custom_undeploy_recipes,
      [if use_ebs_optimized_instances != null then use_ebs_optimized_instances]: use_ebs_optimized_instances,
      [if custom_setup_recipes != null then custom_setup_recipes]: custom_setup_recipes,
      [if instance_shutdown_timeout != null then instance_shutdown_timeout]: instance_shutdown_timeout,
      rname:: rname,
    },
    // aws_codebuild_webhook - https://www.terraform.io/docs/providers/aws/r/codebuild_webhook.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param project_name (required) https://www.terraform.io/docs/providers/aws/r/codebuild_webhook.html#project_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_webhook.html#id.
    // @param branch_filter (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_webhook.html#branch_filter.
    aws_codebuild_webhook(rname, project_name, id=null, branch_filter=null):: {
      project_name: project_name,
      [if id != null then id]: id,
      [if branch_filter != null then branch_filter]: branch_filter,
      rname:: rname,
      payload_url:: '${aws_codebuild_webhook.%s.payload_url}' % rname,
      secret:: '${aws_codebuild_webhook.%s.secret}' % rname,
      url:: '${aws_codebuild_webhook.%s.url}' % rname,
    },
    // aws_dx_public_virtual_interface - https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#name.
    // @param vlan (required) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#vlan.
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#bgp_asn.
    // @param connection_id (required) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#connection_id.
    // @param route_filter_prefixes (required) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#route_filter_prefixes.
    // @param address_family (required) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#address_family.
    // @param bgp_auth_key (optional) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#bgp_auth_key.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#tags.
    // @param customer_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#customer_address.
    // @param amazon_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#amazon_address.
    aws_dx_public_virtual_interface(rname, name, vlan, bgp_asn, connection_id, route_filter_prefixes, address_family, bgp_auth_key=null, id=null, tags=null, customer_address=null, amazon_address=null):: {
      name: name,
      vlan: vlan,
      bgp_asn: bgp_asn,
      connection_id: connection_id,
      route_filter_prefixes: route_filter_prefixes,
      address_family: address_family,
      [if bgp_auth_key != null then bgp_auth_key]: bgp_auth_key,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if customer_address != null then customer_address]: customer_address,
      [if amazon_address != null then amazon_address]: amazon_address,
      rname:: rname,
      arn:: '${aws_dx_public_virtual_interface.%s.arn}' % rname,
      aws_device:: '${aws_dx_public_virtual_interface.%s.aws_device}' % rname,
    },
    // aws_macie_member_account_association - https://www.terraform.io/docs/providers/aws/r/macie_member_account_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param member_account_id (required) https://www.terraform.io/docs/providers/aws/r/macie_member_account_association.html#member_account_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/macie_member_account_association.html#id.
    aws_macie_member_account_association(rname, member_account_id, id=null):: {
      member_account_id: member_account_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_cloudtrail - https://www.terraform.io/docs/providers/aws/r/cloudtrail.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#name.
    // @param s3_bucket_name (required) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#s3_bucket_name.
    // @param cloud_watch_logs_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#cloud_watch_logs_role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#id.
    // @param cloud_watch_logs_group_arn (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#cloud_watch_logs_group_arn.
    // @param enable_log_file_validation (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#enable_log_file_validation.
    // @param s3_key_prefix (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#s3_key_prefix.
    // @param sns_topic_name (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#sns_topic_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#tags.
    // @param include_global_service_events (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#include_global_service_events.
    // @param is_multi_region_trail (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#is_multi_region_trail.
    // @param enable_logging (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#enable_logging.
    // @param is_organization_trail (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#is_organization_trail.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#kms_key_id.
    aws_cloudtrail(rname, name, s3_bucket_name, cloud_watch_logs_role_arn=null, id=null, cloud_watch_logs_group_arn=null, enable_log_file_validation=null, s3_key_prefix=null, sns_topic_name=null, tags=null, include_global_service_events=null, is_multi_region_trail=null, enable_logging=null, is_organization_trail=null, kms_key_id=null):: {
      name: name,
      s3_bucket_name: s3_bucket_name,
      [if cloud_watch_logs_role_arn != null then cloud_watch_logs_role_arn]: cloud_watch_logs_role_arn,
      [if id != null then id]: id,
      [if cloud_watch_logs_group_arn != null then cloud_watch_logs_group_arn]: cloud_watch_logs_group_arn,
      [if enable_log_file_validation != null then enable_log_file_validation]: enable_log_file_validation,
      [if s3_key_prefix != null then s3_key_prefix]: s3_key_prefix,
      [if sns_topic_name != null then sns_topic_name]: sns_topic_name,
      [if tags != null then tags]: tags,
      [if include_global_service_events != null then include_global_service_events]: include_global_service_events,
      [if is_multi_region_trail != null then is_multi_region_trail]: is_multi_region_trail,
      [if enable_logging != null then enable_logging]: enable_logging,
      [if is_organization_trail != null then is_organization_trail]: is_organization_trail,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      rname:: rname,
      arn:: '${aws_cloudtrail.%s.arn}' % rname,
      home_region:: '${aws_cloudtrail.%s.home_region}' % rname,
    },
    // aws_ecr_repository_policy - https://www.terraform.io/docs/providers/aws/r/ecr_repository_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/ecr_repository_policy.html#policy.
    // @param repository (required) https://www.terraform.io/docs/providers/aws/r/ecr_repository_policy.html#repository.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ecr_repository_policy.html#id.
    aws_ecr_repository_policy(rname, policy, repository, id=null):: {
      policy: policy,
      repository: repository,
      [if id != null then id]: id,
      rname:: rname,
      registry_id:: '${aws_ecr_repository_policy.%s.registry_id}' % rname,
    },
    // aws_wafregional_size_constraint_set - https://www.terraform.io/docs/providers/aws/r/wafregional_size_constraint_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_size_constraint_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_size_constraint_set.html#id.
    aws_wafregional_size_constraint_set(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_cloudwatch_event_target - https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param arn (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#arn.
    // @param rule (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#rule.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#id.
    // @param input (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#input.
    // @param input_path (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#input_path.
    // @param role_arn (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#role_arn.
    // @param target_id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#target_id.
    aws_cloudwatch_event_target(rname, arn, rule, id=null, input=null, input_path=null, role_arn=null, target_id=null):: {
      arn: arn,
      rule: rule,
      [if id != null then id]: id,
      [if input != null then input]: input,
      [if input_path != null then input_path]: input_path,
      [if role_arn != null then role_arn]: role_arn,
      [if target_id != null then target_id]: target_id,
      rname:: rname,
    },
    // aws_devicefarm_project - https://www.terraform.io/docs/providers/aws/r/devicefarm_project.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/devicefarm_project.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/devicefarm_project.html#id.
    aws_devicefarm_project(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_devicefarm_project.%s.arn}' % rname,
    },
    // aws_dx_gateway - https://www.terraform.io/docs/providers/aws/r/dx_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param amazon_side_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_gateway.html#amazon_side_asn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_gateway.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway.html#id.
    aws_dx_gateway(rname, amazon_side_asn, name, id=null):: {
      amazon_side_asn: amazon_side_asn,
      name: name,
      [if id != null then id]: id,
      rname:: rname,
      owner_account_id:: '${aws_dx_gateway.%s.owner_account_id}' % rname,
    },
    // aws_dx_hosted_public_virtual_interface - https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param address_family (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#address_family.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#name.
    // @param owner_account_id (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#owner_account_id.
    // @param vlan (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#vlan.
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#bgp_asn.
    // @param connection_id (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#connection_id.
    // @param route_filter_prefixes (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#route_filter_prefixes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#id.
    // @param amazon_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#amazon_address.
    // @param bgp_auth_key (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#bgp_auth_key.
    // @param customer_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#customer_address.
    aws_dx_hosted_public_virtual_interface(rname, address_family, name, owner_account_id, vlan, bgp_asn, connection_id, route_filter_prefixes, id=null, amazon_address=null, bgp_auth_key=null, customer_address=null):: {
      address_family: address_family,
      name: name,
      owner_account_id: owner_account_id,
      vlan: vlan,
      bgp_asn: bgp_asn,
      connection_id: connection_id,
      route_filter_prefixes: route_filter_prefixes,
      [if id != null then id]: id,
      [if amazon_address != null then amazon_address]: amazon_address,
      [if bgp_auth_key != null then bgp_auth_key]: bgp_auth_key,
      [if customer_address != null then customer_address]: customer_address,
      rname:: rname,
      aws_device:: '${aws_dx_hosted_public_virtual_interface.%s.aws_device}' % rname,
      arn:: '${aws_dx_hosted_public_virtual_interface.%s.arn}' % rname,
    },
    // aws_dx_lag - https://www.terraform.io/docs/providers/aws/r/dx_lag.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param location (required) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#location.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#name.
    // @param connections_bandwidth (required) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#connections_bandwidth.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#id.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#force_destroy.
    // @param number_of_connections (optional) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#number_of_connections.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#tags.
    aws_dx_lag(rname, location, name, connections_bandwidth, id=null, force_destroy=null, number_of_connections=null, tags=null):: {
      location: location,
      name: name,
      connections_bandwidth: connections_bandwidth,
      [if id != null then id]: id,
      [if force_destroy != null then force_destroy]: force_destroy,
      [if number_of_connections != null then number_of_connections]: number_of_connections,
      [if tags != null then tags]: tags,
      rname:: rname,
      jumbo_frame_capable:: '${aws_dx_lag.%s.jumbo_frame_capable}' % rname,
      arn:: '${aws_dx_lag.%s.arn}' % rname,
      has_logical_redundancy:: '${aws_dx_lag.%s.has_logical_redundancy}' % rname,
    },
    // aws_dynamodb_table_item - https://www.terraform.io/docs/providers/aws/r/dynamodb_table_item.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param table_name (required) https://www.terraform.io/docs/providers/aws/r/dynamodb_table_item.html#table_name.
    // @param hash_key (required) https://www.terraform.io/docs/providers/aws/r/dynamodb_table_item.html#hash_key.
    // @param item (required) https://www.terraform.io/docs/providers/aws/r/dynamodb_table_item.html#item.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table_item.html#id.
    // @param range_key (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table_item.html#range_key.
    aws_dynamodb_table_item(rname, table_name, hash_key, item, id=null, range_key=null):: {
      table_name: table_name,
      hash_key: hash_key,
      item: item,
      [if id != null then id]: id,
      [if range_key != null then range_key]: range_key,
      rname:: rname,
    },
    // aws_ec2_fleet - https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#type.
    // @param excess_capacity_termination_policy (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#excess_capacity_termination_policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#id.
    // @param replace_unhealthy_instances (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#replace_unhealthy_instances.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#tags.
    // @param terminate_instances (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#terminate_instances.
    // @param terminate_instances_with_expiration (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#terminate_instances_with_expiration.
    aws_ec2_fleet(rname, type=null, excess_capacity_termination_policy=null, id=null, replace_unhealthy_instances=null, tags=null, terminate_instances=null, terminate_instances_with_expiration=null):: {
      [if type != null then type]: type,
      [if excess_capacity_termination_policy != null then excess_capacity_termination_policy]: excess_capacity_termination_policy,
      [if id != null then id]: id,
      [if replace_unhealthy_instances != null then replace_unhealthy_instances]: replace_unhealthy_instances,
      [if tags != null then tags]: tags,
      [if terminate_instances != null then terminate_instances]: terminate_instances,
      [if terminate_instances_with_expiration != null then terminate_instances_with_expiration]: terminate_instances_with_expiration,
      rname:: rname,
    },
    // aws_secretsmanager_secret - https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#id.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#name_prefix.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#kms_key_id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#name.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#policy.
    // @param recovery_window_in_days (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#recovery_window_in_days.
    // @param rotation_lambda_arn (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#rotation_lambda_arn.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#description.
    aws_secretsmanager_secret(rname, tags=null, id=null, name_prefix=null, kms_key_id=null, name=null, policy=null, recovery_window_in_days=null, rotation_lambda_arn=null, description=null):: {
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if name != null then name]: name,
      [if policy != null then policy]: policy,
      [if recovery_window_in_days != null then recovery_window_in_days]: recovery_window_in_days,
      [if rotation_lambda_arn != null then rotation_lambda_arn]: rotation_lambda_arn,
      [if description != null then description]: description,
      rname:: rname,
      rotation_enabled:: '${aws_secretsmanager_secret.%s.rotation_enabled}' % rname,
      arn:: '${aws_secretsmanager_secret.%s.arn}' % rname,
    },
    // aws_alb_listener_rule - https://www.terraform.io/docs/providers/aws/r/alb_listener_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param listener_arn (required) https://www.terraform.io/docs/providers/aws/r/alb_listener_rule.html#listener_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener_rule.html#id.
    // @param priority (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener_rule.html#priority.
    aws_alb_listener_rule(rname, listener_arn, id=null, priority=null):: {
      listener_arn: listener_arn,
      [if id != null then id]: id,
      [if priority != null then priority]: priority,
      rname:: rname,
      arn:: '${aws_alb_listener_rule.%s.arn}' % rname,
    },
    // aws_vpc_peering_connection_options - https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_options.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_peering_connection_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_options.html#vpc_peering_connection_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_options.html#id.
    aws_vpc_peering_connection_options(rname, vpc_peering_connection_id, id=null):: {
      vpc_peering_connection_id: vpc_peering_connection_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_sns_topic_policy - https://www.terraform.io/docs/providers/aws/r/sns_topic_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param arn (required) https://www.terraform.io/docs/providers/aws/r/sns_topic_policy.html#arn.
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/sns_topic_policy.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_policy.html#id.
    aws_sns_topic_policy(rname, arn, policy, id=null):: {
      arn: arn,
      policy: policy,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_guardduty_detector - https://www.terraform.io/docs/providers/aws/r/guardduty_detector.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param enable (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_detector.html#enable.
    // @param finding_publishing_frequency (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_detector.html#finding_publishing_frequency.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_detector.html#id.
    aws_guardduty_detector(rname, enable=null, finding_publishing_frequency=null, id=null):: {
      [if enable != null then enable]: enable,
      [if finding_publishing_frequency != null then finding_publishing_frequency]: finding_publishing_frequency,
      [if id != null then id]: id,
      rname:: rname,
      account_id:: '${aws_guardduty_detector.%s.account_id}' % rname,
    },
    // aws_api_gateway_usage_plan_key - https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param usage_plan_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan_key.html#usage_plan_id.
    // @param key_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan_key.html#key_id.
    // @param key_type (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan_key.html#key_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan_key.html#id.
    aws_api_gateway_usage_plan_key(rname, usage_plan_id, key_id, key_type, id=null):: {
      usage_plan_id: usage_plan_id,
      key_id: key_id,
      key_type: key_type,
      [if id != null then id]: id,
      rname:: rname,
      value:: '${aws_api_gateway_usage_plan_key.%s.value}' % rname,
      name:: '${aws_api_gateway_usage_plan_key.%s.name}' % rname,
    },
    // aws_pinpoint_event_stream - https://www.terraform.io/docs/providers/aws/r/pinpoint_event_stream.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_event_stream.html#application_id.
    // @param destination_stream_arn (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_event_stream.html#destination_stream_arn.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_event_stream.html#role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_event_stream.html#id.
    aws_pinpoint_event_stream(rname, application_id, destination_stream_arn, role_arn, id=null):: {
      application_id: application_id,
      destination_stream_arn: destination_stream_arn,
      role_arn: role_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_ram_resource_association - https://www.terraform.io/docs/providers/aws/r/ram_resource_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param resource_share_arn (required) https://www.terraform.io/docs/providers/aws/r/ram_resource_association.html#resource_share_arn.
    // @param resource_arn (required) https://www.terraform.io/docs/providers/aws/r/ram_resource_association.html#resource_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ram_resource_association.html#id.
    aws_ram_resource_association(rname, resource_share_arn, resource_arn, id=null):: {
      resource_share_arn: resource_share_arn,
      resource_arn: resource_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_redshift_snapshot_copy_grant - https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_copy_grant.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param snapshot_copy_grant_name (required) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_copy_grant.html#snapshot_copy_grant_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_copy_grant.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_copy_grant.html#id.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_copy_grant.html#kms_key_id.
    aws_redshift_snapshot_copy_grant(rname, snapshot_copy_grant_name, tags=null, id=null, kms_key_id=null):: {
      snapshot_copy_grant_name: snapshot_copy_grant_name,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      rname:: rname,
      arn:: '${aws_redshift_snapshot_copy_grant.%s.arn}' % rname,
    },
    // aws_neptune_parameter_group - https://www.terraform.io/docs/providers/aws/r/neptune_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/neptune_parameter_group.html#name.
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/neptune_parameter_group.html#family.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/neptune_parameter_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/neptune_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_parameter_group.html#id.
    aws_neptune_parameter_group(rname, name, family, tags=null, description=null, id=null):: {
      name: name,
      family: family,
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_neptune_parameter_group.%s.arn}' % rname,
    },
    // aws_iam_instance_profile - https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html#id.
    // @param path (optional) https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html#path.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html#name_prefix.
    // @param role (optional) https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html#role.
    // @param roles (optional) https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html#roles.
    aws_iam_instance_profile(rname, id=null, path=null, name=null, name_prefix=null, role=null, roles=null):: {
      [if id != null then id]: id,
      [if path != null then path]: path,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if role != null then role]: role,
      [if roles != null then roles]: roles,
      rname:: rname,
      create_date:: '${aws_iam_instance_profile.%s.create_date}' % rname,
      unique_id:: '${aws_iam_instance_profile.%s.unique_id}' % rname,
      arn:: '${aws_iam_instance_profile.%s.arn}' % rname,
    },
    // aws_kinesis_analytics_application - https://www.terraform.io/docs/providers/aws/r/kinesis_analytics_application.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/kinesis_analytics_application.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_analytics_application.html#id.
    // @param code (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_analytics_application.html#code.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_analytics_application.html#description.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_analytics_application.html#tags.
    aws_kinesis_analytics_application(rname, name, id=null, code=null, description=null, tags=null):: {
      name: name,
      [if id != null then id]: id,
      [if code != null then code]: code,
      [if description != null then description]: description,
      [if tags != null then tags]: tags,
      rname:: rname,
      last_update_timestamp:: '${aws_kinesis_analytics_application.%s.last_update_timestamp}' % rname,
      create_timestamp:: '${aws_kinesis_analytics_application.%s.create_timestamp}' % rname,
      status:: '${aws_kinesis_analytics_application.%s.status}' % rname,
      version:: '${aws_kinesis_analytics_application.%s.version}' % rname,
      arn:: '${aws_kinesis_analytics_application.%s.arn}' % rname,
    },
    // aws_lb_listener_rule - https://www.terraform.io/docs/providers/aws/r/lb_listener_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param listener_arn (required) https://www.terraform.io/docs/providers/aws/r/lb_listener_rule.html#listener_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener_rule.html#id.
    // @param priority (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener_rule.html#priority.
    aws_lb_listener_rule(rname, listener_arn, id=null, priority=null):: {
      listener_arn: listener_arn,
      [if id != null then id]: id,
      [if priority != null then priority]: priority,
      rname:: rname,
      arn:: '${aws_lb_listener_rule.%s.arn}' % rname,
    },
    // aws_ram_principal_association - https://www.terraform.io/docs/providers/aws/r/ram_principal_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param principal (required) https://www.terraform.io/docs/providers/aws/r/ram_principal_association.html#principal.
    // @param resource_share_arn (required) https://www.terraform.io/docs/providers/aws/r/ram_principal_association.html#resource_share_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ram_principal_association.html#id.
    aws_ram_principal_association(rname, principal, resource_share_arn, id=null):: {
      principal: principal,
      resource_share_arn: resource_share_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_redshift_snapshot_schedule_association - https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule_association.html#cluster_identifier.
    // @param schedule_identifier (required) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule_association.html#schedule_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule_association.html#id.
    aws_redshift_snapshot_schedule_association(rname, cluster_identifier, schedule_identifier, id=null):: {
      cluster_identifier: cluster_identifier,
      schedule_identifier: schedule_identifier,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_sagemaker_notebook_instance_lifecycle_configuration - https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance_lifecycle_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance_lifecycle_configuration.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance_lifecycle_configuration.html#name.
    // @param on_create (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance_lifecycle_configuration.html#on_create.
    // @param on_start (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance_lifecycle_configuration.html#on_start.
    aws_sagemaker_notebook_instance_lifecycle_configuration(rname, id=null, name=null, on_create=null, on_start=null):: {
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if on_create != null then on_create]: on_create,
      [if on_start != null then on_start]: on_start,
      rname:: rname,
      arn:: '${aws_sagemaker_notebook_instance_lifecycle_configuration.%s.arn}' % rname,
    },
    // aws_ebs_snapshot - https://www.terraform.io/docs/providers/aws/r/ebs_snapshot.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param volume_id (required) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot.html#volume_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot.html#id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot.html#description.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot.html#tags.
    aws_ebs_snapshot(rname, volume_id, id=null, description=null, tags=null):: {
      volume_id: volume_id,
      [if id != null then id]: id,
      [if description != null then description]: description,
      [if tags != null then tags]: tags,
      rname:: rname,
      data_encryption_key_id:: '${aws_ebs_snapshot.%s.data_encryption_key_id}' % rname,
      encrypted:: '${aws_ebs_snapshot.%s.encrypted}' % rname,
      kms_key_id:: '${aws_ebs_snapshot.%s.kms_key_id}' % rname,
      owner_id:: '${aws_ebs_snapshot.%s.owner_id}' % rname,
      owner_alias:: '${aws_ebs_snapshot.%s.owner_alias}' % rname,
      volume_size:: '${aws_ebs_snapshot.%s.volume_size}' % rname,
    },
    // aws_cloudwatch_log_metric_filter - https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_metric_filter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param log_group_name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_metric_filter.html#log_group_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_metric_filter.html#name.
    // @param pattern (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_metric_filter.html#pattern.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_metric_filter.html#id.
    aws_cloudwatch_log_metric_filter(rname, log_group_name, name, pattern, id=null):: {
      log_group_name: log_group_name,
      name: name,
      pattern: pattern,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_cognito_identity_pool - https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param identity_pool_name (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#identity_pool_name.
    // @param allow_unauthenticated_identities (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#allow_unauthenticated_identities.
    // @param developer_provider_name (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#developer_provider_name.
    // @param saml_provider_arns (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#saml_provider_arns.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#tags.
    // @param supported_login_providers (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#supported_login_providers.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#id.
    // @param openid_connect_provider_arns (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#openid_connect_provider_arns.
    aws_cognito_identity_pool(rname, identity_pool_name, allow_unauthenticated_identities=null, developer_provider_name=null, saml_provider_arns=null, tags=null, supported_login_providers=null, id=null, openid_connect_provider_arns=null):: {
      identity_pool_name: identity_pool_name,
      [if allow_unauthenticated_identities != null then allow_unauthenticated_identities]: allow_unauthenticated_identities,
      [if developer_provider_name != null then developer_provider_name]: developer_provider_name,
      [if saml_provider_arns != null then saml_provider_arns]: saml_provider_arns,
      [if tags != null then tags]: tags,
      [if supported_login_providers != null then supported_login_providers]: supported_login_providers,
      [if id != null then id]: id,
      [if openid_connect_provider_arns != null then openid_connect_provider_arns]: openid_connect_provider_arns,
      rname:: rname,
      arn:: '${aws_cognito_identity_pool.%s.arn}' % rname,
    },
    // aws_gamelift_build - https://www.terraform.io/docs/providers/aws/r/gamelift_build.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/gamelift_build.html#name.
    // @param operating_system (required) https://www.terraform.io/docs/providers/aws/r/gamelift_build.html#operating_system.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_build.html#id.
    // @param version (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_build.html#version.
    aws_gamelift_build(rname, name, operating_system, id=null, version=null):: {
      name: name,
      operating_system: operating_system,
      [if id != null then id]: id,
      [if version != null then version]: version,
      rname:: rname,
    },
    // aws_glue_job - https://www.terraform.io/docs/providers/aws/r/glue_job.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_job.html#name.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/glue_job.html#role_arn.
    // @param connections (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#connections.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#id.
    // @param timeout (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#timeout.
    // @param allocated_capacity (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#allocated_capacity.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#description.
    // @param max_capacity (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#max_capacity.
    // @param max_retries (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#max_retries.
    // @param security_configuration (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#security_configuration.
    // @param default_arguments (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#default_arguments.
    aws_glue_job(rname, name, role_arn, connections=null, id=null, timeout=null, allocated_capacity=null, description=null, max_capacity=null, max_retries=null, security_configuration=null, default_arguments=null):: {
      name: name,
      role_arn: role_arn,
      [if connections != null then connections]: connections,
      [if id != null then id]: id,
      [if timeout != null then timeout]: timeout,
      [if allocated_capacity != null then allocated_capacity]: allocated_capacity,
      [if description != null then description]: description,
      [if max_capacity != null then max_capacity]: max_capacity,
      [if max_retries != null then max_retries]: max_retries,
      [if security_configuration != null then security_configuration]: security_configuration,
      [if default_arguments != null then default_arguments]: default_arguments,
      rname:: rname,
    },
    // aws_route53_health_check - https://www.terraform.io/docs/providers/aws/r/route53_health_check.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#type.
    // @param child_healthchecks (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#child_healthchecks.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#id.
    // @param insufficient_data_health_status (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#insufficient_data_health_status.
    // @param regions (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#regions.
    // @param fqdn (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#fqdn.
    // @param reference_name (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#reference_name.
    // @param request_interval (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#request_interval.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#port.
    // @param child_health_threshold (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#child_health_threshold.
    // @param cloudwatch_alarm_name (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#cloudwatch_alarm_name.
    // @param cloudwatch_alarm_region (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#cloudwatch_alarm_region.
    // @param enable_sni (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#enable_sni.
    // @param invert_healthcheck (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#invert_healthcheck.
    // @param ip_address (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#ip_address.
    // @param measure_latency (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#measure_latency.
    // @param resource_path (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#resource_path.
    // @param search_string (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#search_string.
    // @param failure_threshold (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#failure_threshold.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#tags.
    aws_route53_health_check(rname, type, child_healthchecks=null, id=null, insufficient_data_health_status=null, regions=null, fqdn=null, reference_name=null, request_interval=null, port=null, child_health_threshold=null, cloudwatch_alarm_name=null, cloudwatch_alarm_region=null, enable_sni=null, invert_healthcheck=null, ip_address=null, measure_latency=null, resource_path=null, search_string=null, failure_threshold=null, tags=null):: {
      type: type,
      [if child_healthchecks != null then child_healthchecks]: child_healthchecks,
      [if id != null then id]: id,
      [if insufficient_data_health_status != null then insufficient_data_health_status]: insufficient_data_health_status,
      [if regions != null then regions]: regions,
      [if fqdn != null then fqdn]: fqdn,
      [if reference_name != null then reference_name]: reference_name,
      [if request_interval != null then request_interval]: request_interval,
      [if port != null then port]: port,
      [if child_health_threshold != null then child_health_threshold]: child_health_threshold,
      [if cloudwatch_alarm_name != null then cloudwatch_alarm_name]: cloudwatch_alarm_name,
      [if cloudwatch_alarm_region != null then cloudwatch_alarm_region]: cloudwatch_alarm_region,
      [if enable_sni != null then enable_sni]: enable_sni,
      [if invert_healthcheck != null then invert_healthcheck]: invert_healthcheck,
      [if ip_address != null then ip_address]: ip_address,
      [if measure_latency != null then measure_latency]: measure_latency,
      [if resource_path != null then resource_path]: resource_path,
      [if search_string != null then search_string]: search_string,
      [if failure_threshold != null then failure_threshold]: failure_threshold,
      [if tags != null then tags]: tags,
      rname:: rname,
    },
    // aws_cloudwatch_event_rule - https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#name_prefix.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#description.
    // @param event_pattern (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#event_pattern.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#id.
    // @param is_enabled (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#is_enabled.
    // @param role_arn (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#role_arn.
    // @param schedule_expression (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#schedule_expression.
    aws_cloudwatch_event_rule(rname, name_prefix=null, description=null, event_pattern=null, name=null, tags=null, id=null, is_enabled=null, role_arn=null, schedule_expression=null):: {
      [if name_prefix != null then name_prefix]: name_prefix,
      [if description != null then description]: description,
      [if event_pattern != null then event_pattern]: event_pattern,
      [if name != null then name]: name,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      [if is_enabled != null then is_enabled]: is_enabled,
      [if role_arn != null then role_arn]: role_arn,
      [if schedule_expression != null then schedule_expression]: schedule_expression,
      rname:: rname,
      arn:: '${aws_cloudwatch_event_rule.%s.arn}' % rname,
    },
    // aws_api_gateway_documentation_version - https://www.terraform.io/docs/providers/aws/r/api_gateway_documentation_version.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_documentation_version.html#rest_api_id.
    // @param version (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_documentation_version.html#version.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_documentation_version.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_documentation_version.html#id.
    aws_api_gateway_documentation_version(rname, rest_api_id, version, description=null, id=null):: {
      rest_api_id: rest_api_id,
      version: version,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_codedeploy_deployment_config - https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_config.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param deployment_config_name (required) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_config.html#deployment_config_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_config.html#id.
    // @param compute_platform (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_config.html#compute_platform.
    aws_codedeploy_deployment_config(rname, deployment_config_name, id=null, compute_platform=null):: {
      deployment_config_name: deployment_config_name,
      [if id != null then id]: id,
      [if compute_platform != null then compute_platform]: compute_platform,
      rname:: rname,
      deployment_config_id:: '${aws_codedeploy_deployment_config.%s.deployment_config_id}' % rname,
    },
    // aws_elb_attachment - https://www.terraform.io/docs/providers/aws/r/elb_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param elb (required) https://www.terraform.io/docs/providers/aws/r/elb_attachment.html#elb.
    // @param instance (required) https://www.terraform.io/docs/providers/aws/r/elb_attachment.html#instance.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elb_attachment.html#id.
    aws_elb_attachment(rname, elb, instance, id=null):: {
      elb: elb,
      instance: instance,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_neptune_event_subscription - https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param sns_topic_arn (required) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#sns_topic_arn.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#name.
    // @param source_ids (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#source_ids.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#tags.
    // @param event_categories (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#event_categories.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#name_prefix.
    // @param source_type (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#source_type.
    aws_neptune_event_subscription(rname, sns_topic_arn, enabled=null, id=null, name=null, source_ids=null, tags=null, event_categories=null, name_prefix=null, source_type=null):: {
      sns_topic_arn: sns_topic_arn,
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if source_ids != null then source_ids]: source_ids,
      [if tags != null then tags]: tags,
      [if event_categories != null then event_categories]: event_categories,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if source_type != null then source_type]: source_type,
      rname:: rname,
      customer_aws_id:: '${aws_neptune_event_subscription.%s.customer_aws_id}' % rname,
      arn:: '${aws_neptune_event_subscription.%s.arn}' % rname,
    },
    // aws_ses_identity_notification_topic - https://www.terraform.io/docs/providers/aws/r/ses_identity_notification_topic.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param identity (required) https://www.terraform.io/docs/providers/aws/r/ses_identity_notification_topic.html#identity.
    // @param notification_type (required) https://www.terraform.io/docs/providers/aws/r/ses_identity_notification_topic.html#notification_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_identity_notification_topic.html#id.
    // @param include_original_headers (optional) https://www.terraform.io/docs/providers/aws/r/ses_identity_notification_topic.html#include_original_headers.
    // @param topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/ses_identity_notification_topic.html#topic_arn.
    aws_ses_identity_notification_topic(rname, identity, notification_type, id=null, include_original_headers=null, topic_arn=null):: {
      identity: identity,
      notification_type: notification_type,
      [if id != null then id]: id,
      [if include_original_headers != null then include_original_headers]: include_original_headers,
      [if topic_arn != null then topic_arn]: topic_arn,
      rname:: rname,
    },
    // aws_alb_listener_certificate - https://www.terraform.io/docs/providers/aws/r/alb_listener_certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate_arn (required) https://www.terraform.io/docs/providers/aws/r/alb_listener_certificate.html#certificate_arn.
    // @param listener_arn (required) https://www.terraform.io/docs/providers/aws/r/alb_listener_certificate.html#listener_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener_certificate.html#id.
    aws_alb_listener_certificate(rname, certificate_arn, listener_arn, id=null):: {
      certificate_arn: certificate_arn,
      listener_arn: listener_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_elb - https://www.terraform.io/docs/providers/aws/r/elb.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#id.
    // @param internal (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#internal.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#name.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#security_groups.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#availability_zones.
    // @param connection_draining_timeout (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#connection_draining_timeout.
    // @param cross_zone_load_balancing (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#cross_zone_load_balancing.
    // @param idle_timeout (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#idle_timeout.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#name_prefix.
    // @param source_security_group (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#source_security_group.
    // @param subnets (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#subnets.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#tags.
    // @param instances (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#instances.
    // @param connection_draining (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#connection_draining.
    aws_elb(rname, id=null, internal=null, name=null, security_groups=null, availability_zones=null, connection_draining_timeout=null, cross_zone_load_balancing=null, idle_timeout=null, name_prefix=null, source_security_group=null, subnets=null, tags=null, instances=null, connection_draining=null):: {
      [if id != null then id]: id,
      [if internal != null then internal]: internal,
      [if name != null then name]: name,
      [if security_groups != null then security_groups]: security_groups,
      [if availability_zones != null then availability_zones]: availability_zones,
      [if connection_draining_timeout != null then connection_draining_timeout]: connection_draining_timeout,
      [if cross_zone_load_balancing != null then cross_zone_load_balancing]: cross_zone_load_balancing,
      [if idle_timeout != null then idle_timeout]: idle_timeout,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if source_security_group != null then source_security_group]: source_security_group,
      [if subnets != null then subnets]: subnets,
      [if tags != null then tags]: tags,
      [if instances != null then instances]: instances,
      [if connection_draining != null then connection_draining]: connection_draining,
      rname:: rname,
      source_security_group_id:: '${aws_elb.%s.source_security_group_id}' % rname,
      arn:: '${aws_elb.%s.arn}' % rname,
      dns_name:: '${aws_elb.%s.dns_name}' % rname,
      zone_id:: '${aws_elb.%s.zone_id}' % rname,
    },
    // aws_fms_admin_account - https://www.terraform.io/docs/providers/aws/r/fms_admin_account.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param account_id (optional) https://www.terraform.io/docs/providers/aws/r/fms_admin_account.html#account_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/fms_admin_account.html#id.
    aws_fms_admin_account(rname, account_id=null, id=null):: {
      [if account_id != null then account_id]: account_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_neptune_cluster_instance - https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_class (required) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#instance_class.
    // @param cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#cluster_identifier.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#auto_minor_version_upgrade.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#engine.
    // @param identifier (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#id.
    // @param preferred_backup_window (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#preferred_backup_window.
    // @param publicly_accessible (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#publicly_accessible.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#availability_zone.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#engine_version.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#apply_immediately.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#preferred_maintenance_window.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#port.
    // @param promotion_tier (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#promotion_tier.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#tags.
    // @param identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#identifier_prefix.
    // @param neptune_parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#neptune_parameter_group_name.
    // @param neptune_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#neptune_subnet_group_name.
    aws_neptune_cluster_instance(rname, instance_class, cluster_identifier, auto_minor_version_upgrade=null, engine=null, identifier=null, id=null, preferred_backup_window=null, publicly_accessible=null, availability_zone=null, engine_version=null, apply_immediately=null, preferred_maintenance_window=null, port=null, promotion_tier=null, tags=null, identifier_prefix=null, neptune_parameter_group_name=null, neptune_subnet_group_name=null):: {
      instance_class: instance_class,
      cluster_identifier: cluster_identifier,
      [if auto_minor_version_upgrade != null then auto_minor_version_upgrade]: auto_minor_version_upgrade,
      [if engine != null then engine]: engine,
      [if identifier != null then identifier]: identifier,
      [if id != null then id]: id,
      [if preferred_backup_window != null then preferred_backup_window]: preferred_backup_window,
      [if publicly_accessible != null then publicly_accessible]: publicly_accessible,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if engine_version != null then engine_version]: engine_version,
      [if apply_immediately != null then apply_immediately]: apply_immediately,
      [if preferred_maintenance_window != null then preferred_maintenance_window]: preferred_maintenance_window,
      [if port != null then port]: port,
      [if promotion_tier != null then promotion_tier]: promotion_tier,
      [if tags != null then tags]: tags,
      [if identifier_prefix != null then identifier_prefix]: identifier_prefix,
      [if neptune_parameter_group_name != null then neptune_parameter_group_name]: neptune_parameter_group_name,
      [if neptune_subnet_group_name != null then neptune_subnet_group_name]: neptune_subnet_group_name,
      rname:: rname,
      writer:: '${aws_neptune_cluster_instance.%s.writer}' % rname,
      arn:: '${aws_neptune_cluster_instance.%s.arn}' % rname,
      endpoint:: '${aws_neptune_cluster_instance.%s.endpoint}' % rname,
      dbi_resource_id:: '${aws_neptune_cluster_instance.%s.dbi_resource_id}' % rname,
      kms_key_arn:: '${aws_neptune_cluster_instance.%s.kms_key_arn}' % rname,
      storage_encrypted:: '${aws_neptune_cluster_instance.%s.storage_encrypted}' % rname,
      address:: '${aws_neptune_cluster_instance.%s.address}' % rname,
    },
    // aws_security_group - https://www.terraform.io/docs/providers/aws/r/security_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#id.
    // @param ingress (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#ingress.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#name_prefix.
    // @param revoke_rules_on_delete (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#revoke_rules_on_delete.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#vpc_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#description.
    // @param egress (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#egress.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#tags.
    aws_security_group(rname, id=null, ingress=null, name=null, name_prefix=null, revoke_rules_on_delete=null, vpc_id=null, description=null, egress=null, tags=null):: {
      [if id != null then id]: id,
      [if ingress != null then ingress]: ingress,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if revoke_rules_on_delete != null then revoke_rules_on_delete]: revoke_rules_on_delete,
      [if vpc_id != null then vpc_id]: vpc_id,
      [if description != null then description]: description,
      [if egress != null then egress]: egress,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_security_group.%s.arn}' % rname,
      owner_id:: '${aws_security_group.%s.owner_id}' % rname,
    },
    // aws_subnet - https://www.terraform.io/docs/providers/aws/r/subnet.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cidr_block (required) https://www.terraform.io/docs/providers/aws/r/subnet.html#cidr_block.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/subnet.html#vpc_id.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#availability_zone.
    // @param ipv6_cidr_block (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#ipv6_cidr_block.
    // @param map_public_ip_on_launch (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#map_public_ip_on_launch.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#tags.
    // @param assign_ipv6_address_on_creation (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#assign_ipv6_address_on_creation.
    // @param availability_zone_id (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#availability_zone_id.
    aws_subnet(rname, cidr_block, vpc_id, availability_zone=null, ipv6_cidr_block=null, map_public_ip_on_launch=null, id=null, tags=null, assign_ipv6_address_on_creation=null, availability_zone_id=null):: {
      cidr_block: cidr_block,
      vpc_id: vpc_id,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if ipv6_cidr_block != null then ipv6_cidr_block]: ipv6_cidr_block,
      [if map_public_ip_on_launch != null then map_public_ip_on_launch]: map_public_ip_on_launch,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if assign_ipv6_address_on_creation != null then assign_ipv6_address_on_creation]: assign_ipv6_address_on_creation,
      [if availability_zone_id != null then availability_zone_id]: availability_zone_id,
      rname:: rname,
      owner_id:: '${aws_subnet.%s.owner_id}' % rname,
      ipv6_cidr_block_association_id:: '${aws_subnet.%s.ipv6_cidr_block_association_id}' % rname,
      arn:: '${aws_subnet.%s.arn}' % rname,
    },
    // aws_appsync_resolver - https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param api_id (required) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#api_id.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#type.
    // @param field (required) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#field.
    // @param request_template (required) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#request_template.
    // @param response_template (required) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#response_template.
    // @param data_source (optional) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#data_source.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#id.
    // @param kind (optional) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#kind.
    aws_appsync_resolver(rname, api_id, type, field, request_template, response_template, data_source=null, id=null, kind=null):: {
      api_id: api_id,
      type: type,
      field: field,
      request_template: request_template,
      response_template: response_template,
      [if data_source != null then data_source]: data_source,
      [if id != null then id]: id,
      [if kind != null then kind]: kind,
      rname:: rname,
      arn:: '${aws_appsync_resolver.%s.arn}' % rname,
    },
    // aws_db_option_group - https://www.terraform.io/docs/providers/aws/r/db_option_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param engine_name (required) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#engine_name.
    // @param major_engine_version (required) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#major_engine_version.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#name_prefix.
    // @param option_group_description (optional) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#option_group_description.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#tags.
    aws_db_option_group(rname, engine_name, major_engine_version, id=null, name=null, name_prefix=null, option_group_description=null, tags=null):: {
      engine_name: engine_name,
      major_engine_version: major_engine_version,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if option_group_description != null then option_group_description]: option_group_description,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_db_option_group.%s.arn}' % rname,
    },
    // aws_eks_cluster - https://www.terraform.io/docs/providers/aws/r/eks_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/eks_cluster.html#name.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/eks_cluster.html#role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/eks_cluster.html#id.
    // @param enabled_cluster_log_types (optional) https://www.terraform.io/docs/providers/aws/r/eks_cluster.html#enabled_cluster_log_types.
    // @param version (optional) https://www.terraform.io/docs/providers/aws/r/eks_cluster.html#version.
    aws_eks_cluster(rname, name, role_arn, id=null, enabled_cluster_log_types=null, version=null):: {
      name: name,
      role_arn: role_arn,
      [if id != null then id]: id,
      [if enabled_cluster_log_types != null then enabled_cluster_log_types]: enabled_cluster_log_types,
      [if version != null then version]: version,
      rname:: rname,
      platform_version:: '${aws_eks_cluster.%s.platform_version}' % rname,
      arn:: '${aws_eks_cluster.%s.arn}' % rname,
      certificate_authority:: '${aws_eks_cluster.%s.certificate_authority}' % rname,
      created_at:: '${aws_eks_cluster.%s.created_at}' % rname,
      endpoint:: '${aws_eks_cluster.%s.endpoint}' % rname,
      status:: '${aws_eks_cluster.%s.status}' % rname,
    },
    // aws_iot_thing_type - https://www.terraform.io/docs/providers/aws/r/iot_thing_type.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iot_thing_type.html#name.
    // @param deprecated (optional) https://www.terraform.io/docs/providers/aws/r/iot_thing_type.html#deprecated.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_thing_type.html#id.
    aws_iot_thing_type(rname, name, deprecated=null, id=null):: {
      name: name,
      [if deprecated != null then deprecated]: deprecated,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_iot_thing_type.%s.arn}' % rname,
    },
    // aws_service_discovery_public_dns_namespace - https://www.terraform.io/docs/providers/aws/r/service_discovery_public_dns_namespace.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/service_discovery_public_dns_namespace.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_public_dns_namespace.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_public_dns_namespace.html#id.
    aws_service_discovery_public_dns_namespace(rname, name, description=null, id=null):: {
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      hosted_zone:: '${aws_service_discovery_public_dns_namespace.%s.hosted_zone}' % rname,
      arn:: '${aws_service_discovery_public_dns_namespace.%s.arn}' % rname,
    },
    // aws_codecommit_repository - https://www.terraform.io/docs/providers/aws/r/codecommit_repository.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param repository_name (required) https://www.terraform.io/docs/providers/aws/r/codecommit_repository.html#repository_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/codecommit_repository.html#tags.
    // @param default_branch (optional) https://www.terraform.io/docs/providers/aws/r/codecommit_repository.html#default_branch.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/codecommit_repository.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codecommit_repository.html#id.
    aws_codecommit_repository(rname, repository_name, tags=null, default_branch=null, description=null, id=null):: {
      repository_name: repository_name,
      [if tags != null then tags]: tags,
      [if default_branch != null then default_branch]: default_branch,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      repository_id:: '${aws_codecommit_repository.%s.repository_id}' % rname,
      clone_url_http:: '${aws_codecommit_repository.%s.clone_url_http}' % rname,
      clone_url_ssh:: '${aws_codecommit_repository.%s.clone_url_ssh}' % rname,
      arn:: '${aws_codecommit_repository.%s.arn}' % rname,
    },
    // aws_sns_topic - https://www.terraform.io/docs/providers/aws/r/sns_topic.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#id.
    // @param kms_master_key_id (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#kms_master_key_id.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#name_prefix.
    // @param sqs_failure_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#sqs_failure_feedback_role_arn.
    // @param application_success_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#application_success_feedback_role_arn.
    // @param delivery_policy (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#delivery_policy.
    // @param display_name (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#display_name.
    // @param http_failure_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#http_failure_feedback_role_arn.
    // @param sqs_success_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#sqs_success_feedback_role_arn.
    // @param sqs_success_feedback_sample_rate (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#sqs_success_feedback_sample_rate.
    // @param application_failure_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#application_failure_feedback_role_arn.
    // @param http_success_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#http_success_feedback_role_arn.
    // @param http_success_feedback_sample_rate (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#http_success_feedback_sample_rate.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#name.
    // @param lambda_success_feedback_sample_rate (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#lambda_success_feedback_sample_rate.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#tags.
    // @param application_success_feedback_sample_rate (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#application_success_feedback_sample_rate.
    // @param lambda_failure_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#lambda_failure_feedback_role_arn.
    // @param lambda_success_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#lambda_success_feedback_role_arn.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#policy.
    aws_sns_topic(rname, id=null, kms_master_key_id=null, name_prefix=null, sqs_failure_feedback_role_arn=null, application_success_feedback_role_arn=null, delivery_policy=null, display_name=null, http_failure_feedback_role_arn=null, sqs_success_feedback_role_arn=null, sqs_success_feedback_sample_rate=null, application_failure_feedback_role_arn=null, http_success_feedback_role_arn=null, http_success_feedback_sample_rate=null, name=null, lambda_success_feedback_sample_rate=null, tags=null, application_success_feedback_sample_rate=null, lambda_failure_feedback_role_arn=null, lambda_success_feedback_role_arn=null, policy=null):: {
      [if id != null then id]: id,
      [if kms_master_key_id != null then kms_master_key_id]: kms_master_key_id,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if sqs_failure_feedback_role_arn != null then sqs_failure_feedback_role_arn]: sqs_failure_feedback_role_arn,
      [if application_success_feedback_role_arn != null then application_success_feedback_role_arn]: application_success_feedback_role_arn,
      [if delivery_policy != null then delivery_policy]: delivery_policy,
      [if display_name != null then display_name]: display_name,
      [if http_failure_feedback_role_arn != null then http_failure_feedback_role_arn]: http_failure_feedback_role_arn,
      [if sqs_success_feedback_role_arn != null then sqs_success_feedback_role_arn]: sqs_success_feedback_role_arn,
      [if sqs_success_feedback_sample_rate != null then sqs_success_feedback_sample_rate]: sqs_success_feedback_sample_rate,
      [if application_failure_feedback_role_arn != null then application_failure_feedback_role_arn]: application_failure_feedback_role_arn,
      [if http_success_feedback_role_arn != null then http_success_feedback_role_arn]: http_success_feedback_role_arn,
      [if http_success_feedback_sample_rate != null then http_success_feedback_sample_rate]: http_success_feedback_sample_rate,
      [if name != null then name]: name,
      [if lambda_success_feedback_sample_rate != null then lambda_success_feedback_sample_rate]: lambda_success_feedback_sample_rate,
      [if tags != null then tags]: tags,
      [if application_success_feedback_sample_rate != null then application_success_feedback_sample_rate]: application_success_feedback_sample_rate,
      [if lambda_failure_feedback_role_arn != null then lambda_failure_feedback_role_arn]: lambda_failure_feedback_role_arn,
      [if lambda_success_feedback_role_arn != null then lambda_success_feedback_role_arn]: lambda_success_feedback_role_arn,
      [if policy != null then policy]: policy,
      rname:: rname,
      arn:: '${aws_sns_topic.%s.arn}' % rname,
    },
    // aws_vpn_gateway_attachment - https://www.terraform.io/docs/providers/aws/r/vpn_gateway_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/vpn_gateway_attachment.html#vpc_id.
    // @param vpn_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/vpn_gateway_attachment.html#vpn_gateway_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway_attachment.html#id.
    aws_vpn_gateway_attachment(rname, vpc_id, vpn_gateway_id, id=null):: {
      vpc_id: vpc_id,
      vpn_gateway_id: vpn_gateway_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_default_route_table - https://www.terraform.io/docs/providers/aws/r/default_route_table.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param default_route_table_id (required) https://www.terraform.io/docs/providers/aws/r/default_route_table.html#default_route_table_id.
    // @param propagating_vgws (optional) https://www.terraform.io/docs/providers/aws/r/default_route_table.html#propagating_vgws.
    // @param route (optional) https://www.terraform.io/docs/providers/aws/r/default_route_table.html#route.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/default_route_table.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/default_route_table.html#id.
    aws_default_route_table(rname, default_route_table_id, propagating_vgws=null, route=null, tags=null, id=null):: {
      default_route_table_id: default_route_table_id,
      [if propagating_vgws != null then propagating_vgws]: propagating_vgws,
      [if route != null then route]: route,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      owner_id:: '${aws_default_route_table.%s.owner_id}' % rname,
      vpc_id:: '${aws_default_route_table.%s.vpc_id}' % rname,
    },
    // aws_wafregional_rate_based_rule - https://www.terraform.io/docs/providers/aws/r/wafregional_rate_based_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rate_key (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rate_based_rule.html#rate_key.
    // @param rate_limit (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rate_based_rule.html#rate_limit.
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rate_based_rule.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rate_based_rule.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_rate_based_rule.html#id.
    aws_wafregional_rate_based_rule(rname, rate_key, rate_limit, metric_name, name, id=null):: {
      rate_key: rate_key,
      rate_limit: rate_limit,
      metric_name: metric_name,
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_transfer_user - https://www.terraform.io/docs/providers/aws/r/transfer_user.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param role (required) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#role.
    // @param server_id (required) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#server_id.
    // @param user_name (required) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#user_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#tags.
    // @param home_directory (optional) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#home_directory.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#id.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#policy.
    aws_transfer_user(rname, role, server_id, user_name, tags=null, home_directory=null, id=null, policy=null):: {
      role: role,
      server_id: server_id,
      user_name: user_name,
      [if tags != null then tags]: tags,
      [if home_directory != null then home_directory]: home_directory,
      [if id != null then id]: id,
      [if policy != null then policy]: policy,
      rname:: rname,
      arn:: '${aws_transfer_user.%s.arn}' % rname,
    },
    // aws_api_gateway_integration - https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#resource_id.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#type.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#rest_api_id.
    // @param http_method (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#http_method.
    // @param passthrough_behavior (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#passthrough_behavior.
    // @param request_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#request_parameters.
    // @param cache_key_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#cache_key_parameters.
    // @param credentials (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#credentials.
    // @param integration_http_method (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#integration_http_method.
    // @param request_templates (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#request_templates.
    // @param uri (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#uri.
    // @param cache_namespace (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#cache_namespace.
    // @param connection_id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#connection_id.
    // @param connection_type (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#connection_type.
    // @param content_handling (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#content_handling.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#id.
    // @param request_parameters_in_json (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#request_parameters_in_json.
    // @param timeout_milliseconds (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#timeout_milliseconds.
    aws_api_gateway_integration(rname, resource_id, type, rest_api_id, http_method, passthrough_behavior=null, request_parameters=null, cache_key_parameters=null, credentials=null, integration_http_method=null, request_templates=null, uri=null, cache_namespace=null, connection_id=null, connection_type=null, content_handling=null, id=null, request_parameters_in_json=null, timeout_milliseconds=null):: {
      resource_id: resource_id,
      type: type,
      rest_api_id: rest_api_id,
      http_method: http_method,
      [if passthrough_behavior != null then passthrough_behavior]: passthrough_behavior,
      [if request_parameters != null then request_parameters]: request_parameters,
      [if cache_key_parameters != null then cache_key_parameters]: cache_key_parameters,
      [if credentials != null then credentials]: credentials,
      [if integration_http_method != null then integration_http_method]: integration_http_method,
      [if request_templates != null then request_templates]: request_templates,
      [if uri != null then uri]: uri,
      [if cache_namespace != null then cache_namespace]: cache_namespace,
      [if connection_id != null then connection_id]: connection_id,
      [if connection_type != null then connection_type]: connection_type,
      [if content_handling != null then content_handling]: content_handling,
      [if id != null then id]: id,
      [if request_parameters_in_json != null then request_parameters_in_json]: request_parameters_in_json,
      [if timeout_milliseconds != null then timeout_milliseconds]: timeout_milliseconds,
      rname:: rname,
    },
    // aws_opsworks_mysql_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#stack_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#id.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#install_updates_on_boot.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#instance_shutdown_timeout.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#name.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#auto_healing.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_configure_recipes.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_deploy_recipes.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#elastic_load_balancer.
    // @param root_password_on_all_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#root_password_on_all_instances.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#use_ebs_optimized_instances.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#system_packages.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#auto_assign_public_ips.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_instance_profile_arn.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_undeploy_recipes.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#drain_elb_on_shutdown.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_security_group_ids.
    // @param root_password (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#root_password.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#auto_assign_elastic_ips.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_json.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_setup_recipes.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_shutdown_recipes.
    aws_opsworks_mysql_layer(rname, stack_id, id=null, install_updates_on_boot=null, instance_shutdown_timeout=null, name=null, auto_healing=null, custom_configure_recipes=null, custom_deploy_recipes=null, elastic_load_balancer=null, root_password_on_all_instances=null, use_ebs_optimized_instances=null, system_packages=null, auto_assign_public_ips=null, custom_instance_profile_arn=null, custom_undeploy_recipes=null, drain_elb_on_shutdown=null, custom_security_group_ids=null, root_password=null, auto_assign_elastic_ips=null, custom_json=null, custom_setup_recipes=null, custom_shutdown_recipes=null):: {
      stack_id: stack_id,
      [if id != null then id]: id,
      [if install_updates_on_boot != null then install_updates_on_boot]: install_updates_on_boot,
      [if instance_shutdown_timeout != null then instance_shutdown_timeout]: instance_shutdown_timeout,
      [if name != null then name]: name,
      [if auto_healing != null then auto_healing]: auto_healing,
      [if custom_configure_recipes != null then custom_configure_recipes]: custom_configure_recipes,
      [if custom_deploy_recipes != null then custom_deploy_recipes]: custom_deploy_recipes,
      [if elastic_load_balancer != null then elastic_load_balancer]: elastic_load_balancer,
      [if root_password_on_all_instances != null then root_password_on_all_instances]: root_password_on_all_instances,
      [if use_ebs_optimized_instances != null then use_ebs_optimized_instances]: use_ebs_optimized_instances,
      [if system_packages != null then system_packages]: system_packages,
      [if auto_assign_public_ips != null then auto_assign_public_ips]: auto_assign_public_ips,
      [if custom_instance_profile_arn != null then custom_instance_profile_arn]: custom_instance_profile_arn,
      [if custom_undeploy_recipes != null then custom_undeploy_recipes]: custom_undeploy_recipes,
      [if drain_elb_on_shutdown != null then drain_elb_on_shutdown]: drain_elb_on_shutdown,
      [if custom_security_group_ids != null then custom_security_group_ids]: custom_security_group_ids,
      [if root_password != null then root_password]: root_password,
      [if auto_assign_elastic_ips != null then auto_assign_elastic_ips]: auto_assign_elastic_ips,
      [if custom_json != null then custom_json]: custom_json,
      [if custom_setup_recipes != null then custom_setup_recipes]: custom_setup_recipes,
      [if custom_shutdown_recipes != null then custom_shutdown_recipes]: custom_shutdown_recipes,
      rname:: rname,
    },
    // aws_volume_attachment - https://www.terraform.io/docs/providers/aws/r/volume_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param volume_id (required) https://www.terraform.io/docs/providers/aws/r/volume_attachment.html#volume_id.
    // @param device_name (required) https://www.terraform.io/docs/providers/aws/r/volume_attachment.html#device_name.
    // @param instance_id (required) https://www.terraform.io/docs/providers/aws/r/volume_attachment.html#instance_id.
    // @param force_detach (optional) https://www.terraform.io/docs/providers/aws/r/volume_attachment.html#force_detach.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/volume_attachment.html#id.
    // @param skip_destroy (optional) https://www.terraform.io/docs/providers/aws/r/volume_attachment.html#skip_destroy.
    aws_volume_attachment(rname, volume_id, device_name, instance_id, force_detach=null, id=null, skip_destroy=null):: {
      volume_id: volume_id,
      device_name: device_name,
      instance_id: instance_id,
      [if force_detach != null then force_detach]: force_detach,
      [if id != null then id]: id,
      [if skip_destroy != null then skip_destroy]: skip_destroy,
      rname:: rname,
    },
    // aws_vpc_ipv4_cidr_block_association - https://www.terraform.io/docs/providers/aws/r/vpc_ipv4_cidr_block_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cidr_block (required) https://www.terraform.io/docs/providers/aws/r/vpc_ipv4_cidr_block_association.html#cidr_block.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_ipv4_cidr_block_association.html#vpc_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_ipv4_cidr_block_association.html#id.
    aws_vpc_ipv4_cidr_block_association(rname, cidr_block, vpc_id, id=null):: {
      cidr_block: cidr_block,
      vpc_id: vpc_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_api_gateway_deployment - https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html#rest_api_id.
    // @param stage_name (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html#stage_name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html#id.
    // @param stage_description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html#stage_description.
    // @param variables (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html#variables.
    aws_api_gateway_deployment(rname, rest_api_id, stage_name=null, description=null, id=null, stage_description=null, variables=null):: {
      rest_api_id: rest_api_id,
      [if stage_name != null then stage_name]: stage_name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if stage_description != null then stage_description]: stage_description,
      [if variables != null then variables]: variables,
      rname:: rname,
      created_date:: '${aws_api_gateway_deployment.%s.created_date}' % rname,
      execution_arn:: '${aws_api_gateway_deployment.%s.execution_arn}' % rname,
      invoke_url:: '${aws_api_gateway_deployment.%s.invoke_url}' % rname,
    },
    // aws_datasync_agent - https://www.terraform.io/docs/providers/aws/r/datasync_agent.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/datasync_agent.html#id.
    // @param ip_address (optional) https://www.terraform.io/docs/providers/aws/r/datasync_agent.html#ip_address.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/datasync_agent.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/datasync_agent.html#tags.
    // @param activation_key (optional) https://www.terraform.io/docs/providers/aws/r/datasync_agent.html#activation_key.
    aws_datasync_agent(rname, id=null, ip_address=null, name=null, tags=null, activation_key=null):: {
      [if id != null then id]: id,
      [if ip_address != null then ip_address]: ip_address,
      [if name != null then name]: name,
      [if tags != null then tags]: tags,
      [if activation_key != null then activation_key]: activation_key,
      rname:: rname,
      arn:: '${aws_datasync_agent.%s.arn}' % rname,
    },
    // aws_key_pair - https://www.terraform.io/docs/providers/aws/r/key_pair.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param public_key (required) https://www.terraform.io/docs/providers/aws/r/key_pair.html#public_key.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/key_pair.html#id.
    // @param key_name (optional) https://www.terraform.io/docs/providers/aws/r/key_pair.html#key_name.
    // @param key_name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/key_pair.html#key_name_prefix.
    aws_key_pair(rname, public_key, id=null, key_name=null, key_name_prefix=null):: {
      public_key: public_key,
      [if id != null then id]: id,
      [if key_name != null then key_name]: key_name,
      [if key_name_prefix != null then key_name_prefix]: key_name_prefix,
      rname:: rname,
      fingerprint:: '${aws_key_pair.%s.fingerprint}' % rname,
    },
    // aws_ami_from_instance - https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html#name.
    // @param source_instance_id (required) https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html#source_instance_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html#id.
    // @param snapshot_without_reboot (optional) https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html#snapshot_without_reboot.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html#tags.
    aws_ami_from_instance(rname, name, source_instance_id, description=null, id=null, snapshot_without_reboot=null, tags=null):: {
      name: name,
      source_instance_id: source_instance_id,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if snapshot_without_reboot != null then snapshot_without_reboot]: snapshot_without_reboot,
      [if tags != null then tags]: tags,
      rname:: rname,
      ena_support:: '${aws_ami_from_instance.%s.ena_support}' % rname,
      manage_ebs_snapshots:: '${aws_ami_from_instance.%s.manage_ebs_snapshots}' % rname,
      architecture:: '${aws_ami_from_instance.%s.architecture}' % rname,
      virtualization_type:: '${aws_ami_from_instance.%s.virtualization_type}' % rname,
      sriov_net_support:: '${aws_ami_from_instance.%s.sriov_net_support}' % rname,
      image_location:: '${aws_ami_from_instance.%s.image_location}' % rname,
      kernel_id:: '${aws_ami_from_instance.%s.kernel_id}' % rname,
      ramdisk_id:: '${aws_ami_from_instance.%s.ramdisk_id}' % rname,
      root_snapshot_id:: '${aws_ami_from_instance.%s.root_snapshot_id}' % rname,
      root_device_name:: '${aws_ami_from_instance.%s.root_device_name}' % rname,
    },
    // aws_eip - https://www.terraform.io/docs/providers/aws/r/eip.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param associate_with_private_ip (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#associate_with_private_ip.
    // @param instance (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#instance.
    // @param public_ipv4_pool (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#public_ipv4_pool.
    // @param vpc (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#vpc.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#id.
    // @param network_interface (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#network_interface.
    aws_eip(rname, associate_with_private_ip=null, instance=null, public_ipv4_pool=null, vpc=null, tags=null, id=null, network_interface=null):: {
      [if associate_with_private_ip != null then associate_with_private_ip]: associate_with_private_ip,
      [if instance != null then instance]: instance,
      [if public_ipv4_pool != null then public_ipv4_pool]: public_ipv4_pool,
      [if vpc != null then vpc]: vpc,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      [if network_interface != null then network_interface]: network_interface,
      rname:: rname,
      private_ip:: '${aws_eip.%s.private_ip}' % rname,
      association_id:: '${aws_eip.%s.association_id}' % rname,
      domain:: '${aws_eip.%s.domain}' % rname,
      allocation_id:: '${aws_eip.%s.allocation_id}' % rname,
      private_dns:: '${aws_eip.%s.private_dns}' % rname,
      public_dns:: '${aws_eip.%s.public_dns}' % rname,
      public_ip:: '${aws_eip.%s.public_ip}' % rname,
    },
    // aws_elastic_beanstalk_application - https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application.html#tags.
    aws_elastic_beanstalk_application(rname, name, description=null, id=null, tags=null):: {
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_elastic_beanstalk_application.%s.arn}' % rname,
    },
    // aws_lb_target_group - https://www.terraform.io/docs/providers/aws/r/lb_target_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param target_type (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#target_type.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#vpc_id.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#name_prefix.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#port.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#tags.
    // @param slow_start (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#slow_start.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#name.
    // @param protocol (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#protocol.
    // @param deregistration_delay (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#deregistration_delay.
    // @param lambda_multi_value_headers_enabled (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#lambda_multi_value_headers_enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#id.
    // @param proxy_protocol_v2 (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#proxy_protocol_v2.
    aws_lb_target_group(rname, target_type=null, vpc_id=null, name_prefix=null, port=null, tags=null, slow_start=null, name=null, protocol=null, deregistration_delay=null, lambda_multi_value_headers_enabled=null, id=null, proxy_protocol_v2=null):: {
      [if target_type != null then target_type]: target_type,
      [if vpc_id != null then vpc_id]: vpc_id,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if port != null then port]: port,
      [if tags != null then tags]: tags,
      [if slow_start != null then slow_start]: slow_start,
      [if name != null then name]: name,
      [if protocol != null then protocol]: protocol,
      [if deregistration_delay != null then deregistration_delay]: deregistration_delay,
      [if lambda_multi_value_headers_enabled != null then lambda_multi_value_headers_enabled]: lambda_multi_value_headers_enabled,
      [if id != null then id]: id,
      [if proxy_protocol_v2 != null then proxy_protocol_v2]: proxy_protocol_v2,
      rname:: rname,
      arn_suffix:: '${aws_lb_target_group.%s.arn_suffix}' % rname,
      arn:: '${aws_lb_target_group.%s.arn}' % rname,
    },
    // aws_codepipeline - https://www.terraform.io/docs/providers/aws/r/codepipeline.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/codepipeline.html#name.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/codepipeline.html#role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codepipeline.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/codepipeline.html#tags.
    aws_codepipeline(rname, name, role_arn, id=null, tags=null):: {
      name: name,
      role_arn: role_arn,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_codepipeline.%s.arn}' % rname,
    },
    // aws_codedeploy_deployment_group - https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param service_role_arn (required) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html#service_role_arn.
    // @param app_name (required) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html#app_name.
    // @param deployment_group_name (required) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html#deployment_group_name.
    // @param autoscaling_groups (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html#autoscaling_groups.
    // @param deployment_config_name (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html#deployment_config_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html#id.
    aws_codedeploy_deployment_group(rname, service_role_arn, app_name, deployment_group_name, autoscaling_groups=null, deployment_config_name=null, id=null):: {
      service_role_arn: service_role_arn,
      app_name: app_name,
      deployment_group_name: deployment_group_name,
      [if autoscaling_groups != null then autoscaling_groups]: autoscaling_groups,
      [if deployment_config_name != null then deployment_config_name]: deployment_config_name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_default_security_group - https://www.terraform.io/docs/providers/aws/r/default_security_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/default_security_group.html#tags.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/default_security_group.html#vpc_id.
    // @param egress (optional) https://www.terraform.io/docs/providers/aws/r/default_security_group.html#egress.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/default_security_group.html#id.
    // @param ingress (optional) https://www.terraform.io/docs/providers/aws/r/default_security_group.html#ingress.
    // @param revoke_rules_on_delete (optional) https://www.terraform.io/docs/providers/aws/r/default_security_group.html#revoke_rules_on_delete.
    aws_default_security_group(rname, tags=null, vpc_id=null, egress=null, id=null, ingress=null, revoke_rules_on_delete=null):: {
      [if tags != null then tags]: tags,
      [if vpc_id != null then vpc_id]: vpc_id,
      [if egress != null then egress]: egress,
      [if id != null then id]: id,
      [if ingress != null then ingress]: ingress,
      [if revoke_rules_on_delete != null then revoke_rules_on_delete]: revoke_rules_on_delete,
      rname:: rname,
      owner_id:: '${aws_default_security_group.%s.owner_id}' % rname,
      name:: '${aws_default_security_group.%s.name}' % rname,
      arn:: '${aws_default_security_group.%s.arn}' % rname,
    },
    // aws_default_vpc - https://www.terraform.io/docs/providers/aws/r/default_vpc.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc.html#tags.
    // @param enable_classiclink (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc.html#enable_classiclink.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc.html#id.
    // @param enable_classiclink_dns_support (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc.html#enable_classiclink_dns_support.
    // @param enable_dns_hostnames (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc.html#enable_dns_hostnames.
    // @param enable_dns_support (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc.html#enable_dns_support.
    aws_default_vpc(rname, tags=null, enable_classiclink=null, id=null, enable_classiclink_dns_support=null, enable_dns_hostnames=null, enable_dns_support=null):: {
      [if tags != null then tags]: tags,
      [if enable_classiclink != null then enable_classiclink]: enable_classiclink,
      [if id != null then id]: id,
      [if enable_classiclink_dns_support != null then enable_classiclink_dns_support]: enable_classiclink_dns_support,
      [if enable_dns_hostnames != null then enable_dns_hostnames]: enable_dns_hostnames,
      [if enable_dns_support != null then enable_dns_support]: enable_dns_support,
      rname:: rname,
      default_network_acl_id:: '${aws_default_vpc.%s.default_network_acl_id}' % rname,
      ipv6_cidr_block:: '${aws_default_vpc.%s.ipv6_cidr_block}' % rname,
      assign_generated_ipv6_cidr_block:: '${aws_default_vpc.%s.assign_generated_ipv6_cidr_block}' % rname,
      default_route_table_id:: '${aws_default_vpc.%s.default_route_table_id}' % rname,
      arn:: '${aws_default_vpc.%s.arn}' % rname,
      instance_tenancy:: '${aws_default_vpc.%s.instance_tenancy}' % rname,
      ipv6_association_id:: '${aws_default_vpc.%s.ipv6_association_id}' % rname,
      main_route_table_id:: '${aws_default_vpc.%s.main_route_table_id}' % rname,
      cidr_block:: '${aws_default_vpc.%s.cidr_block}' % rname,
      default_security_group_id:: '${aws_default_vpc.%s.default_security_group_id}' % rname,
      dhcp_options_id:: '${aws_default_vpc.%s.dhcp_options_id}' % rname,
      owner_id:: '${aws_default_vpc.%s.owner_id}' % rname,
    },
    // aws_route53_zone - https://www.terraform.io/docs/providers/aws/r/route53_zone.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#name.
    // @param vpc_region (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#vpc_region.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#tags.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#vpc_id.
    // @param comment (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#comment.
    // @param delegation_set_id (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#delegation_set_id.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#force_destroy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#id.
    aws_route53_zone(rname, name, vpc_region=null, tags=null, vpc_id=null, comment=null, delegation_set_id=null, force_destroy=null, id=null):: {
      name: name,
      [if vpc_region != null then vpc_region]: vpc_region,
      [if tags != null then tags]: tags,
      [if vpc_id != null then vpc_id]: vpc_id,
      [if comment != null then comment]: comment,
      [if delegation_set_id != null then delegation_set_id]: delegation_set_id,
      [if force_destroy != null then force_destroy]: force_destroy,
      [if id != null then id]: id,
      rname:: rname,
      zone_id:: '${aws_route53_zone.%s.zone_id}' % rname,
      name_servers:: '${aws_route53_zone.%s.name_servers}' % rname,
    },
    // aws_worklink_fleet - https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html#name.
    // @param device_ca_certificate (optional) https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html#device_ca_certificate.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html#id.
    // @param optimize_for_end_user_location (optional) https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html#optimize_for_end_user_location.
    // @param audit_stream_arn (optional) https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html#audit_stream_arn.
    // @param display_name (optional) https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html#display_name.
    aws_worklink_fleet(rname, name, device_ca_certificate=null, id=null, optimize_for_end_user_location=null, audit_stream_arn=null, display_name=null):: {
      name: name,
      [if device_ca_certificate != null then device_ca_certificate]: device_ca_certificate,
      [if id != null then id]: id,
      [if optimize_for_end_user_location != null then optimize_for_end_user_location]: optimize_for_end_user_location,
      [if audit_stream_arn != null then audit_stream_arn]: audit_stream_arn,
      [if display_name != null then display_name]: display_name,
      rname:: rname,
      company_code:: '${aws_worklink_fleet.%s.company_code}' % rname,
      last_updated_time:: '${aws_worklink_fleet.%s.last_updated_time}' % rname,
      arn:: '${aws_worklink_fleet.%s.arn}' % rname,
      created_time:: '${aws_worklink_fleet.%s.created_time}' % rname,
    },
    // aws_api_gateway_method_response - https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#rest_api_id.
    // @param status_code (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#status_code.
    // @param http_method (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#http_method.
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#resource_id.
    // @param response_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#response_parameters.
    // @param response_parameters_in_json (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#response_parameters_in_json.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#id.
    // @param response_models (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#response_models.
    aws_api_gateway_method_response(rname, rest_api_id, status_code, http_method, resource_id, response_parameters=null, response_parameters_in_json=null, id=null, response_models=null):: {
      rest_api_id: rest_api_id,
      status_code: status_code,
      http_method: http_method,
      resource_id: resource_id,
      [if response_parameters != null then response_parameters]: response_parameters,
      [if response_parameters_in_json != null then response_parameters_in_json]: response_parameters_in_json,
      [if id != null then id]: id,
      [if response_models != null then response_models]: response_models,
      rname:: rname,
    },
    // aws_cloudwatch_log_stream - https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_stream.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param log_group_name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_stream.html#log_group_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_stream.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_stream.html#id.
    aws_cloudwatch_log_stream(rname, log_group_name, name, id=null):: {
      log_group_name: log_group_name,
      name: name,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_cloudwatch_log_stream.%s.arn}' % rname,
    },
    // aws_ebs_default_kms_key - https://www.terraform.io/docs/providers/aws/r/ebs_default_kms_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param key_arn (required) https://www.terraform.io/docs/providers/aws/r/ebs_default_kms_key.html#key_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_default_kms_key.html#id.
    aws_ebs_default_kms_key(rname, key_arn, id=null):: {
      key_arn: key_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_iam_service_linked_role - https://www.terraform.io/docs/providers/aws/r/iam_service_linked_role.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param aws_service_name (required) https://www.terraform.io/docs/providers/aws/r/iam_service_linked_role.html#aws_service_name.
    // @param custom_suffix (optional) https://www.terraform.io/docs/providers/aws/r/iam_service_linked_role.html#custom_suffix.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/iam_service_linked_role.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_service_linked_role.html#id.
    aws_iam_service_linked_role(rname, aws_service_name, custom_suffix=null, description=null, id=null):: {
      aws_service_name: aws_service_name,
      [if custom_suffix != null then custom_suffix]: custom_suffix,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      name:: '${aws_iam_service_linked_role.%s.name}' % rname,
      path:: '${aws_iam_service_linked_role.%s.path}' % rname,
      unique_id:: '${aws_iam_service_linked_role.%s.unique_id}' % rname,
      arn:: '${aws_iam_service_linked_role.%s.arn}' % rname,
      create_date:: '${aws_iam_service_linked_role.%s.create_date}' % rname,
    },
    // aws_pinpoint_apns_voip_sandbox_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#application_id.
    // @param token_key_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#token_key_id.
    // @param bundle_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#bundle_id.
    // @param team_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#team_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#id.
    // @param private_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#private_key.
    // @param token_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#token_key.
    // @param certificate (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#certificate.
    // @param default_authentication_method (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#default_authentication_method.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#enabled.
    aws_pinpoint_apns_voip_sandbox_channel(rname, application_id, token_key_id=null, bundle_id=null, team_id=null, id=null, private_key=null, token_key=null, certificate=null, default_authentication_method=null, enabled=null):: {
      application_id: application_id,
      [if token_key_id != null then token_key_id]: token_key_id,
      [if bundle_id != null then bundle_id]: bundle_id,
      [if team_id != null then team_id]: team_id,
      [if id != null then id]: id,
      [if private_key != null then private_key]: private_key,
      [if token_key != null then token_key]: token_key,
      [if certificate != null then certificate]: certificate,
      [if default_authentication_method != null then default_authentication_method]: default_authentication_method,
      [if enabled != null then enabled]: enabled,
      rname:: rname,
    },
    // aws_api_gateway_client_certificate - https://www.terraform.io/docs/providers/aws/r/api_gateway_client_certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_client_certificate.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_client_certificate.html#id.
    aws_api_gateway_client_certificate(rname, description=null, id=null):: {
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      pem_encoded_certificate:: '${aws_api_gateway_client_certificate.%s.pem_encoded_certificate}' % rname,
      created_date:: '${aws_api_gateway_client_certificate.%s.created_date}' % rname,
      expiration_date:: '${aws_api_gateway_client_certificate.%s.expiration_date}' % rname,
    },
    // aws_ses_domain_mail_from - https://www.terraform.io/docs/providers/aws/r/ses_domain_mail_from.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain (required) https://www.terraform.io/docs/providers/aws/r/ses_domain_mail_from.html#domain.
    // @param mail_from_domain (required) https://www.terraform.io/docs/providers/aws/r/ses_domain_mail_from.html#mail_from_domain.
    // @param behavior_on_mx_failure (optional) https://www.terraform.io/docs/providers/aws/r/ses_domain_mail_from.html#behavior_on_mx_failure.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_domain_mail_from.html#id.
    aws_ses_domain_mail_from(rname, domain, mail_from_domain, behavior_on_mx_failure=null, id=null):: {
      domain: domain,
      mail_from_domain: mail_from_domain,
      [if behavior_on_mx_failure != null then behavior_on_mx_failure]: behavior_on_mx_failure,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_iam_user_login_profile - https://www.terraform.io/docs/providers/aws/r/iam_user_login_profile.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param pgp_key (required) https://www.terraform.io/docs/providers/aws/r/iam_user_login_profile.html#pgp_key.
    // @param user (required) https://www.terraform.io/docs/providers/aws/r/iam_user_login_profile.html#user.
    // @param password_reset_required (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_login_profile.html#password_reset_required.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_login_profile.html#id.
    // @param password_length (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_login_profile.html#password_length.
    aws_iam_user_login_profile(rname, pgp_key, user, password_reset_required=null, id=null, password_length=null):: {
      pgp_key: pgp_key,
      user: user,
      [if password_reset_required != null then password_reset_required]: password_reset_required,
      [if id != null then id]: id,
      [if password_length != null then password_length]: password_length,
      rname:: rname,
      encrypted_password:: '${aws_iam_user_login_profile.%s.encrypted_password}' % rname,
      key_fingerprint:: '${aws_iam_user_login_profile.%s.key_fingerprint}' % rname,
    },
    // aws_datasync_location_nfs - https://www.terraform.io/docs/providers/aws/r/datasync_location_nfs.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param server_hostname (required) https://www.terraform.io/docs/providers/aws/r/datasync_location_nfs.html#server_hostname.
    // @param subdirectory (required) https://www.terraform.io/docs/providers/aws/r/datasync_location_nfs.html#subdirectory.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_nfs.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_nfs.html#tags.
    aws_datasync_location_nfs(rname, server_hostname, subdirectory, id=null, tags=null):: {
      server_hostname: server_hostname,
      subdirectory: subdirectory,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_datasync_location_nfs.%s.arn}' % rname,
      uri:: '${aws_datasync_location_nfs.%s.uri}' % rname,
    },
    // aws_licensemanager_association - https://www.terraform.io/docs/providers/aws/r/licensemanager_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param license_configuration_arn (required) https://www.terraform.io/docs/providers/aws/r/licensemanager_association.html#license_configuration_arn.
    // @param resource_arn (required) https://www.terraform.io/docs/providers/aws/r/licensemanager_association.html#resource_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_association.html#id.
    aws_licensemanager_association(rname, license_configuration_arn, resource_arn, id=null):: {
      license_configuration_arn: license_configuration_arn,
      resource_arn: resource_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_service_discovery_http_namespace - https://www.terraform.io/docs/providers/aws/r/service_discovery_http_namespace.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/service_discovery_http_namespace.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_http_namespace.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_http_namespace.html#id.
    aws_service_discovery_http_namespace(rname, name, description=null, id=null):: {
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_service_discovery_http_namespace.%s.arn}' % rname,
    },
    // aws_api_gateway_rest_api - https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#id.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#policy.
    // @param api_key_source (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#api_key_source.
    // @param body (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#body.
    // @param minimum_compression_size (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#minimum_compression_size.
    // @param binary_media_types (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#binary_media_types.
    aws_api_gateway_rest_api(rname, name, description=null, id=null, policy=null, api_key_source=null, body=null, minimum_compression_size=null, binary_media_types=null):: {
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if policy != null then policy]: policy,
      [if api_key_source != null then api_key_source]: api_key_source,
      [if body != null then body]: body,
      [if minimum_compression_size != null then minimum_compression_size]: minimum_compression_size,
      [if binary_media_types != null then binary_media_types]: binary_media_types,
      rname:: rname,
      root_resource_id:: '${aws_api_gateway_rest_api.%s.root_resource_id}' % rname,
      execution_arn:: '${aws_api_gateway_rest_api.%s.execution_arn}' % rname,
      created_date:: '${aws_api_gateway_rest_api.%s.created_date}' % rname,
    },
    // aws_vpc_dhcp_options_association - https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param dhcp_options_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options_association.html#dhcp_options_id.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options_association.html#vpc_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options_association.html#id.
    aws_vpc_dhcp_options_association(rname, dhcp_options_id, vpc_id, id=null):: {
      dhcp_options_id: dhcp_options_id,
      vpc_id: vpc_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_vpc_endpoint_subnet_association - https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_subnet_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_subnet_association.html#subnet_id.
    // @param vpc_endpoint_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_subnet_association.html#vpc_endpoint_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_subnet_association.html#id.
    aws_vpc_endpoint_subnet_association(rname, subnet_id, vpc_endpoint_id, id=null):: {
      subnet_id: subnet_id,
      vpc_endpoint_id: vpc_endpoint_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_redshift_event_subscription - https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param sns_topic_arn (required) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#sns_topic_arn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#name.
    // @param severity (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#severity.
    // @param source_ids (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#source_ids.
    // @param source_type (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#source_type.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#enabled.
    // @param event_categories (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#event_categories.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#tags.
    aws_redshift_event_subscription(rname, sns_topic_arn, name, severity=null, source_ids=null, source_type=null, enabled=null, event_categories=null, id=null, tags=null):: {
      sns_topic_arn: sns_topic_arn,
      name: name,
      [if severity != null then severity]: severity,
      [if source_ids != null then source_ids]: source_ids,
      [if source_type != null then source_type]: source_type,
      [if enabled != null then enabled]: enabled,
      [if event_categories != null then event_categories]: event_categories,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_redshift_event_subscription.%s.arn}' % rname,
      customer_aws_id:: '${aws_redshift_event_subscription.%s.customer_aws_id}' % rname,
      status:: '${aws_redshift_event_subscription.%s.status}' % rname,
    },
    // aws_ec2_transit_gateway_route_table - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param transit_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table.html#transit_gateway_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table.html#tags.
    aws_ec2_transit_gateway_route_table(rname, transit_gateway_id, id=null, tags=null):: {
      transit_gateway_id: transit_gateway_id,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      default_association_route_table:: '${aws_ec2_transit_gateway_route_table.%s.default_association_route_table}' % rname,
      default_propagation_route_table:: '${aws_ec2_transit_gateway_route_table.%s.default_propagation_route_table}' % rname,
    },
    // aws_appmesh_virtual_router - https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_router.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param mesh_name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_router.html#mesh_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_router.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_router.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_router.html#id.
    aws_appmesh_virtual_router(rname, mesh_name, name, tags=null, id=null):: {
      mesh_name: mesh_name,
      name: name,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      last_updated_date:: '${aws_appmesh_virtual_router.%s.last_updated_date}' % rname,
      arn:: '${aws_appmesh_virtual_router.%s.arn}' % rname,
      created_date:: '${aws_appmesh_virtual_router.%s.created_date}' % rname,
    },
    // aws_elastic_beanstalk_application_version - https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#application.
    // @param key (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#key.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#name.
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#bucket.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#id.
    // @param force_delete (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#force_delete.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#description.
    aws_elastic_beanstalk_application_version(rname, application, key, name, bucket, id=null, force_delete=null, tags=null, description=null):: {
      application: application,
      key: key,
      name: name,
      bucket: bucket,
      [if id != null then id]: id,
      [if force_delete != null then force_delete]: force_delete,
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      rname:: rname,
      arn:: '${aws_elastic_beanstalk_application_version.%s.arn}' % rname,
    },
    // aws_servicecatalog_portfolio - https://www.terraform.io/docs/providers/aws/r/servicecatalog_portfolio.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/servicecatalog_portfolio.html#name.
    // @param provider_name (optional) https://www.terraform.io/docs/providers/aws/r/servicecatalog_portfolio.html#provider_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/servicecatalog_portfolio.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/servicecatalog_portfolio.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/servicecatalog_portfolio.html#id.
    aws_servicecatalog_portfolio(rname, name, provider_name=null, tags=null, description=null, id=null):: {
      name: name,
      [if provider_name != null then provider_name]: provider_name,
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_servicecatalog_portfolio.%s.arn}' % rname,
      created_time:: '${aws_servicecatalog_portfolio.%s.created_time}' % rname,
    },
    // aws_api_gateway_request_validator - https://www.terraform.io/docs/providers/aws/r/api_gateway_request_validator.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_request_validator.html#name.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_request_validator.html#rest_api_id.
    // @param validate_request_body (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_request_validator.html#validate_request_body.
    // @param validate_request_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_request_validator.html#validate_request_parameters.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_request_validator.html#id.
    aws_api_gateway_request_validator(rname, name, rest_api_id, validate_request_body=null, validate_request_parameters=null, id=null):: {
      name: name,
      rest_api_id: rest_api_id,
      [if validate_request_body != null then validate_request_body]: validate_request_body,
      [if validate_request_parameters != null then validate_request_parameters]: validate_request_parameters,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_cognito_resource_server - https://www.terraform.io/docs/providers/aws/r/cognito_resource_server.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param identifier (required) https://www.terraform.io/docs/providers/aws/r/cognito_resource_server.html#identifier.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cognito_resource_server.html#name.
    // @param user_pool_id (required) https://www.terraform.io/docs/providers/aws/r/cognito_resource_server.html#user_pool_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_resource_server.html#id.
    aws_cognito_resource_server(rname, identifier, name, user_pool_id, id=null):: {
      identifier: identifier,
      name: name,
      user_pool_id: user_pool_id,
      [if id != null then id]: id,
      rname:: rname,
      scope_identifiers:: '${aws_cognito_resource_server.%s.scope_identifiers}' % rname,
    },
    // aws_sagemaker_notebook_instance - https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#name.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#role_arn.
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#instance_type.
    // @param lifecycle_config_name (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#lifecycle_config_name.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#security_groups.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#id.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#kms_key_id.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#subnet_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#tags.
    aws_sagemaker_notebook_instance(rname, name, role_arn, instance_type, lifecycle_config_name=null, security_groups=null, id=null, kms_key_id=null, subnet_id=null, tags=null):: {
      name: name,
      role_arn: role_arn,
      instance_type: instance_type,
      [if lifecycle_config_name != null then lifecycle_config_name]: lifecycle_config_name,
      [if security_groups != null then security_groups]: security_groups,
      [if id != null then id]: id,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if subnet_id != null then subnet_id]: subnet_id,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_sagemaker_notebook_instance.%s.arn}' % rname,
    },
    // aws_acm_certificate_validation - https://www.terraform.io/docs/providers/aws/r/acm_certificate_validation.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate_arn (required) https://www.terraform.io/docs/providers/aws/r/acm_certificate_validation.html#certificate_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate_validation.html#id.
    // @param validation_record_fqdns (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate_validation.html#validation_record_fqdns.
    aws_acm_certificate_validation(rname, certificate_arn, id=null, validation_record_fqdns=null):: {
      certificate_arn: certificate_arn,
      [if id != null then id]: id,
      [if validation_record_fqdns != null then validation_record_fqdns]: validation_record_fqdns,
      rname:: rname,
    },
    // aws_iam_group_membership - https://www.terraform.io/docs/providers/aws/r/iam_group_membership.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iam_group_membership.html#name.
    // @param users (required) https://www.terraform.io/docs/providers/aws/r/iam_group_membership.html#users.
    // @param group (required) https://www.terraform.io/docs/providers/aws/r/iam_group_membership.html#group.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_group_membership.html#id.
    aws_iam_group_membership(rname, name, users, group, id=null):: {
      name: name,
      users: users,
      group: group,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_load_balancer_listener_policy - https://www.terraform.io/docs/providers/aws/r/load_balancer_listener_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param load_balancer_name (required) https://www.terraform.io/docs/providers/aws/r/load_balancer_listener_policy.html#load_balancer_name.
    // @param load_balancer_port (required) https://www.terraform.io/docs/providers/aws/r/load_balancer_listener_policy.html#load_balancer_port.
    // @param policy_names (optional) https://www.terraform.io/docs/providers/aws/r/load_balancer_listener_policy.html#policy_names.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/load_balancer_listener_policy.html#id.
    aws_load_balancer_listener_policy(rname, load_balancer_name, load_balancer_port, policy_names=null, id=null):: {
      load_balancer_name: load_balancer_name,
      load_balancer_port: load_balancer_port,
      [if policy_names != null then policy_names]: policy_names,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_vpn_connection - https://www.terraform.io/docs/providers/aws/r/vpn_connection.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param customer_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#customer_gateway_id.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#id.
    // @param transit_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#transit_gateway_id.
    // @param tunnel1_preshared_key (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#tunnel1_preshared_key.
    // @param tunnel2_inside_cidr (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#tunnel2_inside_cidr.
    // @param tunnel2_preshared_key (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#tunnel2_preshared_key.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#tags.
    // @param tunnel1_inside_cidr (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#tunnel1_inside_cidr.
    // @param vpn_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#vpn_gateway_id.
    // @param static_routes_only (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#static_routes_only.
    aws_vpn_connection(rname, customer_gateway_id, type, id=null, transit_gateway_id=null, tunnel1_preshared_key=null, tunnel2_inside_cidr=null, tunnel2_preshared_key=null, tags=null, tunnel1_inside_cidr=null, vpn_gateway_id=null, static_routes_only=null):: {
      customer_gateway_id: customer_gateway_id,
      type: type,
      [if id != null then id]: id,
      [if transit_gateway_id != null then transit_gateway_id]: transit_gateway_id,
      [if tunnel1_preshared_key != null then tunnel1_preshared_key]: tunnel1_preshared_key,
      [if tunnel2_inside_cidr != null then tunnel2_inside_cidr]: tunnel2_inside_cidr,
      [if tunnel2_preshared_key != null then tunnel2_preshared_key]: tunnel2_preshared_key,
      [if tags != null then tags]: tags,
      [if tunnel1_inside_cidr != null then tunnel1_inside_cidr]: tunnel1_inside_cidr,
      [if vpn_gateway_id != null then vpn_gateway_id]: vpn_gateway_id,
      [if static_routes_only != null then static_routes_only]: static_routes_only,
      rname:: rname,
      routes:: '${aws_vpn_connection.%s.routes}' % rname,
      tunnel2_address:: '${aws_vpn_connection.%s.tunnel2_address}' % rname,
      tunnel2_bgp_asn:: '${aws_vpn_connection.%s.tunnel2_bgp_asn}' % rname,
      customer_gateway_configuration:: '${aws_vpn_connection.%s.customer_gateway_configuration}' % rname,
      tunnel1_bgp_holdtime:: '${aws_vpn_connection.%s.tunnel1_bgp_holdtime}' % rname,
      tunnel1_cgw_inside_address:: '${aws_vpn_connection.%s.tunnel1_cgw_inside_address}' % rname,
      tunnel2_cgw_inside_address:: '${aws_vpn_connection.%s.tunnel2_cgw_inside_address}' % rname,
      tunnel1_address:: '${aws_vpn_connection.%s.tunnel1_address}' % rname,
      tunnel1_bgp_asn:: '${aws_vpn_connection.%s.tunnel1_bgp_asn}' % rname,
      tunnel1_vgw_inside_address:: '${aws_vpn_connection.%s.tunnel1_vgw_inside_address}' % rname,
      tunnel2_vgw_inside_address:: '${aws_vpn_connection.%s.tunnel2_vgw_inside_address}' % rname,
      transit_gateway_attachment_id:: '${aws_vpn_connection.%s.transit_gateway_attachment_id}' % rname,
      tunnel2_bgp_holdtime:: '${aws_vpn_connection.%s.tunnel2_bgp_holdtime}' % rname,
      vgw_telemetry:: '${aws_vpn_connection.%s.vgw_telemetry}' % rname,
    },
    // aws_appsync_api_key - https://www.terraform.io/docs/providers/aws/r/appsync_api_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param api_id (required) https://www.terraform.io/docs/providers/aws/r/appsync_api_key.html#api_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/appsync_api_key.html#description.
    // @param expires (optional) https://www.terraform.io/docs/providers/aws/r/appsync_api_key.html#expires.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appsync_api_key.html#id.
    aws_appsync_api_key(rname, api_id, description=null, expires=null, id=null):: {
      api_id: api_id,
      [if description != null then description]: description,
      [if expires != null then expires]: expires,
      [if id != null then id]: id,
      rname:: rname,
      key:: '${aws_appsync_api_key.%s.key}' % rname,
    },
    // aws_sagemaker_endpoint - https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param endpoint_config_name (required) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint.html#endpoint_config_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint.html#tags.
    aws_sagemaker_endpoint(rname, endpoint_config_name, id=null, name=null, tags=null):: {
      endpoint_config_name: endpoint_config_name,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_sagemaker_endpoint.%s.arn}' % rname,
    },
    // aws_iam_policy_attachment - https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html#name.
    // @param policy_arn (required) https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html#policy_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html#id.
    // @param roles (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html#roles.
    // @param users (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html#users.
    // @param groups (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html#groups.
    aws_iam_policy_attachment(rname, name, policy_arn, id=null, roles=null, users=null, groups=null):: {
      name: name,
      policy_arn: policy_arn,
      [if id != null then id]: id,
      [if roles != null then roles]: roles,
      [if users != null then users]: users,
      [if groups != null then groups]: groups,
      rname:: rname,
    },
    // aws_lb_listener - https://www.terraform.io/docs/providers/aws/r/lb_listener.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param load_balancer_arn (required) https://www.terraform.io/docs/providers/aws/r/lb_listener.html#load_balancer_arn.
    // @param port (required) https://www.terraform.io/docs/providers/aws/r/lb_listener.html#port.
    // @param certificate_arn (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener.html#certificate_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener.html#id.
    // @param protocol (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener.html#protocol.
    // @param ssl_policy (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener.html#ssl_policy.
    aws_lb_listener(rname, load_balancer_arn, port, certificate_arn=null, id=null, protocol=null, ssl_policy=null):: {
      load_balancer_arn: load_balancer_arn,
      port: port,
      [if certificate_arn != null then certificate_arn]: certificate_arn,
      [if id != null then id]: id,
      [if protocol != null then protocol]: protocol,
      [if ssl_policy != null then ssl_policy]: ssl_policy,
      rname:: rname,
      arn:: '${aws_lb_listener.%s.arn}' % rname,
    },
    // aws_s3_bucket_public_access_block - https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html#bucket.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html#id.
    // @param ignore_public_acls (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html#ignore_public_acls.
    // @param restrict_public_buckets (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html#restrict_public_buckets.
    // @param block_public_acls (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html#block_public_acls.
    // @param block_public_policy (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html#block_public_policy.
    aws_s3_bucket_public_access_block(rname, bucket, id=null, ignore_public_acls=null, restrict_public_buckets=null, block_public_acls=null, block_public_policy=null):: {
      bucket: bucket,
      [if id != null then id]: id,
      [if ignore_public_acls != null then ignore_public_acls]: ignore_public_acls,
      [if restrict_public_buckets != null then restrict_public_buckets]: restrict_public_buckets,
      [if block_public_acls != null then block_public_acls]: block_public_acls,
      [if block_public_policy != null then block_public_policy]: block_public_policy,
      rname:: rname,
    },
    // aws_spot_fleet_request - https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param target_capacity (required) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#target_capacity.
    // @param iam_fleet_role (required) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#iam_fleet_role.
    // @param target_group_arns (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#target_group_arns.
    // @param terminate_instances_with_expiration (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#terminate_instances_with_expiration.
    // @param wait_for_fulfillment (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#wait_for_fulfillment.
    // @param instance_pools_to_use_count (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#instance_pools_to_use_count.
    // @param load_balancers (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#load_balancers.
    // @param replace_unhealthy_instances (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#replace_unhealthy_instances.
    // @param excess_capacity_termination_policy (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#excess_capacity_termination_policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#id.
    // @param spot_price (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#spot_price.
    // @param valid_until (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#valid_until.
    // @param allocation_strategy (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#allocation_strategy.
    // @param fleet_type (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#fleet_type.
    // @param instance_interruption_behaviour (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#instance_interruption_behaviour.
    // @param valid_from (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#valid_from.
    aws_spot_fleet_request(rname, target_capacity, iam_fleet_role, target_group_arns=null, terminate_instances_with_expiration=null, wait_for_fulfillment=null, instance_pools_to_use_count=null, load_balancers=null, replace_unhealthy_instances=null, excess_capacity_termination_policy=null, id=null, spot_price=null, valid_until=null, allocation_strategy=null, fleet_type=null, instance_interruption_behaviour=null, valid_from=null):: {
      target_capacity: target_capacity,
      iam_fleet_role: iam_fleet_role,
      [if target_group_arns != null then target_group_arns]: target_group_arns,
      [if terminate_instances_with_expiration != null then terminate_instances_with_expiration]: terminate_instances_with_expiration,
      [if wait_for_fulfillment != null then wait_for_fulfillment]: wait_for_fulfillment,
      [if instance_pools_to_use_count != null then instance_pools_to_use_count]: instance_pools_to_use_count,
      [if load_balancers != null then load_balancers]: load_balancers,
      [if replace_unhealthy_instances != null then replace_unhealthy_instances]: replace_unhealthy_instances,
      [if excess_capacity_termination_policy != null then excess_capacity_termination_policy]: excess_capacity_termination_policy,
      [if id != null then id]: id,
      [if spot_price != null then spot_price]: spot_price,
      [if valid_until != null then valid_until]: valid_until,
      [if allocation_strategy != null then allocation_strategy]: allocation_strategy,
      [if fleet_type != null then fleet_type]: fleet_type,
      [if instance_interruption_behaviour != null then instance_interruption_behaviour]: instance_interruption_behaviour,
      [if valid_from != null then valid_from]: valid_from,
      rname:: rname,
      client_token:: '${aws_spot_fleet_request.%s.client_token}' % rname,
      spot_request_state:: '${aws_spot_fleet_request.%s.spot_request_state}' % rname,
    },
    // aws_cloudformation_stack - https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#name.
    // @param policy_url (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#policy_url.
    // @param template_body (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#template_body.
    // @param notification_arns (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#notification_arns.
    // @param parameters (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#parameters.
    // @param iam_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#iam_role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#id.
    // @param template_url (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#template_url.
    // @param capabilities (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#capabilities.
    // @param on_failure (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#on_failure.
    // @param policy_body (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#policy_body.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#tags.
    // @param timeout_in_minutes (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#timeout_in_minutes.
    // @param disable_rollback (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#disable_rollback.
    aws_cloudformation_stack(rname, name, policy_url=null, template_body=null, notification_arns=null, parameters=null, iam_role_arn=null, id=null, template_url=null, capabilities=null, on_failure=null, policy_body=null, tags=null, timeout_in_minutes=null, disable_rollback=null):: {
      name: name,
      [if policy_url != null then policy_url]: policy_url,
      [if template_body != null then template_body]: template_body,
      [if notification_arns != null then notification_arns]: notification_arns,
      [if parameters != null then parameters]: parameters,
      [if iam_role_arn != null then iam_role_arn]: iam_role_arn,
      [if id != null then id]: id,
      [if template_url != null then template_url]: template_url,
      [if capabilities != null then capabilities]: capabilities,
      [if on_failure != null then on_failure]: on_failure,
      [if policy_body != null then policy_body]: policy_body,
      [if tags != null then tags]: tags,
      [if timeout_in_minutes != null then timeout_in_minutes]: timeout_in_minutes,
      [if disable_rollback != null then disable_rollback]: disable_rollback,
      rname:: rname,
      outputs:: '${aws_cloudformation_stack.%s.outputs}' % rname,
    },
    // aws_autoscaling_group - https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param max_size (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#max_size.
    // @param min_size (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#min_size.
    // @param target_group_arns (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#target_group_arns.
    // @param default_cooldown (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#default_cooldown.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#name_prefix.
    // @param health_check_grace_period (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#health_check_grace_period.
    // @param termination_policies (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#termination_policies.
    // @param wait_for_capacity_timeout (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#wait_for_capacity_timeout.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#availability_zones.
    // @param desired_capacity (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#desired_capacity.
    // @param force_delete (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#force_delete.
    // @param health_check_type (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#health_check_type.
    // @param metrics_granularity (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#metrics_granularity.
    // @param enabled_metrics (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#enabled_metrics.
    // @param service_linked_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#service_linked_role_arn.
    // @param suspended_processes (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#suspended_processes.
    // @param load_balancers (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#load_balancers.
    // @param protect_from_scale_in (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#protect_from_scale_in.
    // @param wait_for_elb_capacity (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#wait_for_elb_capacity.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#id.
    // @param launch_configuration (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#launch_configuration.
    // @param min_elb_capacity (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#min_elb_capacity.
    // @param placement_group (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#placement_group.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#tags.
    // @param vpc_zone_identifier (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#vpc_zone_identifier.
    aws_autoscaling_group(rname, max_size, min_size, target_group_arns=null, default_cooldown=null, name=null, name_prefix=null, health_check_grace_period=null, termination_policies=null, wait_for_capacity_timeout=null, availability_zones=null, desired_capacity=null, force_delete=null, health_check_type=null, metrics_granularity=null, enabled_metrics=null, service_linked_role_arn=null, suspended_processes=null, load_balancers=null, protect_from_scale_in=null, wait_for_elb_capacity=null, id=null, launch_configuration=null, min_elb_capacity=null, placement_group=null, tags=null, vpc_zone_identifier=null):: {
      max_size: max_size,
      min_size: min_size,
      [if target_group_arns != null then target_group_arns]: target_group_arns,
      [if default_cooldown != null then default_cooldown]: default_cooldown,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if health_check_grace_period != null then health_check_grace_period]: health_check_grace_period,
      [if termination_policies != null then termination_policies]: termination_policies,
      [if wait_for_capacity_timeout != null then wait_for_capacity_timeout]: wait_for_capacity_timeout,
      [if availability_zones != null then availability_zones]: availability_zones,
      [if desired_capacity != null then desired_capacity]: desired_capacity,
      [if force_delete != null then force_delete]: force_delete,
      [if health_check_type != null then health_check_type]: health_check_type,
      [if metrics_granularity != null then metrics_granularity]: metrics_granularity,
      [if enabled_metrics != null then enabled_metrics]: enabled_metrics,
      [if service_linked_role_arn != null then service_linked_role_arn]: service_linked_role_arn,
      [if suspended_processes != null then suspended_processes]: suspended_processes,
      [if load_balancers != null then load_balancers]: load_balancers,
      [if protect_from_scale_in != null then protect_from_scale_in]: protect_from_scale_in,
      [if wait_for_elb_capacity != null then wait_for_elb_capacity]: wait_for_elb_capacity,
      [if id != null then id]: id,
      [if launch_configuration != null then launch_configuration]: launch_configuration,
      [if min_elb_capacity != null then min_elb_capacity]: min_elb_capacity,
      [if placement_group != null then placement_group]: placement_group,
      [if tags != null then tags]: tags,
      [if vpc_zone_identifier != null then vpc_zone_identifier]: vpc_zone_identifier,
      rname:: rname,
      arn:: '${aws_autoscaling_group.%s.arn}' % rname,
    },
    // aws_cloudwatch_log_destination - https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_destination.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_destination.html#name.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_destination.html#role_arn.
    // @param target_arn (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_destination.html#target_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_destination.html#id.
    aws_cloudwatch_log_destination(rname, name, role_arn, target_arn, id=null):: {
      name: name,
      role_arn: role_arn,
      target_arn: target_arn,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_cloudwatch_log_destination.%s.arn}' % rname,
    },
    // aws_iam_account_password_policy - https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param require_symbols (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#require_symbols.
    // @param allow_users_to_change_password (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#allow_users_to_change_password.
    // @param hard_expiry (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#hard_expiry.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#id.
    // @param minimum_password_length (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#minimum_password_length.
    // @param password_reuse_prevention (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#password_reuse_prevention.
    // @param max_password_age (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#max_password_age.
    // @param require_lowercase_characters (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#require_lowercase_characters.
    // @param require_numbers (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#require_numbers.
    // @param require_uppercase_characters (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#require_uppercase_characters.
    aws_iam_account_password_policy(rname, require_symbols=null, allow_users_to_change_password=null, hard_expiry=null, id=null, minimum_password_length=null, password_reuse_prevention=null, max_password_age=null, require_lowercase_characters=null, require_numbers=null, require_uppercase_characters=null):: {
      [if require_symbols != null then require_symbols]: require_symbols,
      [if allow_users_to_change_password != null then allow_users_to_change_password]: allow_users_to_change_password,
      [if hard_expiry != null then hard_expiry]: hard_expiry,
      [if id != null then id]: id,
      [if minimum_password_length != null then minimum_password_length]: minimum_password_length,
      [if password_reuse_prevention != null then password_reuse_prevention]: password_reuse_prevention,
      [if max_password_age != null then max_password_age]: max_password_age,
      [if require_lowercase_characters != null then require_lowercase_characters]: require_lowercase_characters,
      [if require_numbers != null then require_numbers]: require_numbers,
      [if require_uppercase_characters != null then require_uppercase_characters]: require_uppercase_characters,
      rname:: rname,
      expire_passwords:: '${aws_iam_account_password_policy.%s.expire_passwords}' % rname,
    },
    // aws_pinpoint_adm_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_adm_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param client_secret (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_adm_channel.html#client_secret.
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_adm_channel.html#application_id.
    // @param client_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_adm_channel.html#client_id.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_adm_channel.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_adm_channel.html#id.
    aws_pinpoint_adm_channel(rname, client_secret, application_id, client_id, enabled=null, id=null):: {
      client_secret: client_secret,
      application_id: application_id,
      client_id: client_id,
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_vpc_peering_connection - https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param peer_vpc_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#peer_vpc_id.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#vpc_id.
    // @param peer_owner_id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#peer_owner_id.
    // @param peer_region (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#peer_region.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#tags.
    // @param auto_accept (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#auto_accept.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#id.
    aws_vpc_peering_connection(rname, peer_vpc_id, vpc_id, peer_owner_id=null, peer_region=null, tags=null, auto_accept=null, id=null):: {
      peer_vpc_id: peer_vpc_id,
      vpc_id: vpc_id,
      [if peer_owner_id != null then peer_owner_id]: peer_owner_id,
      [if peer_region != null then peer_region]: peer_region,
      [if tags != null then tags]: tags,
      [if auto_accept != null then auto_accept]: auto_accept,
      [if id != null then id]: id,
      rname:: rname,
      accept_status:: '${aws_vpc_peering_connection.%s.accept_status}' % rname,
    },
    // aws_appmesh_virtual_node - https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_node.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param mesh_name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_node.html#mesh_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_node.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_node.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_node.html#id.
    aws_appmesh_virtual_node(rname, mesh_name, name, tags=null, id=null):: {
      mesh_name: mesh_name,
      name: name,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_appmesh_virtual_node.%s.arn}' % rname,
      created_date:: '${aws_appmesh_virtual_node.%s.created_date}' % rname,
      last_updated_date:: '${aws_appmesh_virtual_node.%s.last_updated_date}' % rname,
    },
    // aws_lambda_event_source_mapping - https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param event_source_arn (required) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#event_source_arn.
    // @param function_name (required) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#function_name.
    // @param starting_position_timestamp (optional) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#starting_position_timestamp.
    // @param batch_size (optional) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#batch_size.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#id.
    // @param starting_position (optional) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#starting_position.
    aws_lambda_event_source_mapping(rname, event_source_arn, function_name, starting_position_timestamp=null, batch_size=null, enabled=null, id=null, starting_position=null):: {
      event_source_arn: event_source_arn,
      function_name: function_name,
      [if starting_position_timestamp != null then starting_position_timestamp]: starting_position_timestamp,
      [if batch_size != null then batch_size]: batch_size,
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      [if starting_position != null then starting_position]: starting_position,
      rname:: rname,
      state_transition_reason:: '${aws_lambda_event_source_mapping.%s.state_transition_reason}' % rname,
      function_arn:: '${aws_lambda_event_source_mapping.%s.function_arn}' % rname,
      last_modified:: '${aws_lambda_event_source_mapping.%s.last_modified}' % rname,
      last_processing_result:: '${aws_lambda_event_source_mapping.%s.last_processing_result}' % rname,
      uuid:: '${aws_lambda_event_source_mapping.%s.uuid}' % rname,
      state:: '${aws_lambda_event_source_mapping.%s.state}' % rname,
    },
    // aws_opsworks_nodejs_app_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#stack_id.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#system_packages.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_configure_recipes.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#drain_elb_on_shutdown.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#name.
    // @param nodejs_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#nodejs_version.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_deploy_recipes.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_instance_profile_arn.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_json.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_setup_recipes.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_undeploy_recipes.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#auto_assign_public_ips.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#auto_healing.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_shutdown_recipes.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#install_updates_on_boot.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#auto_assign_elastic_ips.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_security_group_ids.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#elastic_load_balancer.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#instance_shutdown_timeout.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#use_ebs_optimized_instances.
    aws_opsworks_nodejs_app_layer(rname, stack_id, system_packages=null, custom_configure_recipes=null, drain_elb_on_shutdown=null, id=null, name=null, nodejs_version=null, custom_deploy_recipes=null, custom_instance_profile_arn=null, custom_json=null, custom_setup_recipes=null, custom_undeploy_recipes=null, auto_assign_public_ips=null, auto_healing=null, custom_shutdown_recipes=null, install_updates_on_boot=null, auto_assign_elastic_ips=null, custom_security_group_ids=null, elastic_load_balancer=null, instance_shutdown_timeout=null, use_ebs_optimized_instances=null):: {
      stack_id: stack_id,
      [if system_packages != null then system_packages]: system_packages,
      [if custom_configure_recipes != null then custom_configure_recipes]: custom_configure_recipes,
      [if drain_elb_on_shutdown != null then drain_elb_on_shutdown]: drain_elb_on_shutdown,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if nodejs_version != null then nodejs_version]: nodejs_version,
      [if custom_deploy_recipes != null then custom_deploy_recipes]: custom_deploy_recipes,
      [if custom_instance_profile_arn != null then custom_instance_profile_arn]: custom_instance_profile_arn,
      [if custom_json != null then custom_json]: custom_json,
      [if custom_setup_recipes != null then custom_setup_recipes]: custom_setup_recipes,
      [if custom_undeploy_recipes != null then custom_undeploy_recipes]: custom_undeploy_recipes,
      [if auto_assign_public_ips != null then auto_assign_public_ips]: auto_assign_public_ips,
      [if auto_healing != null then auto_healing]: auto_healing,
      [if custom_shutdown_recipes != null then custom_shutdown_recipes]: custom_shutdown_recipes,
      [if install_updates_on_boot != null then install_updates_on_boot]: install_updates_on_boot,
      [if auto_assign_elastic_ips != null then auto_assign_elastic_ips]: auto_assign_elastic_ips,
      [if custom_security_group_ids != null then custom_security_group_ids]: custom_security_group_ids,
      [if elastic_load_balancer != null then elastic_load_balancer]: elastic_load_balancer,
      [if instance_shutdown_timeout != null then instance_shutdown_timeout]: instance_shutdown_timeout,
      [if use_ebs_optimized_instances != null then use_ebs_optimized_instances]: use_ebs_optimized_instances,
      rname:: rname,
    },
    // aws_wafregional_byte_match_set - https://www.terraform.io/docs/providers/aws/r/wafregional_byte_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_byte_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_byte_match_set.html#id.
    aws_wafregional_byte_match_set(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_datasync_task - https://www.terraform.io/docs/providers/aws/r/datasync_task.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param destination_location_arn (required) https://www.terraform.io/docs/providers/aws/r/datasync_task.html#destination_location_arn.
    // @param source_location_arn (required) https://www.terraform.io/docs/providers/aws/r/datasync_task.html#source_location_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/datasync_task.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/datasync_task.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/datasync_task.html#tags.
    // @param cloudwatch_log_group_arn (optional) https://www.terraform.io/docs/providers/aws/r/datasync_task.html#cloudwatch_log_group_arn.
    aws_datasync_task(rname, destination_location_arn, source_location_arn, id=null, name=null, tags=null, cloudwatch_log_group_arn=null):: {
      destination_location_arn: destination_location_arn,
      source_location_arn: source_location_arn,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if tags != null then tags]: tags,
      [if cloudwatch_log_group_arn != null then cloudwatch_log_group_arn]: cloudwatch_log_group_arn,
      rname:: rname,
      arn:: '${aws_datasync_task.%s.arn}' % rname,
    },
    // aws_api_gateway_usage_plan - https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan.html#id.
    // @param product_code (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan.html#product_code.
    aws_api_gateway_usage_plan(rname, name, description=null, id=null, product_code=null):: {
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if product_code != null then product_code]: product_code,
      rname:: rname,
    },
    // aws_autoscaling_attachment - https://www.terraform.io/docs/providers/aws/r/autoscaling_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param autoscaling_group_name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_attachment.html#autoscaling_group_name.
    // @param alb_target_group_arn (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_attachment.html#alb_target_group_arn.
    // @param elb (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_attachment.html#elb.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_attachment.html#id.
    aws_autoscaling_attachment(rname, autoscaling_group_name, alb_target_group_arn=null, elb=null, id=null):: {
      autoscaling_group_name: autoscaling_group_name,
      [if alb_target_group_arn != null then alb_target_group_arn]: alb_target_group_arn,
      [if elb != null then elb]: elb,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_load_balancer_backend_server_policy - https://www.terraform.io/docs/providers/aws/r/load_balancer_backend_server_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_port (required) https://www.terraform.io/docs/providers/aws/r/load_balancer_backend_server_policy.html#instance_port.
    // @param load_balancer_name (required) https://www.terraform.io/docs/providers/aws/r/load_balancer_backend_server_policy.html#load_balancer_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/load_balancer_backend_server_policy.html#id.
    // @param policy_names (optional) https://www.terraform.io/docs/providers/aws/r/load_balancer_backend_server_policy.html#policy_names.
    aws_load_balancer_backend_server_policy(rname, instance_port, load_balancer_name, id=null, policy_names=null):: {
      instance_port: instance_port,
      load_balancer_name: load_balancer_name,
      [if id != null then id]: id,
      [if policy_names != null then policy_names]: policy_names,
      rname:: rname,
    },
    // aws_redshift_cluster - https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_identifier.
    // @param node_type (required) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#node_type.
    // @param allow_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#allow_version_upgrade.
    // @param bucket_name (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#bucket_name.
    // @param cluster_revision_number (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_revision_number.
    // @param cluster_version (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_version.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#id.
    // @param database_name (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#database_name.
    // @param master_password (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#master_password.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#preferred_maintenance_window.
    // @param snapshot_cluster_identifier (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#snapshot_cluster_identifier.
    // @param automated_snapshot_retention_period (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#automated_snapshot_retention_period.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#availability_zone.
    // @param elastic_ip (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#elastic_ip.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#vpc_security_group_ids.
    // @param cluster_public_key (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_public_key.
    // @param endpoint (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#endpoint.
    // @param final_snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#final_snapshot_identifier.
    // @param number_of_nodes (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#number_of_nodes.
    // @param s3_key_prefix (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#s3_key_prefix.
    // @param cluster_parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_parameter_group_name.
    // @param cluster_security_groups (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_security_groups.
    // @param owner_account (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#owner_account.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#port.
    // @param cluster_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_subnet_group_name.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#kms_key_id.
    // @param enhanced_vpc_routing (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#enhanced_vpc_routing.
    // @param iam_roles (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#iam_roles.
    // @param publicly_accessible (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#publicly_accessible.
    // @param snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#snapshot_identifier.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#tags.
    // @param cluster_type (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_type.
    // @param enable_logging (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#enable_logging.
    // @param encrypted (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#encrypted.
    // @param master_username (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#master_username.
    // @param skip_final_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#skip_final_snapshot.
    aws_redshift_cluster(rname, cluster_identifier, node_type, allow_version_upgrade=null, bucket_name=null, cluster_revision_number=null, cluster_version=null, id=null, database_name=null, master_password=null, preferred_maintenance_window=null, snapshot_cluster_identifier=null, automated_snapshot_retention_period=null, availability_zone=null, elastic_ip=null, vpc_security_group_ids=null, cluster_public_key=null, endpoint=null, final_snapshot_identifier=null, number_of_nodes=null, s3_key_prefix=null, cluster_parameter_group_name=null, cluster_security_groups=null, owner_account=null, port=null, cluster_subnet_group_name=null, kms_key_id=null, enhanced_vpc_routing=null, iam_roles=null, publicly_accessible=null, snapshot_identifier=null, tags=null, cluster_type=null, enable_logging=null, encrypted=null, master_username=null, skip_final_snapshot=null):: {
      cluster_identifier: cluster_identifier,
      node_type: node_type,
      [if allow_version_upgrade != null then allow_version_upgrade]: allow_version_upgrade,
      [if bucket_name != null then bucket_name]: bucket_name,
      [if cluster_revision_number != null then cluster_revision_number]: cluster_revision_number,
      [if cluster_version != null then cluster_version]: cluster_version,
      [if id != null then id]: id,
      [if database_name != null then database_name]: database_name,
      [if master_password != null then master_password]: master_password,
      [if preferred_maintenance_window != null then preferred_maintenance_window]: preferred_maintenance_window,
      [if snapshot_cluster_identifier != null then snapshot_cluster_identifier]: snapshot_cluster_identifier,
      [if automated_snapshot_retention_period != null then automated_snapshot_retention_period]: automated_snapshot_retention_period,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if elastic_ip != null then elastic_ip]: elastic_ip,
      [if vpc_security_group_ids != null then vpc_security_group_ids]: vpc_security_group_ids,
      [if cluster_public_key != null then cluster_public_key]: cluster_public_key,
      [if endpoint != null then endpoint]: endpoint,
      [if final_snapshot_identifier != null then final_snapshot_identifier]: final_snapshot_identifier,
      [if number_of_nodes != null then number_of_nodes]: number_of_nodes,
      [if s3_key_prefix != null then s3_key_prefix]: s3_key_prefix,
      [if cluster_parameter_group_name != null then cluster_parameter_group_name]: cluster_parameter_group_name,
      [if cluster_security_groups != null then cluster_security_groups]: cluster_security_groups,
      [if owner_account != null then owner_account]: owner_account,
      [if port != null then port]: port,
      [if cluster_subnet_group_name != null then cluster_subnet_group_name]: cluster_subnet_group_name,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if enhanced_vpc_routing != null then enhanced_vpc_routing]: enhanced_vpc_routing,
      [if iam_roles != null then iam_roles]: iam_roles,
      [if publicly_accessible != null then publicly_accessible]: publicly_accessible,
      [if snapshot_identifier != null then snapshot_identifier]: snapshot_identifier,
      [if tags != null then tags]: tags,
      [if cluster_type != null then cluster_type]: cluster_type,
      [if enable_logging != null then enable_logging]: enable_logging,
      [if encrypted != null then encrypted]: encrypted,
      [if master_username != null then master_username]: master_username,
      [if skip_final_snapshot != null then skip_final_snapshot]: skip_final_snapshot,
      rname:: rname,
      dns_name:: '${aws_redshift_cluster.%s.dns_name}' % rname,
      arn:: '${aws_redshift_cluster.%s.arn}' % rname,
    },
    // aws_api_gateway_stage - https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param deployment_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#deployment_id.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#rest_api_id.
    // @param stage_name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#stage_name.
    // @param cache_cluster_enabled (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#cache_cluster_enabled.
    // @param cache_cluster_size (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#cache_cluster_size.
    // @param documentation_version (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#documentation_version.
    // @param xray_tracing_enabled (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#xray_tracing_enabled.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#description.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#tags.
    // @param variables (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#variables.
    // @param client_certificate_id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#client_certificate_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#id.
    aws_api_gateway_stage(rname, deployment_id, rest_api_id, stage_name, cache_cluster_enabled=null, cache_cluster_size=null, documentation_version=null, xray_tracing_enabled=null, description=null, tags=null, variables=null, client_certificate_id=null, id=null):: {
      deployment_id: deployment_id,
      rest_api_id: rest_api_id,
      stage_name: stage_name,
      [if cache_cluster_enabled != null then cache_cluster_enabled]: cache_cluster_enabled,
      [if cache_cluster_size != null then cache_cluster_size]: cache_cluster_size,
      [if documentation_version != null then documentation_version]: documentation_version,
      [if xray_tracing_enabled != null then xray_tracing_enabled]: xray_tracing_enabled,
      [if description != null then description]: description,
      [if tags != null then tags]: tags,
      [if variables != null then variables]: variables,
      [if client_certificate_id != null then client_certificate_id]: client_certificate_id,
      [if id != null then id]: id,
      rname:: rname,
      invoke_url:: '${aws_api_gateway_stage.%s.invoke_url}' % rname,
      execution_arn:: '${aws_api_gateway_stage.%s.execution_arn}' % rname,
    },
    // aws_ec2_transit_gateway_route_table_association - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param transit_gateway_attachment_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_association.html#transit_gateway_attachment_id.
    // @param transit_gateway_route_table_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_association.html#transit_gateway_route_table_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_association.html#id.
    aws_ec2_transit_gateway_route_table_association(rname, transit_gateway_attachment_id, transit_gateway_route_table_id, id=null):: {
      transit_gateway_attachment_id: transit_gateway_attachment_id,
      transit_gateway_route_table_id: transit_gateway_route_table_id,
      [if id != null then id]: id,
      rname:: rname,
      resource_id:: '${aws_ec2_transit_gateway_route_table_association.%s.resource_id}' % rname,
      resource_type:: '${aws_ec2_transit_gateway_route_table_association.%s.resource_type}' % rname,
    },
    // aws_iam_role - https://www.terraform.io/docs/providers/aws/r/iam_role.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param assume_role_policy (required) https://www.terraform.io/docs/providers/aws/r/iam_role.html#assume_role_policy.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#name.
    // @param force_detach_policies (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#force_detach_policies.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#id.
    // @param max_session_duration (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#max_session_duration.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#name_prefix.
    // @param path (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#path.
    // @param permissions_boundary (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#permissions_boundary.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#description.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#tags.
    aws_iam_role(rname, assume_role_policy, name=null, force_detach_policies=null, id=null, max_session_duration=null, name_prefix=null, path=null, permissions_boundary=null, description=null, tags=null):: {
      assume_role_policy: assume_role_policy,
      [if name != null then name]: name,
      [if force_detach_policies != null then force_detach_policies]: force_detach_policies,
      [if id != null then id]: id,
      [if max_session_duration != null then max_session_duration]: max_session_duration,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if path != null then path]: path,
      [if permissions_boundary != null then permissions_boundary]: permissions_boundary,
      [if description != null then description]: description,
      [if tags != null then tags]: tags,
      rname:: rname,
      unique_id:: '${aws_iam_role.%s.unique_id}' % rname,
      arn:: '${aws_iam_role.%s.arn}' % rname,
      create_date:: '${aws_iam_role.%s.create_date}' % rname,
    },
    // aws_rds_cluster_parameter_group - https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html#family.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html#name_prefix.
    aws_rds_cluster_parameter_group(rname, family, tags=null, description=null, id=null, name=null, name_prefix=null):: {
      family: family,
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      rname:: rname,
      arn:: '${aws_rds_cluster_parameter_group.%s.arn}' % rname,
    },
    // aws_route53_delegation_set - https://www.terraform.io/docs/providers/aws/r/route53_delegation_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_delegation_set.html#id.
    // @param reference_name (optional) https://www.terraform.io/docs/providers/aws/r/route53_delegation_set.html#reference_name.
    aws_route53_delegation_set(rname, id=null, reference_name=null):: {
      [if id != null then id]: id,
      [if reference_name != null then reference_name]: reference_name,
      rname:: rname,
      name_servers:: '${aws_route53_delegation_set.%s.name_servers}' % rname,
    },
    // aws_appmesh_mesh - https://www.terraform.io/docs/providers/aws/r/appmesh_mesh.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_mesh.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_mesh.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_mesh.html#id.
    aws_appmesh_mesh(rname, name, tags=null, id=null):: {
      name: name,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_appmesh_mesh.%s.arn}' % rname,
      created_date:: '${aws_appmesh_mesh.%s.created_date}' % rname,
      last_updated_date:: '${aws_appmesh_mesh.%s.last_updated_date}' % rname,
    },
    // aws_emr_instance_group - https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#instance_type.
    // @param cluster_id (required) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#cluster_id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#name.
    // @param autoscaling_policy (optional) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#autoscaling_policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#id.
    // @param instance_count (optional) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#instance_count.
    // @param bid_price (optional) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#bid_price.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#ebs_optimized.
    aws_emr_instance_group(rname, instance_type, cluster_id, name=null, autoscaling_policy=null, id=null, instance_count=null, bid_price=null, ebs_optimized=null):: {
      instance_type: instance_type,
      cluster_id: cluster_id,
      [if name != null then name]: name,
      [if autoscaling_policy != null then autoscaling_policy]: autoscaling_policy,
      [if id != null then id]: id,
      [if instance_count != null then instance_count]: instance_count,
      [if bid_price != null then bid_price]: bid_price,
      [if ebs_optimized != null then ebs_optimized]: ebs_optimized,
      rname:: rname,
      status:: '${aws_emr_instance_group.%s.status}' % rname,
      running_instance_count:: '${aws_emr_instance_group.%s.running_instance_count}' % rname,
    },
    // aws_licensemanager_license_configuration - https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param license_counting_type (required) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#license_counting_type.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#name.
    // @param license_rules (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#license_rules.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#id.
    // @param license_count (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#license_count.
    // @param license_count_hard_limit (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#license_count_hard_limit.
    aws_licensemanager_license_configuration(rname, license_counting_type, name, license_rules=null, tags=null, description=null, id=null, license_count=null, license_count_hard_limit=null):: {
      license_counting_type: license_counting_type,
      name: name,
      [if license_rules != null then license_rules]: license_rules,
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if license_count != null then license_count]: license_count,
      [if license_count_hard_limit != null then license_count_hard_limit]: license_count_hard_limit,
      rname:: rname,
    },
    // aws_macie_s3_bucket_association - https://www.terraform.io/docs/providers/aws/r/macie_s3_bucket_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket_name (required) https://www.terraform.io/docs/providers/aws/r/macie_s3_bucket_association.html#bucket_name.
    // @param member_account_id (optional) https://www.terraform.io/docs/providers/aws/r/macie_s3_bucket_association.html#member_account_id.
    // @param prefix (optional) https://www.terraform.io/docs/providers/aws/r/macie_s3_bucket_association.html#prefix.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/macie_s3_bucket_association.html#id.
    aws_macie_s3_bucket_association(rname, bucket_name, member_account_id=null, prefix=null, id=null):: {
      bucket_name: bucket_name,
      [if member_account_id != null then member_account_id]: member_account_id,
      [if prefix != null then prefix]: prefix,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_route_table - https://www.terraform.io/docs/providers/aws/r/route_table.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/route_table.html#vpc_id.
    // @param route (optional) https://www.terraform.io/docs/providers/aws/r/route_table.html#route.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/route_table.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route_table.html#id.
    // @param propagating_vgws (optional) https://www.terraform.io/docs/providers/aws/r/route_table.html#propagating_vgws.
    aws_route_table(rname, vpc_id, route=null, tags=null, id=null, propagating_vgws=null):: {
      vpc_id: vpc_id,
      [if route != null then route]: route,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      [if propagating_vgws != null then propagating_vgws]: propagating_vgws,
      rname:: rname,
      owner_id:: '${aws_route_table.%s.owner_id}' % rname,
    },
    // aws_ses_event_destination - https://www.terraform.io/docs/providers/aws/r/ses_event_destination.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param matching_types (required) https://www.terraform.io/docs/providers/aws/r/ses_event_destination.html#matching_types.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ses_event_destination.html#name.
    // @param configuration_set_name (required) https://www.terraform.io/docs/providers/aws/r/ses_event_destination.html#configuration_set_name.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/ses_event_destination.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_event_destination.html#id.
    aws_ses_event_destination(rname, matching_types, name, configuration_set_name, enabled=null, id=null):: {
      matching_types: matching_types,
      name: name,
      configuration_set_name: configuration_set_name,
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_transfer_server - https://www.terraform.io/docs/providers/aws/r/transfer_server.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param invocation_role (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#invocation_role.
    // @param url (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#url.
    // @param identity_provider_type (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#identity_provider_type.
    // @param logging_role (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#logging_role.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#tags.
    // @param endpoint_type (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#endpoint_type.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#force_destroy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#id.
    aws_transfer_server(rname, invocation_role=null, url=null, identity_provider_type=null, logging_role=null, tags=null, endpoint_type=null, force_destroy=null, id=null):: {
      [if invocation_role != null then invocation_role]: invocation_role,
      [if url != null then url]: url,
      [if identity_provider_type != null then identity_provider_type]: identity_provider_type,
      [if logging_role != null then logging_role]: logging_role,
      [if tags != null then tags]: tags,
      [if endpoint_type != null then endpoint_type]: endpoint_type,
      [if force_destroy != null then force_destroy]: force_destroy,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_transfer_server.%s.arn}' % rname,
      endpoint:: '${aws_transfer_server.%s.endpoint}' % rname,
    },
    // aws_default_vpc_dhcp_options - https://www.terraform.io/docs/providers/aws/r/default_vpc_dhcp_options.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc_dhcp_options.html#id.
    // @param netbios_name_servers (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc_dhcp_options.html#netbios_name_servers.
    // @param netbios_node_type (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc_dhcp_options.html#netbios_node_type.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc_dhcp_options.html#tags.
    aws_default_vpc_dhcp_options(rname, id=null, netbios_name_servers=null, netbios_node_type=null, tags=null):: {
      [if id != null then id]: id,
      [if netbios_name_servers != null then netbios_name_servers]: netbios_name_servers,
      [if netbios_node_type != null then netbios_node_type]: netbios_node_type,
      [if tags != null then tags]: tags,
      rname:: rname,
      domain_name:: '${aws_default_vpc_dhcp_options.%s.domain_name}' % rname,
      domain_name_servers:: '${aws_default_vpc_dhcp_options.%s.domain_name_servers}' % rname,
      ntp_servers:: '${aws_default_vpc_dhcp_options.%s.ntp_servers}' % rname,
      owner_id:: '${aws_default_vpc_dhcp_options.%s.owner_id}' % rname,
    },
    // aws_fsx_windows_file_system - https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param storage_capacity (required) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#storage_capacity.
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#subnet_ids.
    // @param throughput_capacity (required) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#throughput_capacity.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#kms_key_id.
    // @param weekly_maintenance_start_time (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#weekly_maintenance_start_time.
    // @param automatic_backup_retention_days (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#automatic_backup_retention_days.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#tags.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#security_group_ids.
    // @param skip_final_backup (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#skip_final_backup.
    // @param active_directory_id (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#active_directory_id.
    // @param copy_tags_to_backups (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#copy_tags_to_backups.
    // @param daily_automatic_backup_start_time (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#daily_automatic_backup_start_time.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#id.
    aws_fsx_windows_file_system(rname, storage_capacity, subnet_ids, throughput_capacity, kms_key_id=null, weekly_maintenance_start_time=null, automatic_backup_retention_days=null, tags=null, security_group_ids=null, skip_final_backup=null, active_directory_id=null, copy_tags_to_backups=null, daily_automatic_backup_start_time=null, id=null):: {
      storage_capacity: storage_capacity,
      subnet_ids: subnet_ids,
      throughput_capacity: throughput_capacity,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if weekly_maintenance_start_time != null then weekly_maintenance_start_time]: weekly_maintenance_start_time,
      [if automatic_backup_retention_days != null then automatic_backup_retention_days]: automatic_backup_retention_days,
      [if tags != null then tags]: tags,
      [if security_group_ids != null then security_group_ids]: security_group_ids,
      [if skip_final_backup != null then skip_final_backup]: skip_final_backup,
      [if active_directory_id != null then active_directory_id]: active_directory_id,
      [if copy_tags_to_backups != null then copy_tags_to_backups]: copy_tags_to_backups,
      [if daily_automatic_backup_start_time != null then daily_automatic_backup_start_time]: daily_automatic_backup_start_time,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_fsx_windows_file_system.%s.arn}' % rname,
      network_interface_ids:: '${aws_fsx_windows_file_system.%s.network_interface_ids}' % rname,
      dns_name:: '${aws_fsx_windows_file_system.%s.dns_name}' % rname,
      owner_id:: '${aws_fsx_windows_file_system.%s.owner_id}' % rname,
      vpc_id:: '${aws_fsx_windows_file_system.%s.vpc_id}' % rname,
    },
    // aws_opsworks_stack - https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param default_instance_profile_arn (required) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#default_instance_profile_arn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#name.
    // @param region (required) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#region.
    // @param service_role_arn (required) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#service_role_arn.
    // @param agent_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#agent_version.
    // @param berkshelf_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#berkshelf_version.
    // @param color (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#color.
    // @param configuration_manager_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#configuration_manager_version.
    // @param use_opsworks_security_groups (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#use_opsworks_security_groups.
    // @param default_root_device_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#default_root_device_type.
    // @param default_ssh_key_name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#default_ssh_key_name.
    // @param manage_berkshelf (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#manage_berkshelf.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#vpc_id.
    // @param configuration_manager_name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#configuration_manager_name.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#custom_json.
    // @param default_availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#default_availability_zone.
    // @param default_subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#default_subnet_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#tags.
    // @param use_custom_cookbooks (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#use_custom_cookbooks.
    // @param default_os (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#default_os.
    // @param hostname_theme (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#hostname_theme.
    aws_opsworks_stack(rname, default_instance_profile_arn, name, region, service_role_arn, agent_version=null, berkshelf_version=null, color=null, configuration_manager_version=null, use_opsworks_security_groups=null, default_root_device_type=null, default_ssh_key_name=null, manage_berkshelf=null, vpc_id=null, configuration_manager_name=null, custom_json=null, default_availability_zone=null, default_subnet_id=null, id=null, tags=null, use_custom_cookbooks=null, default_os=null, hostname_theme=null):: {
      default_instance_profile_arn: default_instance_profile_arn,
      name: name,
      region: region,
      service_role_arn: service_role_arn,
      [if agent_version != null then agent_version]: agent_version,
      [if berkshelf_version != null then berkshelf_version]: berkshelf_version,
      [if color != null then color]: color,
      [if configuration_manager_version != null then configuration_manager_version]: configuration_manager_version,
      [if use_opsworks_security_groups != null then use_opsworks_security_groups]: use_opsworks_security_groups,
      [if default_root_device_type != null then default_root_device_type]: default_root_device_type,
      [if default_ssh_key_name != null then default_ssh_key_name]: default_ssh_key_name,
      [if manage_berkshelf != null then manage_berkshelf]: manage_berkshelf,
      [if vpc_id != null then vpc_id]: vpc_id,
      [if configuration_manager_name != null then configuration_manager_name]: configuration_manager_name,
      [if custom_json != null then custom_json]: custom_json,
      [if default_availability_zone != null then default_availability_zone]: default_availability_zone,
      [if default_subnet_id != null then default_subnet_id]: default_subnet_id,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if use_custom_cookbooks != null then use_custom_cookbooks]: use_custom_cookbooks,
      [if default_os != null then default_os]: default_os,
      [if hostname_theme != null then hostname_theme]: hostname_theme,
      rname:: rname,
      arn:: '${aws_opsworks_stack.%s.arn}' % rname,
      stack_endpoint:: '${aws_opsworks_stack.%s.stack_endpoint}' % rname,
    },
    // aws_ses_active_receipt_rule_set - https://www.terraform.io/docs/providers/aws/r/ses_active_receipt_rule_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rule_set_name (required) https://www.terraform.io/docs/providers/aws/r/ses_active_receipt_rule_set.html#rule_set_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_active_receipt_rule_set.html#id.
    aws_ses_active_receipt_rule_set(rname, rule_set_name, id=null):: {
      rule_set_name: rule_set_name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_sqs_queue_policy - https://www.terraform.io/docs/providers/aws/r/sqs_queue_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param queue_url (required) https://www.terraform.io/docs/providers/aws/r/sqs_queue_policy.html#queue_url.
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/sqs_queue_policy.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue_policy.html#id.
    aws_sqs_queue_policy(rname, queue_url, policy, id=null):: {
      queue_url: queue_url,
      policy: policy,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_acm_certificate - https://www.terraform.io/docs/providers/aws/r/acm_certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate_authority_arn (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#certificate_authority_arn.
    // @param certificate_body (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#certificate_body.
    // @param domain_name (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#domain_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#id.
    // @param subject_alternative_names (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#subject_alternative_names.
    // @param certificate_chain (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#certificate_chain.
    // @param private_key (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#private_key.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#tags.
    // @param validation_method (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#validation_method.
    aws_acm_certificate(rname, certificate_authority_arn=null, certificate_body=null, domain_name=null, id=null, subject_alternative_names=null, certificate_chain=null, private_key=null, tags=null, validation_method=null):: {
      [if certificate_authority_arn != null then certificate_authority_arn]: certificate_authority_arn,
      [if certificate_body != null then certificate_body]: certificate_body,
      [if domain_name != null then domain_name]: domain_name,
      [if id != null then id]: id,
      [if subject_alternative_names != null then subject_alternative_names]: subject_alternative_names,
      [if certificate_chain != null then certificate_chain]: certificate_chain,
      [if private_key != null then private_key]: private_key,
      [if tags != null then tags]: tags,
      [if validation_method != null then validation_method]: validation_method,
      rname:: rname,
      arn:: '${aws_acm_certificate.%s.arn}' % rname,
      domain_validation_options:: '${aws_acm_certificate.%s.domain_validation_options}' % rname,
      validation_emails:: '${aws_acm_certificate.%s.validation_emails}' % rname,
    },
    // aws_ec2_transit_gateway_route_table_propagation - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_propagation.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param transit_gateway_attachment_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_propagation.html#transit_gateway_attachment_id.
    // @param transit_gateway_route_table_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_propagation.html#transit_gateway_route_table_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_propagation.html#id.
    aws_ec2_transit_gateway_route_table_propagation(rname, transit_gateway_attachment_id, transit_gateway_route_table_id, id=null):: {
      transit_gateway_attachment_id: transit_gateway_attachment_id,
      transit_gateway_route_table_id: transit_gateway_route_table_id,
      [if id != null then id]: id,
      rname:: rname,
      resource_id:: '${aws_ec2_transit_gateway_route_table_propagation.%s.resource_id}' % rname,
      resource_type:: '${aws_ec2_transit_gateway_route_table_propagation.%s.resource_type}' % rname,
    },
    // aws_egress_only_internet_gateway - https://www.terraform.io/docs/providers/aws/r/egress_only_internet_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/egress_only_internet_gateway.html#vpc_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/egress_only_internet_gateway.html#id.
    aws_egress_only_internet_gateway(rname, vpc_id, id=null):: {
      vpc_id: vpc_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_wafregional_geo_match_set - https://www.terraform.io/docs/providers/aws/r/wafregional_geo_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_geo_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_geo_match_set.html#id.
    aws_wafregional_geo_match_set(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_wafregional_rule - https://www.terraform.io/docs/providers/aws/r/wafregional_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rule.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rule.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_rule.html#id.
    aws_wafregional_rule(rname, metric_name, name, id=null):: {
      metric_name: metric_name,
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_autoscaling_policy - https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param autoscaling_group_name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#autoscaling_group_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#name.
    // @param metric_aggregation_type (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#metric_aggregation_type.
    // @param min_adjustment_magnitude (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#min_adjustment_magnitude.
    // @param min_adjustment_step (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#min_adjustment_step.
    // @param policy_type (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#policy_type.
    // @param scaling_adjustment (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#scaling_adjustment.
    // @param estimated_instance_warmup (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#estimated_instance_warmup.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#id.
    // @param cooldown (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#cooldown.
    // @param adjustment_type (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#adjustment_type.
    aws_autoscaling_policy(rname, autoscaling_group_name, name, metric_aggregation_type=null, min_adjustment_magnitude=null, min_adjustment_step=null, policy_type=null, scaling_adjustment=null, estimated_instance_warmup=null, id=null, cooldown=null, adjustment_type=null):: {
      autoscaling_group_name: autoscaling_group_name,
      name: name,
      [if metric_aggregation_type != null then metric_aggregation_type]: metric_aggregation_type,
      [if min_adjustment_magnitude != null then min_adjustment_magnitude]: min_adjustment_magnitude,
      [if min_adjustment_step != null then min_adjustment_step]: min_adjustment_step,
      [if policy_type != null then policy_type]: policy_type,
      [if scaling_adjustment != null then scaling_adjustment]: scaling_adjustment,
      [if estimated_instance_warmup != null then estimated_instance_warmup]: estimated_instance_warmup,
      [if id != null then id]: id,
      [if cooldown != null then cooldown]: cooldown,
      [if adjustment_type != null then adjustment_type]: adjustment_type,
      rname:: rname,
      arn:: '${aws_autoscaling_policy.%s.arn}' % rname,
    },
    // aws_ec2_transit_gateway_vpc_attachment_accepter - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment_accepter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param transit_gateway_attachment_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment_accepter.html#transit_gateway_attachment_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment_accepter.html#tags.
    // @param transit_gateway_default_route_table_association (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment_accepter.html#transit_gateway_default_route_table_association.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment_accepter.html#id.
    // @param transit_gateway_default_route_table_propagation (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment_accepter.html#transit_gateway_default_route_table_propagation.
    aws_ec2_transit_gateway_vpc_attachment_accepter(rname, transit_gateway_attachment_id, tags=null, transit_gateway_default_route_table_association=null, id=null, transit_gateway_default_route_table_propagation=null):: {
      transit_gateway_attachment_id: transit_gateway_attachment_id,
      [if tags != null then tags]: tags,
      [if transit_gateway_default_route_table_association != null then transit_gateway_default_route_table_association]: transit_gateway_default_route_table_association,
      [if id != null then id]: id,
      [if transit_gateway_default_route_table_propagation != null then transit_gateway_default_route_table_propagation]: transit_gateway_default_route_table_propagation,
      rname:: rname,
      subnet_ids:: '${aws_ec2_transit_gateway_vpc_attachment_accepter.%s.subnet_ids}' % rname,
      vpc_id:: '${aws_ec2_transit_gateway_vpc_attachment_accepter.%s.vpc_id}' % rname,
      ipv6_support:: '${aws_ec2_transit_gateway_vpc_attachment_accepter.%s.ipv6_support}' % rname,
      transit_gateway_id:: '${aws_ec2_transit_gateway_vpc_attachment_accepter.%s.transit_gateway_id}' % rname,
      vpc_owner_id:: '${aws_ec2_transit_gateway_vpc_attachment_accepter.%s.vpc_owner_id}' % rname,
      dns_support:: '${aws_ec2_transit_gateway_vpc_attachment_accepter.%s.dns_support}' % rname,
    },
    // aws_pinpoint_apns_sandbox_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#application_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#id.
    // @param token_key_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#token_key_id.
    // @param bundle_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#bundle_id.
    // @param default_authentication_method (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#default_authentication_method.
    // @param team_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#team_id.
    // @param token_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#token_key.
    // @param certificate (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#certificate.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#enabled.
    // @param private_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#private_key.
    aws_pinpoint_apns_sandbox_channel(rname, application_id, id=null, token_key_id=null, bundle_id=null, default_authentication_method=null, team_id=null, token_key=null, certificate=null, enabled=null, private_key=null):: {
      application_id: application_id,
      [if id != null then id]: id,
      [if token_key_id != null then token_key_id]: token_key_id,
      [if bundle_id != null then bundle_id]: bundle_id,
      [if default_authentication_method != null then default_authentication_method]: default_authentication_method,
      [if team_id != null then team_id]: team_id,
      [if token_key != null then token_key]: token_key,
      [if certificate != null then certificate]: certificate,
      [if enabled != null then enabled]: enabled,
      [if private_key != null then private_key]: private_key,
      rname:: rname,
    },
    // aws_docdb_cluster_parameter_group - https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html#family.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html#tags.
    aws_docdb_cluster_parameter_group(rname, family, description=null, id=null, name=null, name_prefix=null, tags=null):: {
      family: family,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_docdb_cluster_parameter_group.%s.arn}' % rname,
    },
    // aws_cognito_identity_provider - https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param provider_details (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#provider_details.
    // @param provider_name (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#provider_name.
    // @param provider_type (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#provider_type.
    // @param user_pool_id (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#user_pool_id.
    // @param attribute_mapping (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#attribute_mapping.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#id.
    // @param idp_identifiers (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#idp_identifiers.
    aws_cognito_identity_provider(rname, provider_details, provider_name, provider_type, user_pool_id, attribute_mapping=null, id=null, idp_identifiers=null):: {
      provider_details: provider_details,
      provider_name: provider_name,
      provider_type: provider_type,
      user_pool_id: user_pool_id,
      [if attribute_mapping != null then attribute_mapping]: attribute_mapping,
      [if id != null then id]: id,
      [if idp_identifiers != null then idp_identifiers]: idp_identifiers,
      rname:: rname,
    },
    // aws_docdb_subnet_group - https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html#subnet_ids.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html#name_prefix.
    aws_docdb_subnet_group(rname, subnet_ids, tags=null, description=null, id=null, name=null, name_prefix=null):: {
      subnet_ids: subnet_ids,
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      rname:: rname,
      arn:: '${aws_docdb_subnet_group.%s.arn}' % rname,
    },
    // aws_vpc_endpoint_service - https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param acceptance_required (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service.html#acceptance_required.
    // @param network_load_balancer_arns (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service.html#network_load_balancer_arns.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service.html#tags.
    // @param allowed_principals (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service.html#allowed_principals.
    aws_vpc_endpoint_service(rname, acceptance_required, network_load_balancer_arns, id=null, tags=null, allowed_principals=null):: {
      acceptance_required: acceptance_required,
      network_load_balancer_arns: network_load_balancer_arns,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if allowed_principals != null then allowed_principals]: allowed_principals,
      rname:: rname,
      service_type:: '${aws_vpc_endpoint_service.%s.service_type}' % rname,
      availability_zones:: '${aws_vpc_endpoint_service.%s.availability_zones}' % rname,
      base_endpoint_dns_names:: '${aws_vpc_endpoint_service.%s.base_endpoint_dns_names}' % rname,
      manages_vpc_endpoints:: '${aws_vpc_endpoint_service.%s.manages_vpc_endpoints}' % rname,
      service_name:: '${aws_vpc_endpoint_service.%s.service_name}' % rname,
      private_dns_name:: '${aws_vpc_endpoint_service.%s.private_dns_name}' % rname,
      state:: '${aws_vpc_endpoint_service.%s.state}' % rname,
    },
    // aws_waf_size_constraint_set - https://www.terraform.io/docs/providers/aws/r/waf_size_constraint_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_size_constraint_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_size_constraint_set.html#id.
    aws_waf_size_constraint_set(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_appsync_datasource - https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html#name.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html#type.
    // @param api_id (required) https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html#api_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html#id.
    // @param service_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html#service_role_arn.
    aws_appsync_datasource(rname, name, type, api_id, description=null, id=null, service_role_arn=null):: {
      name: name,
      type: type,
      api_id: api_id,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if service_role_arn != null then service_role_arn]: service_role_arn,
      rname:: rname,
      arn:: '${aws_appsync_datasource.%s.arn}' % rname,
    },
    // aws_load_balancer_policy - https://www.terraform.io/docs/providers/aws/r/load_balancer_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param load_balancer_name (required) https://www.terraform.io/docs/providers/aws/r/load_balancer_policy.html#load_balancer_name.
    // @param policy_name (required) https://www.terraform.io/docs/providers/aws/r/load_balancer_policy.html#policy_name.
    // @param policy_type_name (required) https://www.terraform.io/docs/providers/aws/r/load_balancer_policy.html#policy_type_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/load_balancer_policy.html#id.
    aws_load_balancer_policy(rname, load_balancer_name, policy_name, policy_type_name, id=null):: {
      load_balancer_name: load_balancer_name,
      policy_name: policy_name,
      policy_type_name: policy_type_name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_db_instance - https://www.terraform.io/docs/providers/aws/r/db_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_class (required) https://www.terraform.io/docs/providers/aws/r/db_instance.html#instance_class.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#auto_minor_version_upgrade.
    // @param deletion_protection (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#deletion_protection.
    // @param monitoring_interval (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#monitoring_interval.
    // @param parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#parameter_group_name.
    // @param license_model (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#license_model.
    // @param timezone (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#timezone.
    // @param allocated_storage (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#allocated_storage.
    // @param db_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#db_subnet_group_name.
    // @param final_snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#final_snapshot_identifier.
    // @param replicate_source_db (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#replicate_source_db.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#engine_version.
    // @param username (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#username.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#availability_zone.
    // @param allow_major_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#allow_major_version_upgrade.
    // @param character_set_name (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#character_set_name.
    // @param monitoring_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#monitoring_role_arn.
    // @param backup_window (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#backup_window.
    // @param iam_database_authentication_enabled (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#iam_database_authentication_enabled.
    // @param iops (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#iops.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#kms_key_id.
    // @param max_allocated_storage (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#max_allocated_storage.
    // @param storage_type (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#storage_type.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#tags.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#vpc_security_group_ids.
    // @param security_group_names (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#security_group_names.
    // @param backup_retention_period (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#backup_retention_period.
    // @param multi_az (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#multi_az.
    // @param option_group_name (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#option_group_name.
    // @param performance_insights_enabled (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#performance_insights_enabled.
    // @param performance_insights_retention_period (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#performance_insights_retention_period.
    // @param publicly_accessible (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#publicly_accessible.
    // @param performance_insights_kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#performance_insights_kms_key_id.
    // @param enabled_cloudwatch_logs_exports (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#enabled_cloudwatch_logs_exports.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#name.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#engine.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#id.
    // @param maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#maintenance_window.
    // @param copy_tags_to_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#copy_tags_to_snapshot.
    // @param identifier (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#identifier.
    // @param domain_iam_role_name (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#domain_iam_role_name.
    // @param identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#identifier_prefix.
    // @param password (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#password.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#port.
    // @param snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#snapshot_identifier.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#apply_immediately.
    // @param domain (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#domain.
    // @param skip_final_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#skip_final_snapshot.
    // @param storage_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#storage_encrypted.
    aws_db_instance(rname, instance_class, auto_minor_version_upgrade=null, deletion_protection=null, monitoring_interval=null, parameter_group_name=null, license_model=null, timezone=null, allocated_storage=null, db_subnet_group_name=null, final_snapshot_identifier=null, replicate_source_db=null, engine_version=null, username=null, availability_zone=null, allow_major_version_upgrade=null, character_set_name=null, monitoring_role_arn=null, backup_window=null, iam_database_authentication_enabled=null, iops=null, kms_key_id=null, max_allocated_storage=null, storage_type=null, tags=null, vpc_security_group_ids=null, security_group_names=null, backup_retention_period=null, multi_az=null, option_group_name=null, performance_insights_enabled=null, performance_insights_retention_period=null, publicly_accessible=null, performance_insights_kms_key_id=null, enabled_cloudwatch_logs_exports=null, name=null, engine=null, id=null, maintenance_window=null, copy_tags_to_snapshot=null, identifier=null, domain_iam_role_name=null, identifier_prefix=null, password=null, port=null, snapshot_identifier=null, apply_immediately=null, domain=null, skip_final_snapshot=null, storage_encrypted=null):: {
      instance_class: instance_class,
      [if auto_minor_version_upgrade != null then auto_minor_version_upgrade]: auto_minor_version_upgrade,
      [if deletion_protection != null then deletion_protection]: deletion_protection,
      [if monitoring_interval != null then monitoring_interval]: monitoring_interval,
      [if parameter_group_name != null then parameter_group_name]: parameter_group_name,
      [if license_model != null then license_model]: license_model,
      [if timezone != null then timezone]: timezone,
      [if allocated_storage != null then allocated_storage]: allocated_storage,
      [if db_subnet_group_name != null then db_subnet_group_name]: db_subnet_group_name,
      [if final_snapshot_identifier != null then final_snapshot_identifier]: final_snapshot_identifier,
      [if replicate_source_db != null then replicate_source_db]: replicate_source_db,
      [if engine_version != null then engine_version]: engine_version,
      [if username != null then username]: username,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if allow_major_version_upgrade != null then allow_major_version_upgrade]: allow_major_version_upgrade,
      [if character_set_name != null then character_set_name]: character_set_name,
      [if monitoring_role_arn != null then monitoring_role_arn]: monitoring_role_arn,
      [if backup_window != null then backup_window]: backup_window,
      [if iam_database_authentication_enabled != null then iam_database_authentication_enabled]: iam_database_authentication_enabled,
      [if iops != null then iops]: iops,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if max_allocated_storage != null then max_allocated_storage]: max_allocated_storage,
      [if storage_type != null then storage_type]: storage_type,
      [if tags != null then tags]: tags,
      [if vpc_security_group_ids != null then vpc_security_group_ids]: vpc_security_group_ids,
      [if security_group_names != null then security_group_names]: security_group_names,
      [if backup_retention_period != null then backup_retention_period]: backup_retention_period,
      [if multi_az != null then multi_az]: multi_az,
      [if option_group_name != null then option_group_name]: option_group_name,
      [if performance_insights_enabled != null then performance_insights_enabled]: performance_insights_enabled,
      [if performance_insights_retention_period != null then performance_insights_retention_period]: performance_insights_retention_period,
      [if publicly_accessible != null then publicly_accessible]: publicly_accessible,
      [if performance_insights_kms_key_id != null then performance_insights_kms_key_id]: performance_insights_kms_key_id,
      [if enabled_cloudwatch_logs_exports != null then enabled_cloudwatch_logs_exports]: enabled_cloudwatch_logs_exports,
      [if name != null then name]: name,
      [if engine != null then engine]: engine,
      [if id != null then id]: id,
      [if maintenance_window != null then maintenance_window]: maintenance_window,
      [if copy_tags_to_snapshot != null then copy_tags_to_snapshot]: copy_tags_to_snapshot,
      [if identifier != null then identifier]: identifier,
      [if domain_iam_role_name != null then domain_iam_role_name]: domain_iam_role_name,
      [if identifier_prefix != null then identifier_prefix]: identifier_prefix,
      [if password != null then password]: password,
      [if port != null then port]: port,
      [if snapshot_identifier != null then snapshot_identifier]: snapshot_identifier,
      [if apply_immediately != null then apply_immediately]: apply_immediately,
      [if domain != null then domain]: domain,
      [if skip_final_snapshot != null then skip_final_snapshot]: skip_final_snapshot,
      [if storage_encrypted != null then storage_encrypted]: storage_encrypted,
      rname:: rname,
      replicas:: '${aws_db_instance.%s.replicas}' % rname,
      resource_id:: '${aws_db_instance.%s.resource_id}' % rname,
      endpoint:: '${aws_db_instance.%s.endpoint}' % rname,
      ca_cert_identifier:: '${aws_db_instance.%s.ca_cert_identifier}' % rname,
      address:: '${aws_db_instance.%s.address}' % rname,
      status:: '${aws_db_instance.%s.status}' % rname,
      arn:: '${aws_db_instance.%s.arn}' % rname,
      hosted_zone_id:: '${aws_db_instance.%s.hosted_zone_id}' % rname,
    },
    // aws_acmpca_certificate_authority - https://www.terraform.io/docs/providers/aws/r/acmpca_certificate_authority.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/acmpca_certificate_authority.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/acmpca_certificate_authority.html#id.
    // @param permanent_deletion_time_in_days (optional) https://www.terraform.io/docs/providers/aws/r/acmpca_certificate_authority.html#permanent_deletion_time_in_days.
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/acmpca_certificate_authority.html#type.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/acmpca_certificate_authority.html#tags.
    aws_acmpca_certificate_authority(rname, enabled=null, id=null, permanent_deletion_time_in_days=null, type=null, tags=null):: {
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      [if permanent_deletion_time_in_days != null then permanent_deletion_time_in_days]: permanent_deletion_time_in_days,
      [if type != null then type]: type,
      [if tags != null then tags]: tags,
      rname:: rname,
      certificate:: '${aws_acmpca_certificate_authority.%s.certificate}' % rname,
      not_after:: '${aws_acmpca_certificate_authority.%s.not_after}' % rname,
      not_before:: '${aws_acmpca_certificate_authority.%s.not_before}' % rname,
      serial:: '${aws_acmpca_certificate_authority.%s.serial}' % rname,
      status:: '${aws_acmpca_certificate_authority.%s.status}' % rname,
      arn:: '${aws_acmpca_certificate_authority.%s.arn}' % rname,
      certificate_chain:: '${aws_acmpca_certificate_authority.%s.certificate_chain}' % rname,
      certificate_signing_request:: '${aws_acmpca_certificate_authority.%s.certificate_signing_request}' % rname,
    },
    // aws_api_gateway_api_key - https://www.terraform.io/docs/providers/aws/r/api_gateway_api_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_api_key.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_api_key.html#id.
    // @param value (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_api_key.html#value.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_api_key.html#description.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_api_key.html#enabled.
    aws_api_gateway_api_key(rname, name, id=null, value=null, description=null, enabled=null):: {
      name: name,
      [if id != null then id]: id,
      [if value != null then value]: value,
      [if description != null then description]: description,
      [if enabled != null then enabled]: enabled,
      rname:: rname,
      last_updated_date:: '${aws_api_gateway_api_key.%s.last_updated_date}' % rname,
      created_date:: '${aws_api_gateway_api_key.%s.created_date}' % rname,
    },
    // aws_guardduty_threatintelset - https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param detector_id (required) https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html#detector_id.
    // @param format (required) https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html#format.
    // @param location (required) https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html#location.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html#name.
    // @param activate (required) https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html#activate.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html#id.
    aws_guardduty_threatintelset(rname, detector_id, format, location, name, activate, id=null):: {
      detector_id: detector_id,
      format: format,
      location: location,
      name: name,
      activate: activate,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_lambda_alias - https://www.terraform.io/docs/providers/aws/r/lambda_alias.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/lambda_alias.html#name.
    // @param function_name (required) https://www.terraform.io/docs/providers/aws/r/lambda_alias.html#function_name.
    // @param function_version (required) https://www.terraform.io/docs/providers/aws/r/lambda_alias.html#function_version.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/lambda_alias.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lambda_alias.html#id.
    aws_lambda_alias(rname, name, function_name, function_version, description=null, id=null):: {
      name: name,
      function_name: function_name,
      function_version: function_version,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      invoke_arn:: '${aws_lambda_alias.%s.invoke_arn}' % rname,
      arn:: '${aws_lambda_alias.%s.arn}' % rname,
    },
    // aws_route53_query_log - https://www.terraform.io/docs/providers/aws/r/route53_query_log.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cloudwatch_log_group_arn (required) https://www.terraform.io/docs/providers/aws/r/route53_query_log.html#cloudwatch_log_group_arn.
    // @param zone_id (required) https://www.terraform.io/docs/providers/aws/r/route53_query_log.html#zone_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_query_log.html#id.
    aws_route53_query_log(rname, cloudwatch_log_group_arn, zone_id, id=null):: {
      cloudwatch_log_group_arn: cloudwatch_log_group_arn,
      zone_id: zone_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_s3_account_public_access_block - https://www.terraform.io/docs/providers/aws/r/s3_account_public_access_block.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param account_id (optional) https://www.terraform.io/docs/providers/aws/r/s3_account_public_access_block.html#account_id.
    // @param block_public_acls (optional) https://www.terraform.io/docs/providers/aws/r/s3_account_public_access_block.html#block_public_acls.
    // @param block_public_policy (optional) https://www.terraform.io/docs/providers/aws/r/s3_account_public_access_block.html#block_public_policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_account_public_access_block.html#id.
    // @param ignore_public_acls (optional) https://www.terraform.io/docs/providers/aws/r/s3_account_public_access_block.html#ignore_public_acls.
    // @param restrict_public_buckets (optional) https://www.terraform.io/docs/providers/aws/r/s3_account_public_access_block.html#restrict_public_buckets.
    aws_s3_account_public_access_block(rname, account_id=null, block_public_acls=null, block_public_policy=null, id=null, ignore_public_acls=null, restrict_public_buckets=null):: {
      [if account_id != null then account_id]: account_id,
      [if block_public_acls != null then block_public_acls]: block_public_acls,
      [if block_public_policy != null then block_public_policy]: block_public_policy,
      [if id != null then id]: id,
      [if ignore_public_acls != null then ignore_public_acls]: ignore_public_acls,
      [if restrict_public_buckets != null then restrict_public_buckets]: restrict_public_buckets,
      rname:: rname,
    },
    // aws_swf_domain - https://www.terraform.io/docs/providers/aws/r/swf_domain.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param workflow_execution_retention_period_in_days (required) https://www.terraform.io/docs/providers/aws/r/swf_domain.html#workflow_execution_retention_period_in_days.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/swf_domain.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/swf_domain.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/swf_domain.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/swf_domain.html#name_prefix.
    aws_swf_domain(rname, workflow_execution_retention_period_in_days, description=null, id=null, name=null, name_prefix=null):: {
      workflow_execution_retention_period_in_days: workflow_execution_retention_period_in_days,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      rname:: rname,
    },
    // aws_ami_copy - https://www.terraform.io/docs/providers/aws/r/ami_copy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#name.
    // @param source_ami_id (required) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#source_ami_id.
    // @param source_ami_region (required) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#source_ami_region.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#kms_key_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#description.
    // @param encrypted (optional) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#encrypted.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#tags.
    aws_ami_copy(rname, name, source_ami_id, source_ami_region, kms_key_id=null, description=null, encrypted=null, id=null, tags=null):: {
      name: name,
      source_ami_id: source_ami_id,
      source_ami_region: source_ami_region,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if description != null then description]: description,
      [if encrypted != null then encrypted]: encrypted,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      kernel_id:: '${aws_ami_copy.%s.kernel_id}' % rname,
      root_snapshot_id:: '${aws_ami_copy.%s.root_snapshot_id}' % rname,
      ramdisk_id:: '${aws_ami_copy.%s.ramdisk_id}' % rname,
      root_device_name:: '${aws_ami_copy.%s.root_device_name}' % rname,
      ena_support:: '${aws_ami_copy.%s.ena_support}' % rname,
      virtualization_type:: '${aws_ami_copy.%s.virtualization_type}' % rname,
      architecture:: '${aws_ami_copy.%s.architecture}' % rname,
      image_location:: '${aws_ami_copy.%s.image_location}' % rname,
      manage_ebs_snapshots:: '${aws_ami_copy.%s.manage_ebs_snapshots}' % rname,
      sriov_net_support:: '${aws_ami_copy.%s.sriov_net_support}' % rname,
    },
    // aws_iot_certificate - https://www.terraform.io/docs/providers/aws/r/iot_certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param active (required) https://www.terraform.io/docs/providers/aws/r/iot_certificate.html#active.
    // @param csr (optional) https://www.terraform.io/docs/providers/aws/r/iot_certificate.html#csr.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_certificate.html#id.
    aws_iot_certificate(rname, active, csr=null, id=null):: {
      active: active,
      [if csr != null then csr]: csr,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_iot_certificate.%s.arn}' % rname,
      certificate_pem:: '${aws_iot_certificate.%s.certificate_pem}' % rname,
      private_key:: '${aws_iot_certificate.%s.private_key}' % rname,
      public_key:: '${aws_iot_certificate.%s.public_key}' % rname,
    },
    // aws_media_store_container_policy - https://www.terraform.io/docs/providers/aws/r/media_store_container_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param container_name (required) https://www.terraform.io/docs/providers/aws/r/media_store_container_policy.html#container_name.
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/media_store_container_policy.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/media_store_container_policy.html#id.
    aws_media_store_container_policy(rname, container_name, policy, id=null):: {
      container_name: container_name,
      policy: policy,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_vpc_endpoint_route_table_association - https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_route_table_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param route_table_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_route_table_association.html#route_table_id.
    // @param vpc_endpoint_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_route_table_association.html#vpc_endpoint_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_route_table_association.html#id.
    aws_vpc_endpoint_route_table_association(rname, route_table_id, vpc_endpoint_id, id=null):: {
      route_table_id: route_table_id,
      vpc_endpoint_id: vpc_endpoint_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_elastictranscoder_preset - https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param container (required) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html#container.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html#name.
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html#type.
    // @param video_codec_options (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html#video_codec_options.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html#id.
    aws_elastictranscoder_preset(rname, container, name=null, type=null, video_codec_options=null, description=null, id=null):: {
      container: container,
      [if name != null then name]: name,
      [if type != null then type]: type,
      [if video_codec_options != null then video_codec_options]: video_codec_options,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_elastictranscoder_preset.%s.arn}' % rname,
    },
    // aws_dynamodb_global_table - https://www.terraform.io/docs/providers/aws/r/dynamodb_global_table.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dynamodb_global_table.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_global_table.html#id.
    aws_dynamodb_global_table(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_dynamodb_global_table.%s.arn}' % rname,
    },
    // aws_elasticache_subnet_group - https://www.terraform.io/docs/providers/aws/r/elasticache_subnet_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/elasticache_subnet_group.html#name.
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/elasticache_subnet_group.html#subnet_ids.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_subnet_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_subnet_group.html#id.
    aws_elasticache_subnet_group(rname, name, subnet_ids, description=null, id=null):: {
      name: name,
      subnet_ids: subnet_ids,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_guardduty_member - https://www.terraform.io/docs/providers/aws/r/guardduty_member.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param account_id (required) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#account_id.
    // @param detector_id (required) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#detector_id.
    // @param email (required) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#email.
    // @param invite (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#invite.
    // @param disable_email_notification (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#disable_email_notification.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#id.
    // @param invitation_message (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#invitation_message.
    aws_guardduty_member(rname, account_id, detector_id, email, invite=null, disable_email_notification=null, id=null, invitation_message=null):: {
      account_id: account_id,
      detector_id: detector_id,
      email: email,
      [if invite != null then invite]: invite,
      [if disable_email_notification != null then disable_email_notification]: disable_email_notification,
      [if id != null then id]: id,
      [if invitation_message != null then invitation_message]: invitation_message,
      rname:: rname,
      relationship_status:: '${aws_guardduty_member.%s.relationship_status}' % rname,
    },
    // aws_lb_listener_certificate - https://www.terraform.io/docs/providers/aws/r/lb_listener_certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate_arn (required) https://www.terraform.io/docs/providers/aws/r/lb_listener_certificate.html#certificate_arn.
    // @param listener_arn (required) https://www.terraform.io/docs/providers/aws/r/lb_listener_certificate.html#listener_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener_certificate.html#id.
    aws_lb_listener_certificate(rname, certificate_arn, listener_arn, id=null):: {
      certificate_arn: certificate_arn,
      listener_arn: listener_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_pinpoint_app - https://www.terraform.io/docs/providers/aws/r/pinpoint_app.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_app.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_app.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_app.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_app.html#name.
    aws_pinpoint_app(rname, name_prefix=null, tags=null, id=null, name=null):: {
      [if name_prefix != null then name_prefix]: name_prefix,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      [if name != null then name]: name,
      rname:: rname,
      application_id:: '${aws_pinpoint_app.%s.application_id}' % rname,
      arn:: '${aws_pinpoint_app.%s.arn}' % rname,
    },
    // aws_ssm_patch_baseline - https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#name.
    // @param operating_system (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#operating_system.
    // @param rejected_patches (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#rejected_patches.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#tags.
    // @param approved_patches (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#approved_patches.
    // @param approved_patches_compliance_level (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#approved_patches_compliance_level.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#id.
    aws_ssm_patch_baseline(rname, name, operating_system=null, rejected_patches=null, tags=null, approved_patches=null, approved_patches_compliance_level=null, description=null, id=null):: {
      name: name,
      [if operating_system != null then operating_system]: operating_system,
      [if rejected_patches != null then rejected_patches]: rejected_patches,
      [if tags != null then tags]: tags,
      [if approved_patches != null then approved_patches]: approved_patches,
      [if approved_patches_compliance_level != null then approved_patches_compliance_level]: approved_patches_compliance_level,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_backup_plan - https://www.terraform.io/docs/providers/aws/r/backup_plan.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/backup_plan.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/backup_plan.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/backup_plan.html#tags.
    aws_backup_plan(rname, name, id=null, tags=null):: {
      name: name,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_backup_plan.%s.arn}' % rname,
      version:: '${aws_backup_plan.%s.version}' % rname,
    },
    // aws_dms_replication_instance - https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param replication_instance_class (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#replication_instance_class.
    // @param replication_instance_id (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#replication_instance_id.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#auto_minor_version_upgrade.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#engine_version.
    // @param replication_subnet_group_id (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#replication_subnet_group_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#tags.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#apply_immediately.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#availability_zone.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#id.
    // @param publicly_accessible (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#publicly_accessible.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#vpc_security_group_ids.
    // @param allocated_storage (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#allocated_storage.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#kms_key_arn.
    // @param multi_az (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#multi_az.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#preferred_maintenance_window.
    aws_dms_replication_instance(rname, replication_instance_class, replication_instance_id, auto_minor_version_upgrade=null, engine_version=null, replication_subnet_group_id=null, tags=null, apply_immediately=null, availability_zone=null, id=null, publicly_accessible=null, vpc_security_group_ids=null, allocated_storage=null, kms_key_arn=null, multi_az=null, preferred_maintenance_window=null):: {
      replication_instance_class: replication_instance_class,
      replication_instance_id: replication_instance_id,
      [if auto_minor_version_upgrade != null then auto_minor_version_upgrade]: auto_minor_version_upgrade,
      [if engine_version != null then engine_version]: engine_version,
      [if replication_subnet_group_id != null then replication_subnet_group_id]: replication_subnet_group_id,
      [if tags != null then tags]: tags,
      [if apply_immediately != null then apply_immediately]: apply_immediately,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if id != null then id]: id,
      [if publicly_accessible != null then publicly_accessible]: publicly_accessible,
      [if vpc_security_group_ids != null then vpc_security_group_ids]: vpc_security_group_ids,
      [if allocated_storage != null then allocated_storage]: allocated_storage,
      [if kms_key_arn != null then kms_key_arn]: kms_key_arn,
      [if multi_az != null then multi_az]: multi_az,
      [if preferred_maintenance_window != null then preferred_maintenance_window]: preferred_maintenance_window,
      rname:: rname,
      replication_instance_public_ips:: '${aws_dms_replication_instance.%s.replication_instance_public_ips}' % rname,
      replication_instance_arn:: '${aws_dms_replication_instance.%s.replication_instance_arn}' % rname,
      replication_instance_private_ips:: '${aws_dms_replication_instance.%s.replication_instance_private_ips}' % rname,
    },
    // aws_lightsail_domain - https://www.terraform.io/docs/providers/aws/r/lightsail_domain.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain_name (required) https://www.terraform.io/docs/providers/aws/r/lightsail_domain.html#domain_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_domain.html#id.
    aws_lightsail_domain(rname, domain_name, id=null):: {
      domain_name: domain_name,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_lightsail_domain.%s.arn}' % rname,
    },
    // aws_nat_gateway - https://www.terraform.io/docs/providers/aws/r/nat_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_id (required) https://www.terraform.io/docs/providers/aws/r/nat_gateway.html#subnet_id.
    // @param allocation_id (required) https://www.terraform.io/docs/providers/aws/r/nat_gateway.html#allocation_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/nat_gateway.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/nat_gateway.html#id.
    aws_nat_gateway(rname, subnet_id, allocation_id, tags=null, id=null):: {
      subnet_id: subnet_id,
      allocation_id: allocation_id,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      private_ip:: '${aws_nat_gateway.%s.private_ip}' % rname,
      public_ip:: '${aws_nat_gateway.%s.public_ip}' % rname,
      network_interface_id:: '${aws_nat_gateway.%s.network_interface_id}' % rname,
    },
    // aws_securityhub_standards_subscription - https://www.terraform.io/docs/providers/aws/r/securityhub_standards_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param standards_arn (required) https://www.terraform.io/docs/providers/aws/r/securityhub_standards_subscription.html#standards_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/securityhub_standards_subscription.html#id.
    aws_securityhub_standards_subscription(rname, standards_arn, id=null):: {
      standards_arn: standards_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_athena_workgroup - https://www.terraform.io/docs/providers/aws/r/athena_workgroup.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/athena_workgroup.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/athena_workgroup.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/athena_workgroup.html#id.
    // @param state (optional) https://www.terraform.io/docs/providers/aws/r/athena_workgroup.html#state.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/athena_workgroup.html#tags.
    aws_athena_workgroup(rname, name, description=null, id=null, state=null, tags=null):: {
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if state != null then state]: state,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_athena_workgroup.%s.arn}' % rname,
    },
    // aws_ec2_transit_gateway_route - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param transit_gateway_route_table_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route.html#transit_gateway_route_table_id.
    // @param destination_cidr_block (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route.html#destination_cidr_block.
    // @param transit_gateway_attachment_id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route.html#transit_gateway_attachment_id.
    // @param blackhole (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route.html#blackhole.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route.html#id.
    aws_ec2_transit_gateway_route(rname, transit_gateway_route_table_id, destination_cidr_block, transit_gateway_attachment_id=null, blackhole=null, id=null):: {
      transit_gateway_route_table_id: transit_gateway_route_table_id,
      destination_cidr_block: destination_cidr_block,
      [if transit_gateway_attachment_id != null then transit_gateway_attachment_id]: transit_gateway_attachment_id,
      [if blackhole != null then blackhole]: blackhole,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_elasticache_parameter_group - https://www.terraform.io/docs/providers/aws/r/elasticache_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/elasticache_parameter_group.html#family.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/elasticache_parameter_group.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_parameter_group.html#id.
    aws_elasticache_parameter_group(rname, family, name, description=null, id=null):: {
      family: family,
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_elastictranscoder_pipeline - https://www.terraform.io/docs/providers/aws/r/elastictranscoder_pipeline.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param role (required) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_pipeline.html#role.
    // @param input_bucket (required) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_pipeline.html#input_bucket.
    // @param aws_kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_pipeline.html#aws_kms_key_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_pipeline.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_pipeline.html#name.
    // @param output_bucket (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_pipeline.html#output_bucket.
    aws_elastictranscoder_pipeline(rname, role, input_bucket, aws_kms_key_arn=null, id=null, name=null, output_bucket=null):: {
      role: role,
      input_bucket: input_bucket,
      [if aws_kms_key_arn != null then aws_kms_key_arn]: aws_kms_key_arn,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if output_bucket != null then output_bucket]: output_bucket,
      rname:: rname,
      arn:: '${aws_elastictranscoder_pipeline.%s.arn}' % rname,
    },
    // aws_glue_trigger - https://www.terraform.io/docs/providers/aws/r/glue_trigger.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/glue_trigger.html#type.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_trigger.html#name.
    // @param schedule (optional) https://www.terraform.io/docs/providers/aws/r/glue_trigger.html#schedule.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/glue_trigger.html#description.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/glue_trigger.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_trigger.html#id.
    aws_glue_trigger(rname, type, name, schedule=null, description=null, enabled=null, id=null):: {
      type: type,
      name: name,
      [if schedule != null then schedule]: schedule,
      [if description != null then description]: description,
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_inspector_assessment_template - https://www.terraform.io/docs/providers/aws/r/inspector_assessment_template.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param duration (required) https://www.terraform.io/docs/providers/aws/r/inspector_assessment_template.html#duration.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/inspector_assessment_template.html#name.
    // @param rules_package_arns (required) https://www.terraform.io/docs/providers/aws/r/inspector_assessment_template.html#rules_package_arns.
    // @param target_arn (required) https://www.terraform.io/docs/providers/aws/r/inspector_assessment_template.html#target_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/inspector_assessment_template.html#id.
    aws_inspector_assessment_template(rname, duration, name, rules_package_arns, target_arn, id=null):: {
      duration: duration,
      name: name,
      rules_package_arns: rules_package_arns,
      target_arn: target_arn,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_inspector_assessment_template.%s.arn}' % rname,
    },
    // aws_route_table_association - https://www.terraform.io/docs/providers/aws/r/route_table_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param route_table_id (required) https://www.terraform.io/docs/providers/aws/r/route_table_association.html#route_table_id.
    // @param subnet_id (required) https://www.terraform.io/docs/providers/aws/r/route_table_association.html#subnet_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route_table_association.html#id.
    aws_route_table_association(rname, route_table_id, subnet_id, id=null):: {
      route_table_id: route_table_id,
      subnet_id: subnet_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_vpc_endpoint_service_allowed_principal - https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service_allowed_principal.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param principal_arn (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service_allowed_principal.html#principal_arn.
    // @param vpc_endpoint_service_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service_allowed_principal.html#vpc_endpoint_service_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service_allowed_principal.html#id.
    aws_vpc_endpoint_service_allowed_principal(rname, principal_arn, vpc_endpoint_service_id, id=null):: {
      principal_arn: principal_arn,
      vpc_endpoint_service_id: vpc_endpoint_service_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_cloudhsm_v2_cluster - https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param hsm_type (required) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_cluster.html#hsm_type.
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_cluster.html#subnet_ids.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_cluster.html#id.
    // @param source_backup_identifier (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_cluster.html#source_backup_identifier.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_cluster.html#tags.
    aws_cloudhsm_v2_cluster(rname, hsm_type, subnet_ids, id=null, source_backup_identifier=null, tags=null):: {
      hsm_type: hsm_type,
      subnet_ids: subnet_ids,
      [if id != null then id]: id,
      [if source_backup_identifier != null then source_backup_identifier]: source_backup_identifier,
      [if tags != null then tags]: tags,
      rname:: rname,
      cluster_certificates:: '${aws_cloudhsm_v2_cluster.%s.cluster_certificates}' % rname,
      cluster_id:: '${aws_cloudhsm_v2_cluster.%s.cluster_id}' % rname,
      vpc_id:: '${aws_cloudhsm_v2_cluster.%s.vpc_id}' % rname,
      cluster_state:: '${aws_cloudhsm_v2_cluster.%s.cluster_state}' % rname,
      security_group_id:: '${aws_cloudhsm_v2_cluster.%s.security_group_id}' % rname,
    },
    // aws_wafregional_regex_match_set - https://www.terraform.io/docs/providers/aws/r/wafregional_regex_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_regex_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_regex_match_set.html#id.
    aws_wafregional_regex_match_set(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_waf_regex_pattern_set - https://www.terraform.io/docs/providers/aws/r/waf_regex_pattern_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_regex_pattern_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_regex_pattern_set.html#id.
    // @param regex_pattern_strings (optional) https://www.terraform.io/docs/providers/aws/r/waf_regex_pattern_set.html#regex_pattern_strings.
    aws_waf_regex_pattern_set(rname, name, id=null, regex_pattern_strings=null):: {
      name: name,
      [if id != null then id]: id,
      [if regex_pattern_strings != null then regex_pattern_strings]: regex_pattern_strings,
      rname:: rname,
    },
    // aws_elastic_beanstalk_environment - https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#application.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#name.
    // @param version_label (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#version_label.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#description.
    // @param tier (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#tier.
    // @param template_name (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#template_name.
    // @param wait_for_ready_timeout (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#wait_for_ready_timeout.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#tags.
    // @param solution_stack_name (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#solution_stack_name.
    // @param cname_prefix (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#cname_prefix.
    // @param platform_arn (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#platform_arn.
    // @param poll_interval (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#poll_interval.
    aws_elastic_beanstalk_environment(rname, application, name, version_label=null, description=null, tier=null, template_name=null, wait_for_ready_timeout=null, id=null, tags=null, solution_stack_name=null, cname_prefix=null, platform_arn=null, poll_interval=null):: {
      application: application,
      name: name,
      [if version_label != null then version_label]: version_label,
      [if description != null then description]: description,
      [if tier != null then tier]: tier,
      [if template_name != null then template_name]: template_name,
      [if wait_for_ready_timeout != null then wait_for_ready_timeout]: wait_for_ready_timeout,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if solution_stack_name != null then solution_stack_name]: solution_stack_name,
      [if cname_prefix != null then cname_prefix]: cname_prefix,
      [if platform_arn != null then platform_arn]: platform_arn,
      [if poll_interval != null then poll_interval]: poll_interval,
      rname:: rname,
      arn:: '${aws_elastic_beanstalk_environment.%s.arn}' % rname,
      cname:: '${aws_elastic_beanstalk_environment.%s.cname}' % rname,
      load_balancers:: '${aws_elastic_beanstalk_environment.%s.load_balancers}' % rname,
      queues:: '${aws_elastic_beanstalk_environment.%s.queues}' % rname,
      triggers:: '${aws_elastic_beanstalk_environment.%s.triggers}' % rname,
      instances:: '${aws_elastic_beanstalk_environment.%s.instances}' % rname,
      all_settings:: '${aws_elastic_beanstalk_environment.%s.all_settings}' % rname,
      autoscaling_groups:: '${aws_elastic_beanstalk_environment.%s.autoscaling_groups}' % rname,
      launch_configurations:: '${aws_elastic_beanstalk_environment.%s.launch_configurations}' % rname,
    },
    // aws_gamelift_fleet - https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param build_id (required) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#build_id.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#name.
    // @param ec2_instance_type (required) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#ec2_instance_type.
    // @param metric_groups (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#metric_groups.
    // @param new_game_session_protection_policy (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#new_game_session_protection_policy.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#id.
    aws_gamelift_fleet(rname, build_id, name, ec2_instance_type, metric_groups=null, new_game_session_protection_policy=null, description=null, id=null):: {
      build_id: build_id,
      name: name,
      ec2_instance_type: ec2_instance_type,
      [if metric_groups != null then metric_groups]: metric_groups,
      [if new_game_session_protection_policy != null then new_game_session_protection_policy]: new_game_session_protection_policy,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_gamelift_fleet.%s.arn}' % rname,
      operating_system:: '${aws_gamelift_fleet.%s.operating_system}' % rname,
      log_paths:: '${aws_gamelift_fleet.%s.log_paths}' % rname,
    },
    // aws_iam_user_policy_attachment - https://www.terraform.io/docs/providers/aws/r/iam_user_policy_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param user (required) https://www.terraform.io/docs/providers/aws/r/iam_user_policy_attachment.html#user.
    // @param policy_arn (required) https://www.terraform.io/docs/providers/aws/r/iam_user_policy_attachment.html#policy_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_policy_attachment.html#id.
    aws_iam_user_policy_attachment(rname, user, policy_arn, id=null):: {
      user: user,
      policy_arn: policy_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_opsworks_user_profile - https://www.terraform.io/docs/providers/aws/r/opsworks_user_profile.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param ssh_username (required) https://www.terraform.io/docs/providers/aws/r/opsworks_user_profile.html#ssh_username.
    // @param user_arn (required) https://www.terraform.io/docs/providers/aws/r/opsworks_user_profile.html#user_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_user_profile.html#id.
    // @param ssh_public_key (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_user_profile.html#ssh_public_key.
    // @param allow_self_management (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_user_profile.html#allow_self_management.
    aws_opsworks_user_profile(rname, ssh_username, user_arn, id=null, ssh_public_key=null, allow_self_management=null):: {
      ssh_username: ssh_username,
      user_arn: user_arn,
      [if id != null then id]: id,
      [if ssh_public_key != null then ssh_public_key]: ssh_public_key,
      [if allow_self_management != null then allow_self_management]: allow_self_management,
      rname:: rname,
    },
    // aws_rds_cluster_instance - https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#cluster_identifier.
    // @param instance_class (required) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#instance_class.
    // @param promotion_tier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#promotion_tier.
    // @param db_parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#db_parameter_group_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#id.
    // @param performance_insights_kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#performance_insights_kms_key_id.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#engine_version.
    // @param performance_insights_enabled (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#performance_insights_enabled.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#preferred_maintenance_window.
    // @param copy_tags_to_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#copy_tags_to_snapshot.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#tags.
    // @param preferred_backup_window (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#preferred_backup_window.
    // @param identifier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#identifier.
    // @param publicly_accessible (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#publicly_accessible.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#apply_immediately.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#auto_minor_version_upgrade.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#availability_zone.
    // @param monitoring_interval (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#monitoring_interval.
    // @param db_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#db_subnet_group_name.
    // @param identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#identifier_prefix.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#engine.
    // @param monitoring_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#monitoring_role_arn.
    aws_rds_cluster_instance(rname, cluster_identifier, instance_class, promotion_tier=null, db_parameter_group_name=null, id=null, performance_insights_kms_key_id=null, engine_version=null, performance_insights_enabled=null, preferred_maintenance_window=null, copy_tags_to_snapshot=null, tags=null, preferred_backup_window=null, identifier=null, publicly_accessible=null, apply_immediately=null, auto_minor_version_upgrade=null, availability_zone=null, monitoring_interval=null, db_subnet_group_name=null, identifier_prefix=null, engine=null, monitoring_role_arn=null):: {
      cluster_identifier: cluster_identifier,
      instance_class: instance_class,
      [if promotion_tier != null then promotion_tier]: promotion_tier,
      [if db_parameter_group_name != null then db_parameter_group_name]: db_parameter_group_name,
      [if id != null then id]: id,
      [if performance_insights_kms_key_id != null then performance_insights_kms_key_id]: performance_insights_kms_key_id,
      [if engine_version != null then engine_version]: engine_version,
      [if performance_insights_enabled != null then performance_insights_enabled]: performance_insights_enabled,
      [if preferred_maintenance_window != null then preferred_maintenance_window]: preferred_maintenance_window,
      [if copy_tags_to_snapshot != null then copy_tags_to_snapshot]: copy_tags_to_snapshot,
      [if tags != null then tags]: tags,
      [if preferred_backup_window != null then preferred_backup_window]: preferred_backup_window,
      [if identifier != null then identifier]: identifier,
      [if publicly_accessible != null then publicly_accessible]: publicly_accessible,
      [if apply_immediately != null then apply_immediately]: apply_immediately,
      [if auto_minor_version_upgrade != null then auto_minor_version_upgrade]: auto_minor_version_upgrade,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if monitoring_interval != null then monitoring_interval]: monitoring_interval,
      [if db_subnet_group_name != null then db_subnet_group_name]: db_subnet_group_name,
      [if identifier_prefix != null then identifier_prefix]: identifier_prefix,
      [if engine != null then engine]: engine,
      [if monitoring_role_arn != null then monitoring_role_arn]: monitoring_role_arn,
      rname:: rname,
      kms_key_id:: '${aws_rds_cluster_instance.%s.kms_key_id}' % rname,
      port:: '${aws_rds_cluster_instance.%s.port}' % rname,
      dbi_resource_id:: '${aws_rds_cluster_instance.%s.dbi_resource_id}' % rname,
      endpoint:: '${aws_rds_cluster_instance.%s.endpoint}' % rname,
      storage_encrypted:: '${aws_rds_cluster_instance.%s.storage_encrypted}' % rname,
      writer:: '${aws_rds_cluster_instance.%s.writer}' % rname,
      arn:: '${aws_rds_cluster_instance.%s.arn}' % rname,
    },
    // aws_vpc_dhcp_options - https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param netbios_name_servers (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#netbios_name_servers.
    // @param netbios_node_type (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#netbios_node_type.
    // @param ntp_servers (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#ntp_servers.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#tags.
    // @param domain_name (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#domain_name.
    // @param domain_name_servers (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#domain_name_servers.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#id.
    aws_vpc_dhcp_options(rname, netbios_name_servers=null, netbios_node_type=null, ntp_servers=null, tags=null, domain_name=null, domain_name_servers=null, id=null):: {
      [if netbios_name_servers != null then netbios_name_servers]: netbios_name_servers,
      [if netbios_node_type != null then netbios_node_type]: netbios_node_type,
      [if ntp_servers != null then ntp_servers]: ntp_servers,
      [if tags != null then tags]: tags,
      [if domain_name != null then domain_name]: domain_name,
      [if domain_name_servers != null then domain_name_servers]: domain_name_servers,
      [if id != null then id]: id,
      rname:: rname,
      owner_id:: '${aws_vpc_dhcp_options.%s.owner_id}' % rname,
    },
    // aws_ec2_client_vpn_endpoint - https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param server_certificate_arn (required) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#server_certificate_arn.
    // @param client_cidr_block (required) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#client_cidr_block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#id.
    // @param split_tunnel (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#split_tunnel.
    // @param transport_protocol (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#transport_protocol.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#description.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#tags.
    // @param dns_servers (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#dns_servers.
    aws_ec2_client_vpn_endpoint(rname, server_certificate_arn, client_cidr_block, id=null, split_tunnel=null, transport_protocol=null, description=null, tags=null, dns_servers=null):: {
      server_certificate_arn: server_certificate_arn,
      client_cidr_block: client_cidr_block,
      [if id != null then id]: id,
      [if split_tunnel != null then split_tunnel]: split_tunnel,
      [if transport_protocol != null then transport_protocol]: transport_protocol,
      [if description != null then description]: description,
      [if tags != null then tags]: tags,
      [if dns_servers != null then dns_servers]: dns_servers,
      rname:: rname,
      status:: '${aws_ec2_client_vpn_endpoint.%s.status}' % rname,
      dns_name:: '${aws_ec2_client_vpn_endpoint.%s.dns_name}' % rname,
    },
    // aws_shield_protection - https://www.terraform.io/docs/providers/aws/r/shield_protection.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/shield_protection.html#name.
    // @param resource_arn (required) https://www.terraform.io/docs/providers/aws/r/shield_protection.html#resource_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/shield_protection.html#id.
    aws_shield_protection(rname, name, resource_arn, id=null):: {
      name: name,
      resource_arn: resource_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_ssm_activation - https://www.terraform.io/docs/providers/aws/r/ssm_activation.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param iam_role (required) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#iam_role.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#id.
    // @param registration_limit (optional) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#registration_limit.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#description.
    // @param expiration_date (optional) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#expiration_date.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#tags.
    aws_ssm_activation(rname, iam_role, id=null, registration_limit=null, description=null, expiration_date=null, name=null, tags=null):: {
      iam_role: iam_role,
      [if id != null then id]: id,
      [if registration_limit != null then registration_limit]: registration_limit,
      [if description != null then description]: description,
      [if expiration_date != null then expiration_date]: expiration_date,
      [if name != null then name]: name,
      [if tags != null then tags]: tags,
      rname:: rname,
      registration_count:: '${aws_ssm_activation.%s.registration_count}' % rname,
      activation_code:: '${aws_ssm_activation.%s.activation_code}' % rname,
      expired:: '${aws_ssm_activation.%s.expired}' % rname,
    },
    // aws_vpc_endpoint_connection_notification - https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_connection_notification.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param connection_events (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_connection_notification.html#connection_events.
    // @param connection_notification_arn (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_connection_notification.html#connection_notification_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_connection_notification.html#id.
    // @param vpc_endpoint_id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_connection_notification.html#vpc_endpoint_id.
    // @param vpc_endpoint_service_id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_connection_notification.html#vpc_endpoint_service_id.
    aws_vpc_endpoint_connection_notification(rname, connection_events, connection_notification_arn, id=null, vpc_endpoint_id=null, vpc_endpoint_service_id=null):: {
      connection_events: connection_events,
      connection_notification_arn: connection_notification_arn,
      [if id != null then id]: id,
      [if vpc_endpoint_id != null then vpc_endpoint_id]: vpc_endpoint_id,
      [if vpc_endpoint_service_id != null then vpc_endpoint_service_id]: vpc_endpoint_service_id,
      rname:: rname,
      notification_type:: '${aws_vpc_endpoint_connection_notification.%s.notification_type}' % rname,
      state:: '${aws_vpc_endpoint_connection_notification.%s.state}' % rname,
    },
    // aws_wafregional_xss_match_set - https://www.terraform.io/docs/providers/aws/r/wafregional_xss_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_xss_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_xss_match_set.html#id.
    aws_wafregional_xss_match_set(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_alb_target_group - https://www.terraform.io/docs/providers/aws/r/alb_target_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param deregistration_delay (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#deregistration_delay.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#name_prefix.
    // @param target_type (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#target_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#id.
    // @param lambda_multi_value_headers_enabled (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#lambda_multi_value_headers_enabled.
    // @param protocol (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#protocol.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#tags.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#vpc_id.
    // @param proxy_protocol_v2 (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#proxy_protocol_v2.
    // @param slow_start (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#slow_start.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#name.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#port.
    aws_alb_target_group(rname, deregistration_delay=null, name_prefix=null, target_type=null, id=null, lambda_multi_value_headers_enabled=null, protocol=null, tags=null, vpc_id=null, proxy_protocol_v2=null, slow_start=null, name=null, port=null):: {
      [if deregistration_delay != null then deregistration_delay]: deregistration_delay,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if target_type != null then target_type]: target_type,
      [if id != null then id]: id,
      [if lambda_multi_value_headers_enabled != null then lambda_multi_value_headers_enabled]: lambda_multi_value_headers_enabled,
      [if protocol != null then protocol]: protocol,
      [if tags != null then tags]: tags,
      [if vpc_id != null then vpc_id]: vpc_id,
      [if proxy_protocol_v2 != null then proxy_protocol_v2]: proxy_protocol_v2,
      [if slow_start != null then slow_start]: slow_start,
      [if name != null then name]: name,
      [if port != null then port]: port,
      rname:: rname,
      arn:: '${aws_alb_target_group.%s.arn}' % rname,
      arn_suffix:: '${aws_alb_target_group.%s.arn_suffix}' % rname,
    },
    // aws_default_subnet - https://www.terraform.io/docs/providers/aws/r/default_subnet.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param availability_zone (required) https://www.terraform.io/docs/providers/aws/r/default_subnet.html#availability_zone.
    // @param map_public_ip_on_launch (optional) https://www.terraform.io/docs/providers/aws/r/default_subnet.html#map_public_ip_on_launch.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/default_subnet.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/default_subnet.html#tags.
    aws_default_subnet(rname, availability_zone, map_public_ip_on_launch=null, id=null, tags=null):: {
      availability_zone: availability_zone,
      [if map_public_ip_on_launch != null then map_public_ip_on_launch]: map_public_ip_on_launch,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      ipv6_cidr_block_association_id:: '${aws_default_subnet.%s.ipv6_cidr_block_association_id}' % rname,
      owner_id:: '${aws_default_subnet.%s.owner_id}' % rname,
      vpc_id:: '${aws_default_subnet.%s.vpc_id}' % rname,
      arn:: '${aws_default_subnet.%s.arn}' % rname,
      availability_zone_id:: '${aws_default_subnet.%s.availability_zone_id}' % rname,
      cidr_block:: '${aws_default_subnet.%s.cidr_block}' % rname,
      assign_ipv6_address_on_creation:: '${aws_default_subnet.%s.assign_ipv6_address_on_creation}' % rname,
      ipv6_cidr_block:: '${aws_default_subnet.%s.ipv6_cidr_block}' % rname,
    },
    // aws_sns_topic_subscription - https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param endpoint (required) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#endpoint.
    // @param protocol (required) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#protocol.
    // @param topic_arn (required) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#topic_arn.
    // @param confirmation_timeout_in_minutes (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#confirmation_timeout_in_minutes.
    // @param delivery_policy (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#delivery_policy.
    // @param filter_policy (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#filter_policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#id.
    // @param raw_message_delivery (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#raw_message_delivery.
    // @param endpoint_auto_confirms (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#endpoint_auto_confirms.
    aws_sns_topic_subscription(rname, endpoint, protocol, topic_arn, confirmation_timeout_in_minutes=null, delivery_policy=null, filter_policy=null, id=null, raw_message_delivery=null, endpoint_auto_confirms=null):: {
      endpoint: endpoint,
      protocol: protocol,
      topic_arn: topic_arn,
      [if confirmation_timeout_in_minutes != null then confirmation_timeout_in_minutes]: confirmation_timeout_in_minutes,
      [if delivery_policy != null then delivery_policy]: delivery_policy,
      [if filter_policy != null then filter_policy]: filter_policy,
      [if id != null then id]: id,
      [if raw_message_delivery != null then raw_message_delivery]: raw_message_delivery,
      [if endpoint_auto_confirms != null then endpoint_auto_confirms]: endpoint_auto_confirms,
      rname:: rname,
      arn:: '${aws_sns_topic_subscription.%s.arn}' % rname,
    },
    // aws_ssm_document - https://www.terraform.io/docs/providers/aws/r/ssm_document.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param content (required) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#content.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#name.
    // @param document_type (required) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#document_type.
    // @param document_format (optional) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#document_format.
    // @param permissions (optional) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#permissions.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#tags.
    aws_ssm_document(rname, content, name, document_type, document_format=null, permissions=null, id=null, tags=null):: {
      content: content,
      name: name,
      document_type: document_type,
      [if document_format != null then document_format]: document_format,
      [if permissions != null then permissions]: permissions,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      default_version:: '${aws_ssm_document.%s.default_version}' % rname,
      description:: '${aws_ssm_document.%s.description}' % rname,
      latest_version:: '${aws_ssm_document.%s.latest_version}' % rname,
      arn:: '${aws_ssm_document.%s.arn}' % rname,
      status:: '${aws_ssm_document.%s.status}' % rname,
      hash:: '${aws_ssm_document.%s.hash}' % rname,
      hash_type:: '${aws_ssm_document.%s.hash_type}' % rname,
      owner:: '${aws_ssm_document.%s.owner}' % rname,
      parameter:: '${aws_ssm_document.%s.parameter}' % rname,
      platform_types:: '${aws_ssm_document.%s.platform_types}' % rname,
      created_date:: '${aws_ssm_document.%s.created_date}' % rname,
      schema_version:: '${aws_ssm_document.%s.schema_version}' % rname,
    },
    // aws_ssm_maintenance_window_target - https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param window_id (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html#window_id.
    // @param resource_type (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html#resource_type.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html#name.
    // @param owner_information (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html#owner_information.
    aws_ssm_maintenance_window_target(rname, window_id, resource_type, description=null, id=null, name=null, owner_information=null):: {
      window_id: window_id,
      resource_type: resource_type,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if owner_information != null then owner_information]: owner_information,
      rname:: rname,
    },
    // aws_sfn_activity - https://www.terraform.io/docs/providers/aws/r/sfn_activity.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/sfn_activity.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sfn_activity.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sfn_activity.html#tags.
    aws_sfn_activity(rname, name, id=null, tags=null):: {
      name: name,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      creation_date:: '${aws_sfn_activity.%s.creation_date}' % rname,
    },
    // aws_iam_group - https://www.terraform.io/docs/providers/aws/r/iam_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iam_group.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_group.html#id.
    // @param path (optional) https://www.terraform.io/docs/providers/aws/r/iam_group.html#path.
    aws_iam_group(rname, name, id=null, path=null):: {
      name: name,
      [if id != null then id]: id,
      [if path != null then path]: path,
      rname:: rname,
      arn:: '${aws_iam_group.%s.arn}' % rname,
      unique_id:: '${aws_iam_group.%s.unique_id}' % rname,
    },
    // aws_media_store_container - https://www.terraform.io/docs/providers/aws/r/media_store_container.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/media_store_container.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/media_store_container.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/media_store_container.html#id.
    aws_media_store_container(rname, name, tags=null, id=null):: {
      name: name,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_media_store_container.%s.arn}' % rname,
      endpoint:: '${aws_media_store_container.%s.endpoint}' % rname,
    },
    // aws_network_interface - https://www.terraform.io/docs/providers/aws/r/network_interface.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_id (required) https://www.terraform.io/docs/providers/aws/r/network_interface.html#subnet_id.
    // @param source_dest_check (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#source_dest_check.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#description.
    // @param private_ips (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#private_ips.
    // @param private_ips_count (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#private_ips_count.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#security_groups.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#id.
    // @param private_ip (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#private_ip.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#tags.
    aws_network_interface(rname, subnet_id, source_dest_check=null, description=null, private_ips=null, private_ips_count=null, security_groups=null, id=null, private_ip=null, tags=null):: {
      subnet_id: subnet_id,
      [if source_dest_check != null then source_dest_check]: source_dest_check,
      [if description != null then description]: description,
      [if private_ips != null then private_ips]: private_ips,
      [if private_ips_count != null then private_ips_count]: private_ips_count,
      [if security_groups != null then security_groups]: security_groups,
      [if id != null then id]: id,
      [if private_ip != null then private_ip]: private_ip,
      [if tags != null then tags]: tags,
      rname:: rname,
      private_dns_name:: '${aws_network_interface.%s.private_dns_name}' % rname,
    },
    // aws_directory_service_log_subscription - https://www.terraform.io/docs/providers/aws/r/directory_service_log_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param log_group_name (required) https://www.terraform.io/docs/providers/aws/r/directory_service_log_subscription.html#log_group_name.
    // @param directory_id (required) https://www.terraform.io/docs/providers/aws/r/directory_service_log_subscription.html#directory_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_log_subscription.html#id.
    aws_directory_service_log_subscription(rname, log_group_name, directory_id, id=null):: {
      log_group_name: log_group_name,
      directory_id: directory_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_ecs_task_definition - https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param container_definitions (required) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#container_definitions.
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#family.
    // @param task_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#task_role_arn.
    // @param execution_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#execution_role_arn.
    // @param ipc_mode (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#ipc_mode.
    // @param cpu (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#cpu.
    // @param pid_mode (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#pid_mode.
    // @param requires_compatibilities (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#requires_compatibilities.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#id.
    // @param memory (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#memory.
    // @param network_mode (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#network_mode.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#tags.
    aws_ecs_task_definition(rname, container_definitions, family, task_role_arn=null, execution_role_arn=null, ipc_mode=null, cpu=null, pid_mode=null, requires_compatibilities=null, id=null, memory=null, network_mode=null, tags=null):: {
      container_definitions: container_definitions,
      family: family,
      [if task_role_arn != null then task_role_arn]: task_role_arn,
      [if execution_role_arn != null then execution_role_arn]: execution_role_arn,
      [if ipc_mode != null then ipc_mode]: ipc_mode,
      [if cpu != null then cpu]: cpu,
      [if pid_mode != null then pid_mode]: pid_mode,
      [if requires_compatibilities != null then requires_compatibilities]: requires_compatibilities,
      [if id != null then id]: id,
      [if memory != null then memory]: memory,
      [if network_mode != null then network_mode]: network_mode,
      [if tags != null then tags]: tags,
      rname:: rname,
      revision:: '${aws_ecs_task_definition.%s.revision}' % rname,
      arn:: '${aws_ecs_task_definition.%s.arn}' % rname,
    },
    // aws_ses_domain_dkim - https://www.terraform.io/docs/providers/aws/r/ses_domain_dkim.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain (required) https://www.terraform.io/docs/providers/aws/r/ses_domain_dkim.html#domain.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_domain_dkim.html#id.
    aws_ses_domain_dkim(rname, domain, id=null):: {
      domain: domain,
      [if id != null then id]: id,
      rname:: rname,
      dkim_tokens:: '${aws_ses_domain_dkim.%s.dkim_tokens}' % rname,
    },
    // aws_appautoscaling_target - https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param scalable_dimension (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#scalable_dimension.
    // @param service_namespace (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#service_namespace.
    // @param max_capacity (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#max_capacity.
    // @param min_capacity (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#min_capacity.
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#resource_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#id.
    // @param role_arn (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#role_arn.
    aws_appautoscaling_target(rname, scalable_dimension, service_namespace, max_capacity, min_capacity, resource_id, id=null, role_arn=null):: {
      scalable_dimension: scalable_dimension,
      service_namespace: service_namespace,
      max_capacity: max_capacity,
      min_capacity: min_capacity,
      resource_id: resource_id,
      [if id != null then id]: id,
      [if role_arn != null then role_arn]: role_arn,
      rname:: rname,
    },
    // aws_wafregional_web_acl_association - https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param resource_arn (required) https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl_association.html#resource_arn.
    // @param web_acl_id (required) https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl_association.html#web_acl_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl_association.html#id.
    aws_wafregional_web_acl_association(rname, resource_arn, web_acl_id, id=null):: {
      resource_arn: resource_arn,
      web_acl_id: web_acl_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_organizations_organizational_unit - https://www.terraform.io/docs/providers/aws/r/organizations_organizational_unit.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/organizations_organizational_unit.html#name.
    // @param parent_id (required) https://www.terraform.io/docs/providers/aws/r/organizations_organizational_unit.html#parent_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/organizations_organizational_unit.html#id.
    aws_organizations_organizational_unit(rname, name, parent_id, id=null):: {
      name: name,
      parent_id: parent_id,
      [if id != null then id]: id,
      rname:: rname,
      accounts:: '${aws_organizations_organizational_unit.%s.accounts}' % rname,
      arn:: '${aws_organizations_organizational_unit.%s.arn}' % rname,
    },
    // aws_rds_cluster - https://www.terraform.io/docs/providers/aws/r/rds_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#cluster_identifier_prefix.
    // @param master_password (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#master_password.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#preferred_maintenance_window.
    // @param source_region (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#source_region.
    // @param backtrack_window (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#backtrack_window.
    // @param enabled_cloudwatch_logs_exports (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#enabled_cloudwatch_logs_exports.
    // @param db_cluster_parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#db_cluster_parameter_group_name.
    // @param cluster_members (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#cluster_members.
    // @param copy_tags_to_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#copy_tags_to_snapshot.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#engine_version.
    // @param iam_database_authentication_enabled (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#iam_database_authentication_enabled.
    // @param replication_source_identifier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#replication_source_identifier.
    // @param backup_retention_period (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#backup_retention_period.
    // @param storage_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#storage_encrypted.
    // @param skip_final_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#skip_final_snapshot.
    // @param db_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#db_subnet_group_name.
    // @param deletion_protection (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#deletion_protection.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#engine.
    // @param global_cluster_identifier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#global_cluster_identifier.
    // @param iam_roles (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#iam_roles.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#port.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#apply_immediately.
    // @param snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#snapshot_identifier.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#availability_zones.
    // @param engine_mode (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#engine_mode.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#kms_key_id.
    // @param preferred_backup_window (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#preferred_backup_window.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#tags.
    // @param database_name (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#database_name.
    // @param final_snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#final_snapshot_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#id.
    // @param master_username (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#master_username.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#vpc_security_group_ids.
    // @param cluster_identifier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#cluster_identifier.
    aws_rds_cluster(rname, cluster_identifier_prefix=null, master_password=null, preferred_maintenance_window=null, source_region=null, backtrack_window=null, enabled_cloudwatch_logs_exports=null, db_cluster_parameter_group_name=null, cluster_members=null, copy_tags_to_snapshot=null, engine_version=null, iam_database_authentication_enabled=null, replication_source_identifier=null, backup_retention_period=null, storage_encrypted=null, skip_final_snapshot=null, db_subnet_group_name=null, deletion_protection=null, engine=null, global_cluster_identifier=null, iam_roles=null, port=null, apply_immediately=null, snapshot_identifier=null, availability_zones=null, engine_mode=null, kms_key_id=null, preferred_backup_window=null, tags=null, database_name=null, final_snapshot_identifier=null, id=null, master_username=null, vpc_security_group_ids=null, cluster_identifier=null):: {
      [if cluster_identifier_prefix != null then cluster_identifier_prefix]: cluster_identifier_prefix,
      [if master_password != null then master_password]: master_password,
      [if preferred_maintenance_window != null then preferred_maintenance_window]: preferred_maintenance_window,
      [if source_region != null then source_region]: source_region,
      [if backtrack_window != null then backtrack_window]: backtrack_window,
      [if enabled_cloudwatch_logs_exports != null then enabled_cloudwatch_logs_exports]: enabled_cloudwatch_logs_exports,
      [if db_cluster_parameter_group_name != null then db_cluster_parameter_group_name]: db_cluster_parameter_group_name,
      [if cluster_members != null then cluster_members]: cluster_members,
      [if copy_tags_to_snapshot != null then copy_tags_to_snapshot]: copy_tags_to_snapshot,
      [if engine_version != null then engine_version]: engine_version,
      [if iam_database_authentication_enabled != null then iam_database_authentication_enabled]: iam_database_authentication_enabled,
      [if replication_source_identifier != null then replication_source_identifier]: replication_source_identifier,
      [if backup_retention_period != null then backup_retention_period]: backup_retention_period,
      [if storage_encrypted != null then storage_encrypted]: storage_encrypted,
      [if skip_final_snapshot != null then skip_final_snapshot]: skip_final_snapshot,
      [if db_subnet_group_name != null then db_subnet_group_name]: db_subnet_group_name,
      [if deletion_protection != null then deletion_protection]: deletion_protection,
      [if engine != null then engine]: engine,
      [if global_cluster_identifier != null then global_cluster_identifier]: global_cluster_identifier,
      [if iam_roles != null then iam_roles]: iam_roles,
      [if port != null then port]: port,
      [if apply_immediately != null then apply_immediately]: apply_immediately,
      [if snapshot_identifier != null then snapshot_identifier]: snapshot_identifier,
      [if availability_zones != null then availability_zones]: availability_zones,
      [if engine_mode != null then engine_mode]: engine_mode,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if preferred_backup_window != null then preferred_backup_window]: preferred_backup_window,
      [if tags != null then tags]: tags,
      [if database_name != null then database_name]: database_name,
      [if final_snapshot_identifier != null then final_snapshot_identifier]: final_snapshot_identifier,
      [if id != null then id]: id,
      [if master_username != null then master_username]: master_username,
      [if vpc_security_group_ids != null then vpc_security_group_ids]: vpc_security_group_ids,
      [if cluster_identifier != null then cluster_identifier]: cluster_identifier,
      rname:: rname,
      endpoint:: '${aws_rds_cluster.%s.endpoint}' % rname,
      hosted_zone_id:: '${aws_rds_cluster.%s.hosted_zone_id}' % rname,
      cluster_resource_id:: '${aws_rds_cluster.%s.cluster_resource_id}' % rname,
      arn:: '${aws_rds_cluster.%s.arn}' % rname,
      reader_endpoint:: '${aws_rds_cluster.%s.reader_endpoint}' % rname,
    },
    // aws_kms_grant - https://www.terraform.io/docs/providers/aws/r/kms_grant.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param operations (required) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#operations.
    // @param grantee_principal (required) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#grantee_principal.
    // @param key_id (required) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#key_id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#name.
    // @param grant_creation_tokens (optional) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#grant_creation_tokens.
    // @param retire_on_delete (optional) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#retire_on_delete.
    // @param retiring_principal (optional) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#retiring_principal.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#id.
    aws_kms_grant(rname, operations, grantee_principal, key_id, name=null, grant_creation_tokens=null, retire_on_delete=null, retiring_principal=null, id=null):: {
      operations: operations,
      grantee_principal: grantee_principal,
      key_id: key_id,
      [if name != null then name]: name,
      [if grant_creation_tokens != null then grant_creation_tokens]: grant_creation_tokens,
      [if retire_on_delete != null then retire_on_delete]: retire_on_delete,
      [if retiring_principal != null then retiring_principal]: retiring_principal,
      [if id != null then id]: id,
      rname:: rname,
      grant_id:: '${aws_kms_grant.%s.grant_id}' % rname,
      grant_token:: '${aws_kms_grant.%s.grant_token}' % rname,
    },
    // aws_iam_server_certificate - https://www.terraform.io/docs/providers/aws/r/iam_server_certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param private_key (required) https://www.terraform.io/docs/providers/aws/r/iam_server_certificate.html#private_key.
    // @param certificate_body (required) https://www.terraform.io/docs/providers/aws/r/iam_server_certificate.html#certificate_body.
    // @param path (optional) https://www.terraform.io/docs/providers/aws/r/iam_server_certificate.html#path.
    // @param arn (optional) https://www.terraform.io/docs/providers/aws/r/iam_server_certificate.html#arn.
    // @param certificate_chain (optional) https://www.terraform.io/docs/providers/aws/r/iam_server_certificate.html#certificate_chain.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_server_certificate.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/iam_server_certificate.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/iam_server_certificate.html#name_prefix.
    aws_iam_server_certificate(rname, private_key, certificate_body, path=null, arn=null, certificate_chain=null, id=null, name=null, name_prefix=null):: {
      private_key: private_key,
      certificate_body: certificate_body,
      [if path != null then path]: path,
      [if arn != null then arn]: arn,
      [if certificate_chain != null then certificate_chain]: certificate_chain,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      rname:: rname,
    },
    // aws_snapshot_create_volume_permission - https://www.terraform.io/docs/providers/aws/r/snapshot_create_volume_permission.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param snapshot_id (required) https://www.terraform.io/docs/providers/aws/r/snapshot_create_volume_permission.html#snapshot_id.
    // @param account_id (required) https://www.terraform.io/docs/providers/aws/r/snapshot_create_volume_permission.html#account_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/snapshot_create_volume_permission.html#id.
    aws_snapshot_create_volume_permission(rname, snapshot_id, account_id, id=null):: {
      snapshot_id: snapshot_id,
      account_id: account_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_worklink_website_certificate_authority_association - https://www.terraform.io/docs/providers/aws/r/worklink_website_certificate_authority_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate (required) https://www.terraform.io/docs/providers/aws/r/worklink_website_certificate_authority_association.html#certificate.
    // @param fleet_arn (required) https://www.terraform.io/docs/providers/aws/r/worklink_website_certificate_authority_association.html#fleet_arn.
    // @param display_name (optional) https://www.terraform.io/docs/providers/aws/r/worklink_website_certificate_authority_association.html#display_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/worklink_website_certificate_authority_association.html#id.
    aws_worklink_website_certificate_authority_association(rname, certificate, fleet_arn, display_name=null, id=null):: {
      certificate: certificate,
      fleet_arn: fleet_arn,
      [if display_name != null then display_name]: display_name,
      [if id != null then id]: id,
      rname:: rname,
      website_ca_id:: '${aws_worklink_website_certificate_authority_association.%s.website_ca_id}' % rname,
    },
    // aws_iam_policy - https://www.terraform.io/docs/providers/aws/r/iam_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/iam_policy.html#policy.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy.html#name_prefix.
    // @param path (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy.html#path.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy.html#id.
    aws_iam_policy(rname, policy, name=null, name_prefix=null, path=null, description=null, id=null):: {
      policy: policy,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if path != null then path]: path,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_iam_policy.%s.arn}' % rname,
    },
    // aws_lb_target_group_attachment - https://www.terraform.io/docs/providers/aws/r/lb_target_group_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param target_group_arn (required) https://www.terraform.io/docs/providers/aws/r/lb_target_group_attachment.html#target_group_arn.
    // @param target_id (required) https://www.terraform.io/docs/providers/aws/r/lb_target_group_attachment.html#target_id.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group_attachment.html#availability_zone.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group_attachment.html#id.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group_attachment.html#port.
    aws_lb_target_group_attachment(rname, target_group_arn, target_id, availability_zone=null, id=null, port=null):: {
      target_group_arn: target_group_arn,
      target_id: target_id,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if id != null then id]: id,
      [if port != null then port]: port,
      rname:: rname,
    },
    // aws_resourcegroups_group - https://www.terraform.io/docs/providers/aws/r/resourcegroups_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/resourcegroups_group.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/resourcegroups_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/resourcegroups_group.html#id.
    aws_resourcegroups_group(rname, name, description=null, id=null):: {
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_resourcegroups_group.%s.arn}' % rname,
    },
    // aws_dax_parameter_group - https://www.terraform.io/docs/providers/aws/r/dax_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dax_parameter_group.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dax_parameter_group.html#id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/dax_parameter_group.html#description.
    aws_dax_parameter_group(rname, name, id=null, description=null):: {
      name: name,
      [if id != null then id]: id,
      [if description != null then description]: description,
      rname:: rname,
    },
    // aws_efs_mount_target - https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_id (required) https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html#subnet_id.
    // @param file_system_id (required) https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html#file_system_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html#id.
    // @param ip_address (optional) https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html#ip_address.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html#security_groups.
    aws_efs_mount_target(rname, subnet_id, file_system_id, id=null, ip_address=null, security_groups=null):: {
      subnet_id: subnet_id,
      file_system_id: file_system_id,
      [if id != null then id]: id,
      [if ip_address != null then ip_address]: ip_address,
      [if security_groups != null then security_groups]: security_groups,
      rname:: rname,
      network_interface_id:: '${aws_efs_mount_target.%s.network_interface_id}' % rname,
      dns_name:: '${aws_efs_mount_target.%s.dns_name}' % rname,
      file_system_arn:: '${aws_efs_mount_target.%s.file_system_arn}' % rname,
    },
    // aws_servicequotas_service_quota - https://www.terraform.io/docs/providers/aws/r/servicequotas_service_quota.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param quota_code (required) https://www.terraform.io/docs/providers/aws/r/servicequotas_service_quota.html#quota_code.
    // @param value (required) https://www.terraform.io/docs/providers/aws/r/servicequotas_service_quota.html#value.
    // @param service_code (required) https://www.terraform.io/docs/providers/aws/r/servicequotas_service_quota.html#service_code.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/servicequotas_service_quota.html#id.
    aws_servicequotas_service_quota(rname, quota_code, value, service_code, id=null):: {
      quota_code: quota_code,
      value: value,
      service_code: service_code,
      [if id != null then id]: id,
      rname:: rname,
      adjustable:: '${aws_servicequotas_service_quota.%s.adjustable}' % rname,
      quota_name:: '${aws_servicequotas_service_quota.%s.quota_name}' % rname,
      request_status:: '${aws_servicequotas_service_quota.%s.request_status}' % rname,
      service_name:: '${aws_servicequotas_service_quota.%s.service_name}' % rname,
      arn:: '${aws_servicequotas_service_quota.%s.arn}' % rname,
      default_value:: '${aws_servicequotas_service_quota.%s.default_value}' % rname,
      request_id:: '${aws_servicequotas_service_quota.%s.request_id}' % rname,
    },
    // aws_dms_certificate - https://www.terraform.io/docs/providers/aws/r/dms_certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate_id (required) https://www.terraform.io/docs/providers/aws/r/dms_certificate.html#certificate_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dms_certificate.html#id.
    // @param certificate_pem (optional) https://www.terraform.io/docs/providers/aws/r/dms_certificate.html#certificate_pem.
    // @param certificate_wallet (optional) https://www.terraform.io/docs/providers/aws/r/dms_certificate.html#certificate_wallet.
    aws_dms_certificate(rname, certificate_id, id=null, certificate_pem=null, certificate_wallet=null):: {
      certificate_id: certificate_id,
      [if id != null then id]: id,
      [if certificate_pem != null then certificate_pem]: certificate_pem,
      [if certificate_wallet != null then certificate_wallet]: certificate_wallet,
      rname:: rname,
      certificate_arn:: '${aws_dms_certificate.%s.certificate_arn}' % rname,
    },
    // aws_route53_zone_association - https://www.terraform.io/docs/providers/aws/r/route53_zone_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/route53_zone_association.html#vpc_id.
    // @param zone_id (required) https://www.terraform.io/docs/providers/aws/r/route53_zone_association.html#zone_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone_association.html#id.
    // @param vpc_region (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone_association.html#vpc_region.
    aws_route53_zone_association(rname, vpc_id, zone_id, id=null, vpc_region=null):: {
      vpc_id: vpc_id,
      zone_id: zone_id,
      [if id != null then id]: id,
      [if vpc_region != null then vpc_region]: vpc_region,
      rname:: rname,
    },
    // aws_db_parameter_group - https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html#family.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html#tags.
    aws_db_parameter_group(rname, family, description=null, id=null, name=null, name_prefix=null, tags=null):: {
      family: family,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_db_parameter_group.%s.arn}' % rname,
    },
    // aws_cloudwatch_log_resource_policy - https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_resource_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy_name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_resource_policy.html#policy_name.
    // @param policy_document (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_resource_policy.html#policy_document.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_resource_policy.html#id.
    aws_cloudwatch_log_resource_policy(rname, policy_name, policy_document, id=null):: {
      policy_name: policy_name,
      policy_document: policy_document,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_config_configuration_recorder_status - https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder_status.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param is_enabled (required) https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder_status.html#is_enabled.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder_status.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder_status.html#id.
    aws_config_configuration_recorder_status(rname, is_enabled, name, id=null):: {
      is_enabled: is_enabled,
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_securityhub_product_subscription - https://www.terraform.io/docs/providers/aws/r/securityhub_product_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param product_arn (required) https://www.terraform.io/docs/providers/aws/r/securityhub_product_subscription.html#product_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/securityhub_product_subscription.html#id.
    aws_securityhub_product_subscription(rname, product_arn, id=null):: {
      product_arn: product_arn,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_securityhub_product_subscription.%s.arn}' % rname,
    },
    // aws_cloudfront_origin_access_identity - https://www.terraform.io/docs/providers/aws/r/cloudfront_origin_access_identity.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param comment (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_origin_access_identity.html#comment.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_origin_access_identity.html#id.
    aws_cloudfront_origin_access_identity(rname, comment=null, id=null):: {
      [if comment != null then comment]: comment,
      [if id != null then id]: id,
      rname:: rname,
      caller_reference:: '${aws_cloudfront_origin_access_identity.%s.caller_reference}' % rname,
      cloudfront_access_identity_path:: '${aws_cloudfront_origin_access_identity.%s.cloudfront_access_identity_path}' % rname,
      etag:: '${aws_cloudfront_origin_access_identity.%s.etag}' % rname,
      iam_arn:: '${aws_cloudfront_origin_access_identity.%s.iam_arn}' % rname,
      s3_canonical_user_id:: '${aws_cloudfront_origin_access_identity.%s.s3_canonical_user_id}' % rname,
    },
    // aws_glacier_vault_lock - https://www.terraform.io/docs/providers/aws/r/glacier_vault_lock.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/glacier_vault_lock.html#policy.
    // @param vault_name (required) https://www.terraform.io/docs/providers/aws/r/glacier_vault_lock.html#vault_name.
    // @param complete_lock (required) https://www.terraform.io/docs/providers/aws/r/glacier_vault_lock.html#complete_lock.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glacier_vault_lock.html#id.
    // @param ignore_deletion_error (optional) https://www.terraform.io/docs/providers/aws/r/glacier_vault_lock.html#ignore_deletion_error.
    aws_glacier_vault_lock(rname, policy, vault_name, complete_lock, id=null, ignore_deletion_error=null):: {
      policy: policy,
      vault_name: vault_name,
      complete_lock: complete_lock,
      [if id != null then id]: id,
      [if ignore_deletion_error != null then ignore_deletion_error]: ignore_deletion_error,
      rname:: rname,
    },
    // aws_iot_role_alias - https://www.terraform.io/docs/providers/aws/r/iot_role_alias.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/iot_role_alias.html#role_arn.
    // @param alias (required) https://www.terraform.io/docs/providers/aws/r/iot_role_alias.html#alias.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_role_alias.html#id.
    // @param credential_duration (optional) https://www.terraform.io/docs/providers/aws/r/iot_role_alias.html#credential_duration.
    aws_iot_role_alias(rname, role_arn, alias, id=null, credential_duration=null):: {
      role_arn: role_arn,
      alias: alias,
      [if id != null then id]: id,
      [if credential_duration != null then credential_duration]: credential_duration,
      rname:: rname,
      arn:: '${aws_iot_role_alias.%s.arn}' % rname,
    },
    // aws_kms_key - https://www.terraform.io/docs/providers/aws/r/kms_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#description.
    // @param enable_key_rotation (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#enable_key_rotation.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#policy.
    // @param key_usage (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#key_usage.
    // @param deletion_window_in_days (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#deletion_window_in_days.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#id.
    // @param is_enabled (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#is_enabled.
    aws_kms_key(rname, tags=null, description=null, enable_key_rotation=null, policy=null, key_usage=null, deletion_window_in_days=null, id=null, is_enabled=null):: {
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      [if enable_key_rotation != null then enable_key_rotation]: enable_key_rotation,
      [if policy != null then policy]: policy,
      [if key_usage != null then key_usage]: key_usage,
      [if deletion_window_in_days != null then deletion_window_in_days]: deletion_window_in_days,
      [if id != null then id]: id,
      [if is_enabled != null then is_enabled]: is_enabled,
      rname:: rname,
      arn:: '${aws_kms_key.%s.arn}' % rname,
      key_id:: '${aws_kms_key.%s.key_id}' % rname,
    },
    // aws_network_interface_attachment - https://www.terraform.io/docs/providers/aws/r/network_interface_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param device_index (required) https://www.terraform.io/docs/providers/aws/r/network_interface_attachment.html#device_index.
    // @param instance_id (required) https://www.terraform.io/docs/providers/aws/r/network_interface_attachment.html#instance_id.
    // @param network_interface_id (required) https://www.terraform.io/docs/providers/aws/r/network_interface_attachment.html#network_interface_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/network_interface_attachment.html#id.
    aws_network_interface_attachment(rname, device_index, instance_id, network_interface_id, id=null):: {
      device_index: device_index,
      instance_id: instance_id,
      network_interface_id: network_interface_id,
      [if id != null then id]: id,
      rname:: rname,
      status:: '${aws_network_interface_attachment.%s.status}' % rname,
      attachment_id:: '${aws_network_interface_attachment.%s.attachment_id}' % rname,
    },
    // aws_api_gateway_base_path_mapping - https://www.terraform.io/docs/providers/aws/r/api_gateway_base_path_mapping.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_base_path_mapping.html#api_id.
    // @param domain_name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_base_path_mapping.html#domain_name.
    // @param base_path (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_base_path_mapping.html#base_path.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_base_path_mapping.html#id.
    // @param stage_name (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_base_path_mapping.html#stage_name.
    aws_api_gateway_base_path_mapping(rname, api_id, domain_name, base_path=null, id=null, stage_name=null):: {
      api_id: api_id,
      domain_name: domain_name,
      [if base_path != null then base_path]: base_path,
      [if id != null then id]: id,
      [if stage_name != null then stage_name]: stage_name,
      rname:: rname,
    },
    // aws_dx_bgp_peer - https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#bgp_asn.
    // @param address_family (required) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#address_family.
    // @param virtual_interface_id (required) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#virtual_interface_id.
    // @param amazon_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#amazon_address.
    // @param customer_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#customer_address.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#id.
    // @param bgp_auth_key (optional) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#bgp_auth_key.
    aws_dx_bgp_peer(rname, bgp_asn, address_family, virtual_interface_id, amazon_address=null, customer_address=null, id=null, bgp_auth_key=null):: {
      bgp_asn: bgp_asn,
      address_family: address_family,
      virtual_interface_id: virtual_interface_id,
      [if amazon_address != null then amazon_address]: amazon_address,
      [if customer_address != null then customer_address]: customer_address,
      [if id != null then id]: id,
      [if bgp_auth_key != null then bgp_auth_key]: bgp_auth_key,
      rname:: rname,
      aws_device:: '${aws_dx_bgp_peer.%s.aws_device}' % rname,
      bgp_status:: '${aws_dx_bgp_peer.%s.bgp_status}' % rname,
      bgp_peer_id:: '${aws_dx_bgp_peer.%s.bgp_peer_id}' % rname,
    },
    // aws_dx_hosted_private_virtual_interface - https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param connection_id (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#connection_id.
    // @param address_family (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#address_family.
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#bgp_asn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#name.
    // @param owner_account_id (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#owner_account_id.
    // @param vlan (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#vlan.
    // @param bgp_auth_key (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#bgp_auth_key.
    // @param customer_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#customer_address.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#id.
    // @param mtu (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#mtu.
    // @param amazon_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#amazon_address.
    aws_dx_hosted_private_virtual_interface(rname, connection_id, address_family, bgp_asn, name, owner_account_id, vlan, bgp_auth_key=null, customer_address=null, id=null, mtu=null, amazon_address=null):: {
      connection_id: connection_id,
      address_family: address_family,
      bgp_asn: bgp_asn,
      name: name,
      owner_account_id: owner_account_id,
      vlan: vlan,
      [if bgp_auth_key != null then bgp_auth_key]: bgp_auth_key,
      [if customer_address != null then customer_address]: customer_address,
      [if id != null then id]: id,
      [if mtu != null then mtu]: mtu,
      [if amazon_address != null then amazon_address]: amazon_address,
      rname:: rname,
      arn:: '${aws_dx_hosted_private_virtual_interface.%s.arn}' % rname,
      aws_device:: '${aws_dx_hosted_private_virtual_interface.%s.aws_device}' % rname,
      jumbo_frame_capable:: '${aws_dx_hosted_private_virtual_interface.%s.jumbo_frame_capable}' % rname,
    },
    // aws_spot_instance_request - https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param ami (required) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#ami.
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#instance_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#id.
    // @param monitoring (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#monitoring.
    // @param private_ip (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#private_ip.
    // @param spot_price (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#spot_price.
    // @param volume_tags (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#volume_tags.
    // @param wait_for_fulfillment (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#wait_for_fulfillment.
    // @param block_duration_minutes (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#block_duration_minutes.
    // @param get_password_data (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#get_password_data.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#tags.
    // @param user_data_base64 (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#user_data_base64.
    // @param cpu_threads_per_core (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#cpu_threads_per_core.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#subnet_id.
    // @param tenancy (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#tenancy.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#security_groups.
    // @param valid_until (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#valid_until.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#vpc_security_group_ids.
    // @param host_id (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#host_id.
    // @param ipv6_address_count (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#ipv6_address_count.
    // @param ipv6_addresses (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#ipv6_addresses.
    // @param key_name (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#key_name.
    // @param valid_from (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#valid_from.
    // @param source_dest_check (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#source_dest_check.
    // @param spot_type (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#spot_type.
    // @param associate_public_ip_address (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#associate_public_ip_address.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#availability_zone.
    // @param cpu_core_count (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#cpu_core_count.
    // @param disable_api_termination (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#disable_api_termination.
    // @param instance_initiated_shutdown_behavior (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#instance_initiated_shutdown_behavior.
    // @param user_data (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#user_data.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#ebs_optimized.
    // @param iam_instance_profile (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#iam_instance_profile.
    // @param instance_interruption_behaviour (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#instance_interruption_behaviour.
    // @param launch_group (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#launch_group.
    // @param placement_group (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#placement_group.
    aws_spot_instance_request(rname, ami, instance_type, id=null, monitoring=null, private_ip=null, spot_price=null, volume_tags=null, wait_for_fulfillment=null, block_duration_minutes=null, get_password_data=null, tags=null, user_data_base64=null, cpu_threads_per_core=null, subnet_id=null, tenancy=null, security_groups=null, valid_until=null, vpc_security_group_ids=null, host_id=null, ipv6_address_count=null, ipv6_addresses=null, key_name=null, valid_from=null, source_dest_check=null, spot_type=null, associate_public_ip_address=null, availability_zone=null, cpu_core_count=null, disable_api_termination=null, instance_initiated_shutdown_behavior=null, user_data=null, ebs_optimized=null, iam_instance_profile=null, instance_interruption_behaviour=null, launch_group=null, placement_group=null):: {
      ami: ami,
      instance_type: instance_type,
      [if id != null then id]: id,
      [if monitoring != null then monitoring]: monitoring,
      [if private_ip != null then private_ip]: private_ip,
      [if spot_price != null then spot_price]: spot_price,
      [if volume_tags != null then volume_tags]: volume_tags,
      [if wait_for_fulfillment != null then wait_for_fulfillment]: wait_for_fulfillment,
      [if block_duration_minutes != null then block_duration_minutes]: block_duration_minutes,
      [if get_password_data != null then get_password_data]: get_password_data,
      [if tags != null then tags]: tags,
      [if user_data_base64 != null then user_data_base64]: user_data_base64,
      [if cpu_threads_per_core != null then cpu_threads_per_core]: cpu_threads_per_core,
      [if subnet_id != null then subnet_id]: subnet_id,
      [if tenancy != null then tenancy]: tenancy,
      [if security_groups != null then security_groups]: security_groups,
      [if valid_until != null then valid_until]: valid_until,
      [if vpc_security_group_ids != null then vpc_security_group_ids]: vpc_security_group_ids,
      [if host_id != null then host_id]: host_id,
      [if ipv6_address_count != null then ipv6_address_count]: ipv6_address_count,
      [if ipv6_addresses != null then ipv6_addresses]: ipv6_addresses,
      [if key_name != null then key_name]: key_name,
      [if valid_from != null then valid_from]: valid_from,
      [if source_dest_check != null then source_dest_check]: source_dest_check,
      [if spot_type != null then spot_type]: spot_type,
      [if associate_public_ip_address != null then associate_public_ip_address]: associate_public_ip_address,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if cpu_core_count != null then cpu_core_count]: cpu_core_count,
      [if disable_api_termination != null then disable_api_termination]: disable_api_termination,
      [if instance_initiated_shutdown_behavior != null then instance_initiated_shutdown_behavior]: instance_initiated_shutdown_behavior,
      [if user_data != null then user_data]: user_data,
      [if ebs_optimized != null then ebs_optimized]: ebs_optimized,
      [if iam_instance_profile != null then iam_instance_profile]: iam_instance_profile,
      [if instance_interruption_behaviour != null then instance_interruption_behaviour]: instance_interruption_behaviour,
      [if launch_group != null then launch_group]: launch_group,
      [if placement_group != null then placement_group]: placement_group,
      rname:: rname,
      network_interface_id:: '${aws_spot_instance_request.%s.network_interface_id}' % rname,
      instance_state:: '${aws_spot_instance_request.%s.instance_state}' % rname,
      public_ip:: '${aws_spot_instance_request.%s.public_ip}' % rname,
      private_dns:: '${aws_spot_instance_request.%s.private_dns}' % rname,
      arn:: '${aws_spot_instance_request.%s.arn}' % rname,
      spot_request_state:: '${aws_spot_instance_request.%s.spot_request_state}' % rname,
      public_dns:: '${aws_spot_instance_request.%s.public_dns}' % rname,
      spot_bid_status:: '${aws_spot_instance_request.%s.spot_bid_status}' % rname,
      primary_network_interface_id:: '${aws_spot_instance_request.%s.primary_network_interface_id}' % rname,
      spot_instance_id:: '${aws_spot_instance_request.%s.spot_instance_id}' % rname,
      password_data:: '${aws_spot_instance_request.%s.password_data}' % rname,
    },
    // aws_cloudwatch_dashboard - https://www.terraform.io/docs/providers/aws/r/cloudwatch_dashboard.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param dashboard_body (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_dashboard.html#dashboard_body.
    // @param dashboard_name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_dashboard.html#dashboard_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_dashboard.html#id.
    aws_cloudwatch_dashboard(rname, dashboard_body, dashboard_name, id=null):: {
      dashboard_body: dashboard_body,
      dashboard_name: dashboard_name,
      [if id != null then id]: id,
      rname:: rname,
      dashboard_arn:: '${aws_cloudwatch_dashboard.%s.dashboard_arn}' % rname,
    },
    // aws_ses_receipt_filter - https://www.terraform.io/docs/providers/aws/r/ses_receipt_filter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cidr (required) https://www.terraform.io/docs/providers/aws/r/ses_receipt_filter.html#cidr.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ses_receipt_filter.html#name.
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/ses_receipt_filter.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_filter.html#id.
    aws_ses_receipt_filter(rname, cidr, name, policy, id=null):: {
      cidr: cidr,
      name: name,
      policy: policy,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_storagegateway_cache - https://www.terraform.io/docs/providers/aws/r/storagegateway_cache.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param gateway_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_cache.html#gateway_arn.
    // @param disk_id (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_cache.html#disk_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_cache.html#id.
    aws_storagegateway_cache(rname, gateway_arn, disk_id, id=null):: {
      gateway_arn: gateway_arn,
      disk_id: disk_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_placement_group - https://www.terraform.io/docs/providers/aws/r/placement_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/placement_group.html#name.
    // @param strategy (required) https://www.terraform.io/docs/providers/aws/r/placement_group.html#strategy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/placement_group.html#id.
    aws_placement_group(rname, name, strategy, id=null):: {
      name: name,
      strategy: strategy,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_launch_template - https://www.terraform.io/docs/providers/aws/r/launch_template.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#tags.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#vpc_security_group_ids.
    // @param instance_initiated_shutdown_behavior (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#instance_initiated_shutdown_behavior.
    // @param instance_type (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#instance_type.
    // @param kernel_id (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#kernel_id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#name_prefix.
    // @param security_group_names (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#security_group_names.
    // @param user_data (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#user_data.
    // @param disable_api_termination (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#disable_api_termination.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#ebs_optimized.
    // @param image_id (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#image_id.
    // @param ram_disk_id (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#ram_disk_id.
    // @param key_name (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#key_name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#description.
    aws_launch_template(rname, id=null, tags=null, vpc_security_group_ids=null, instance_initiated_shutdown_behavior=null, instance_type=null, kernel_id=null, name=null, name_prefix=null, security_group_names=null, user_data=null, disable_api_termination=null, ebs_optimized=null, image_id=null, ram_disk_id=null, key_name=null, description=null):: {
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if vpc_security_group_ids != null then vpc_security_group_ids]: vpc_security_group_ids,
      [if instance_initiated_shutdown_behavior != null then instance_initiated_shutdown_behavior]: instance_initiated_shutdown_behavior,
      [if instance_type != null then instance_type]: instance_type,
      [if kernel_id != null then kernel_id]: kernel_id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if security_group_names != null then security_group_names]: security_group_names,
      [if user_data != null then user_data]: user_data,
      [if disable_api_termination != null then disable_api_termination]: disable_api_termination,
      [if ebs_optimized != null then ebs_optimized]: ebs_optimized,
      [if image_id != null then image_id]: image_id,
      [if ram_disk_id != null then ram_disk_id]: ram_disk_id,
      [if key_name != null then key_name]: key_name,
      [if description != null then description]: description,
      rname:: rname,
      latest_version:: '${aws_launch_template.%s.latest_version}' % rname,
      arn:: '${aws_launch_template.%s.arn}' % rname,
      default_version:: '${aws_launch_template.%s.default_version}' % rname,
    },
    // aws_pinpoint_sms_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_sms_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_sms_channel.html#application_id.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_sms_channel.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_sms_channel.html#id.
    // @param sender_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_sms_channel.html#sender_id.
    // @param short_code (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_sms_channel.html#short_code.
    aws_pinpoint_sms_channel(rname, application_id, enabled=null, id=null, sender_id=null, short_code=null):: {
      application_id: application_id,
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      [if sender_id != null then sender_id]: sender_id,
      [if short_code != null then short_code]: short_code,
      rname:: rname,
      promotional_messages_per_second:: '${aws_pinpoint_sms_channel.%s.promotional_messages_per_second}' % rname,
      transactional_messages_per_second:: '${aws_pinpoint_sms_channel.%s.transactional_messages_per_second}' % rname,
    },
    // aws_glue_catalog_table - https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param database_name (required) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#database_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#name.
    // @param parameters (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#parameters.
    // @param table_type (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#table_type.
    // @param view_expanded_text (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#view_expanded_text.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#description.
    // @param owner (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#owner.
    // @param retention (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#retention.
    // @param view_original_text (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#view_original_text.
    // @param catalog_id (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#catalog_id.
    aws_glue_catalog_table(rname, database_name, name, parameters=null, table_type=null, view_expanded_text=null, id=null, description=null, owner=null, retention=null, view_original_text=null, catalog_id=null):: {
      database_name: database_name,
      name: name,
      [if parameters != null then parameters]: parameters,
      [if table_type != null then table_type]: table_type,
      [if view_expanded_text != null then view_expanded_text]: view_expanded_text,
      [if id != null then id]: id,
      [if description != null then description]: description,
      [if owner != null then owner]: owner,
      [if retention != null then retention]: retention,
      [if view_original_text != null then view_original_text]: view_original_text,
      [if catalog_id != null then catalog_id]: catalog_id,
      rname:: rname,
    },
    // aws_ssm_association - https://www.terraform.io/docs/providers/aws/r/ssm_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#name.
    // @param association_name (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#association_name.
    // @param compliance_severity (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#compliance_severity.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#id.
    // @param parameters (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#parameters.
    // @param schedule_expression (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#schedule_expression.
    // @param document_version (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#document_version.
    // @param instance_id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#instance_id.
    // @param max_concurrency (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#max_concurrency.
    // @param max_errors (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#max_errors.
    aws_ssm_association(rname, name, association_name=null, compliance_severity=null, id=null, parameters=null, schedule_expression=null, document_version=null, instance_id=null, max_concurrency=null, max_errors=null):: {
      name: name,
      [if association_name != null then association_name]: association_name,
      [if compliance_severity != null then compliance_severity]: compliance_severity,
      [if id != null then id]: id,
      [if parameters != null then parameters]: parameters,
      [if schedule_expression != null then schedule_expression]: schedule_expression,
      [if document_version != null then document_version]: document_version,
      [if instance_id != null then instance_id]: instance_id,
      [if max_concurrency != null then max_concurrency]: max_concurrency,
      [if max_errors != null then max_errors]: max_errors,
      rname:: rname,
      association_id:: '${aws_ssm_association.%s.association_id}' % rname,
    },
    // aws_waf_rule_group - https://www.terraform.io/docs/providers/aws/r/waf_rule_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/waf_rule_group.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_rule_group.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_rule_group.html#id.
    aws_waf_rule_group(rname, metric_name, name, id=null):: {
      metric_name: metric_name,
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_ses_template - https://www.terraform.io/docs/providers/aws/r/ses_template.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ses_template.html#name.
    // @param subject (optional) https://www.terraform.io/docs/providers/aws/r/ses_template.html#subject.
    // @param text (optional) https://www.terraform.io/docs/providers/aws/r/ses_template.html#text.
    // @param html (optional) https://www.terraform.io/docs/providers/aws/r/ses_template.html#html.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_template.html#id.
    aws_ses_template(rname, name, subject=null, text=null, html=null, id=null):: {
      name: name,
      [if subject != null then subject]: subject,
      [if text != null then text]: text,
      [if html != null then html]: html,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_ami_launch_permission - https://www.terraform.io/docs/providers/aws/r/ami_launch_permission.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param account_id (required) https://www.terraform.io/docs/providers/aws/r/ami_launch_permission.html#account_id.
    // @param image_id (required) https://www.terraform.io/docs/providers/aws/r/ami_launch_permission.html#image_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ami_launch_permission.html#id.
    aws_ami_launch_permission(rname, account_id, image_id, id=null):: {
      account_id: account_id,
      image_id: image_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_codebuild_source_credential - https://www.terraform.io/docs/providers/aws/r/codebuild_source_credential.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param token (required) https://www.terraform.io/docs/providers/aws/r/codebuild_source_credential.html#token.
    // @param auth_type (required) https://www.terraform.io/docs/providers/aws/r/codebuild_source_credential.html#auth_type.
    // @param server_type (required) https://www.terraform.io/docs/providers/aws/r/codebuild_source_credential.html#server_type.
    // @param user_name (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_source_credential.html#user_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_source_credential.html#id.
    aws_codebuild_source_credential(rname, token, auth_type, server_type, user_name=null, id=null):: {
      token: token,
      auth_type: auth_type,
      server_type: server_type,
      [if user_name != null then user_name]: user_name,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_codebuild_source_credential.%s.arn}' % rname,
    },
    // aws_cognito_user_pool - https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#tags.
    // @param alias_attributes (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#alias_attributes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#id.
    // @param sms_verification_message (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#sms_verification_message.
    // @param username_attributes (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#username_attributes.
    // @param auto_verified_attributes (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#auto_verified_attributes.
    // @param email_verification_message (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#email_verification_message.
    // @param sms_authentication_message (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#sms_authentication_message.
    // @param email_verification_subject (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#email_verification_subject.
    // @param mfa_configuration (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#mfa_configuration.
    aws_cognito_user_pool(rname, name, tags=null, alias_attributes=null, id=null, sms_verification_message=null, username_attributes=null, auto_verified_attributes=null, email_verification_message=null, sms_authentication_message=null, email_verification_subject=null, mfa_configuration=null):: {
      name: name,
      [if tags != null then tags]: tags,
      [if alias_attributes != null then alias_attributes]: alias_attributes,
      [if id != null then id]: id,
      [if sms_verification_message != null then sms_verification_message]: sms_verification_message,
      [if username_attributes != null then username_attributes]: username_attributes,
      [if auto_verified_attributes != null then auto_verified_attributes]: auto_verified_attributes,
      [if email_verification_message != null then email_verification_message]: email_verification_message,
      [if sms_authentication_message != null then sms_authentication_message]: sms_authentication_message,
      [if email_verification_subject != null then email_verification_subject]: email_verification_subject,
      [if mfa_configuration != null then mfa_configuration]: mfa_configuration,
      rname:: rname,
      last_modified_date:: '${aws_cognito_user_pool.%s.last_modified_date}' % rname,
      arn:: '${aws_cognito_user_pool.%s.arn}' % rname,
      creation_date:: '${aws_cognito_user_pool.%s.creation_date}' % rname,
      endpoint:: '${aws_cognito_user_pool.%s.endpoint}' % rname,
    },
    // aws_emr_cluster - https://www.terraform.io/docs/providers/aws/r/emr_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#name.
    // @param service_role (required) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#service_role.
    // @param release_label (required) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#release_label.
    // @param configurations (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#configurations.
    // @param core_instance_count (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#core_instance_count.
    // @param core_instance_type (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#core_instance_type.
    // @param log_uri (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#log_uri.
    // @param scale_down_behavior (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#scale_down_behavior.
    // @param step (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#step.
    // @param visible_to_all_users (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#visible_to_all_users.
    // @param keep_job_flow_alive_when_no_steps (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#keep_job_flow_alive_when_no_steps.
    // @param master_instance_type (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#master_instance_type.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#tags.
    // @param security_configuration (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#security_configuration.
    // @param additional_info (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#additional_info.
    // @param applications (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#applications.
    // @param autoscaling_role (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#autoscaling_role.
    // @param configurations_json (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#configurations_json.
    // @param custom_ami_id (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#custom_ami_id.
    // @param termination_protection (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#termination_protection.
    // @param ebs_root_volume_size (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#ebs_root_volume_size.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#id.
    aws_emr_cluster(rname, name, service_role, release_label, configurations=null, core_instance_count=null, core_instance_type=null, log_uri=null, scale_down_behavior=null, step=null, visible_to_all_users=null, keep_job_flow_alive_when_no_steps=null, master_instance_type=null, tags=null, security_configuration=null, additional_info=null, applications=null, autoscaling_role=null, configurations_json=null, custom_ami_id=null, termination_protection=null, ebs_root_volume_size=null, id=null):: {
      name: name,
      service_role: service_role,
      release_label: release_label,
      [if configurations != null then configurations]: configurations,
      [if core_instance_count != null then core_instance_count]: core_instance_count,
      [if core_instance_type != null then core_instance_type]: core_instance_type,
      [if log_uri != null then log_uri]: log_uri,
      [if scale_down_behavior != null then scale_down_behavior]: scale_down_behavior,
      [if step != null then step]: step,
      [if visible_to_all_users != null then visible_to_all_users]: visible_to_all_users,
      [if keep_job_flow_alive_when_no_steps != null then keep_job_flow_alive_when_no_steps]: keep_job_flow_alive_when_no_steps,
      [if master_instance_type != null then master_instance_type]: master_instance_type,
      [if tags != null then tags]: tags,
      [if security_configuration != null then security_configuration]: security_configuration,
      [if additional_info != null then additional_info]: additional_info,
      [if applications != null then applications]: applications,
      [if autoscaling_role != null then autoscaling_role]: autoscaling_role,
      [if configurations_json != null then configurations_json]: configurations_json,
      [if custom_ami_id != null then custom_ami_id]: custom_ami_id,
      [if termination_protection != null then termination_protection]: termination_protection,
      [if ebs_root_volume_size != null then ebs_root_volume_size]: ebs_root_volume_size,
      [if id != null then id]: id,
      rname:: rname,
      master_public_dns:: '${aws_emr_cluster.%s.master_public_dns}' % rname,
      cluster_state:: '${aws_emr_cluster.%s.cluster_state}' % rname,
    },
    // aws_rds_global_cluster - https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param global_cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#global_cluster_identifier.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#engine.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#engine_version.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#id.
    // @param database_name (optional) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#database_name.
    // @param deletion_protection (optional) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#deletion_protection.
    // @param storage_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#storage_encrypted.
    aws_rds_global_cluster(rname, global_cluster_identifier, engine=null, engine_version=null, id=null, database_name=null, deletion_protection=null, storage_encrypted=null):: {
      global_cluster_identifier: global_cluster_identifier,
      [if engine != null then engine]: engine,
      [if engine_version != null then engine_version]: engine_version,
      [if id != null then id]: id,
      [if database_name != null then database_name]: database_name,
      [if deletion_protection != null then deletion_protection]: deletion_protection,
      [if storage_encrypted != null then storage_encrypted]: storage_encrypted,
      rname:: rname,
      global_cluster_resource_id:: '${aws_rds_global_cluster.%s.global_cluster_resource_id}' % rname,
      arn:: '${aws_rds_global_cluster.%s.arn}' % rname,
    },
    // aws_s3_bucket - https://www.terraform.io/docs/providers/aws/r/s3_bucket.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket_prefix (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#bucket_prefix.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#force_destroy.
    // @param region (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#region.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#tags.
    // @param website_domain (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#website_domain.
    // @param bucket (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#bucket.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#id.
    // @param acl (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#acl.
    // @param hosted_zone_id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#hosted_zone_id.
    // @param request_payer (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#request_payer.
    // @param website_endpoint (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#website_endpoint.
    // @param acceleration_status (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#acceleration_status.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#policy.
    // @param arn (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#arn.
    aws_s3_bucket(rname, bucket_prefix=null, force_destroy=null, region=null, tags=null, website_domain=null, bucket=null, id=null, acl=null, hosted_zone_id=null, request_payer=null, website_endpoint=null, acceleration_status=null, policy=null, arn=null):: {
      [if bucket_prefix != null then bucket_prefix]: bucket_prefix,
      [if force_destroy != null then force_destroy]: force_destroy,
      [if region != null then region]: region,
      [if tags != null then tags]: tags,
      [if website_domain != null then website_domain]: website_domain,
      [if bucket != null then bucket]: bucket,
      [if id != null then id]: id,
      [if acl != null then acl]: acl,
      [if hosted_zone_id != null then hosted_zone_id]: hosted_zone_id,
      [if request_payer != null then request_payer]: request_payer,
      [if website_endpoint != null then website_endpoint]: website_endpoint,
      [if acceleration_status != null then acceleration_status]: acceleration_status,
      [if policy != null then policy]: policy,
      [if arn != null then arn]: arn,
      rname:: rname,
      bucket_regional_domain_name:: '${aws_s3_bucket.%s.bucket_regional_domain_name}' % rname,
      bucket_domain_name:: '${aws_s3_bucket.%s.bucket_domain_name}' % rname,
    },
    // aws_alb - https://www.terraform.io/docs/providers/aws/r/alb.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param idle_timeout (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#idle_timeout.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#security_groups.
    // @param subnets (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#subnets.
    // @param enable_cross_zone_load_balancing (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#enable_cross_zone_load_balancing.
    // @param enable_http2 (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#enable_http2.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#id.
    // @param internal (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#internal.
    // @param ip_address_type (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#ip_address_type.
    // @param load_balancer_type (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#load_balancer_type.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#tags.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#name_prefix.
    // @param enable_deletion_protection (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#enable_deletion_protection.
    aws_alb(rname, idle_timeout=null, security_groups=null, subnets=null, enable_cross_zone_load_balancing=null, enable_http2=null, id=null, internal=null, ip_address_type=null, load_balancer_type=null, name=null, tags=null, name_prefix=null, enable_deletion_protection=null):: {
      [if idle_timeout != null then idle_timeout]: idle_timeout,
      [if security_groups != null then security_groups]: security_groups,
      [if subnets != null then subnets]: subnets,
      [if enable_cross_zone_load_balancing != null then enable_cross_zone_load_balancing]: enable_cross_zone_load_balancing,
      [if enable_http2 != null then enable_http2]: enable_http2,
      [if id != null then id]: id,
      [if internal != null then internal]: internal,
      [if ip_address_type != null then ip_address_type]: ip_address_type,
      [if load_balancer_type != null then load_balancer_type]: load_balancer_type,
      [if name != null then name]: name,
      [if tags != null then tags]: tags,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if enable_deletion_protection != null then enable_deletion_protection]: enable_deletion_protection,
      rname:: rname,
      arn_suffix:: '${aws_alb.%s.arn_suffix}' % rname,
      dns_name:: '${aws_alb.%s.dns_name}' % rname,
      vpc_id:: '${aws_alb.%s.vpc_id}' % rname,
      zone_id:: '${aws_alb.%s.zone_id}' % rname,
      arn:: '${aws_alb.%s.arn}' % rname,
    },
    // aws_cloudwatch_metric_alarm - https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param evaluation_periods (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#evaluation_periods.
    // @param comparison_operator (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#comparison_operator.
    // @param threshold (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#threshold.
    // @param alarm_name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#alarm_name.
    // @param actions_enabled (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#actions_enabled.
    // @param insufficient_data_actions (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#insufficient_data_actions.
    // @param metric_name (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#metric_name.
    // @param namespace (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#namespace.
    // @param treat_missing_data (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#treat_missing_data.
    // @param alarm_description (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#alarm_description.
    // @param datapoints_to_alarm (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#datapoints_to_alarm.
    // @param ok_actions (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#ok_actions.
    // @param statistic (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#statistic.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#tags.
    // @param unit (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#unit.
    // @param alarm_actions (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#alarm_actions.
    // @param dimensions (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#dimensions.
    // @param evaluate_low_sample_count_percentiles (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#evaluate_low_sample_count_percentiles.
    // @param extended_statistic (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#extended_statistic.
    // @param period (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#period.
    aws_cloudwatch_metric_alarm(rname, evaluation_periods, comparison_operator, threshold, alarm_name, actions_enabled=null, insufficient_data_actions=null, metric_name=null, namespace=null, treat_missing_data=null, alarm_description=null, datapoints_to_alarm=null, ok_actions=null, statistic=null, id=null, tags=null, unit=null, alarm_actions=null, dimensions=null, evaluate_low_sample_count_percentiles=null, extended_statistic=null, period=null):: {
      evaluation_periods: evaluation_periods,
      comparison_operator: comparison_operator,
      threshold: threshold,
      alarm_name: alarm_name,
      [if actions_enabled != null then actions_enabled]: actions_enabled,
      [if insufficient_data_actions != null then insufficient_data_actions]: insufficient_data_actions,
      [if metric_name != null then metric_name]: metric_name,
      [if namespace != null then namespace]: namespace,
      [if treat_missing_data != null then treat_missing_data]: treat_missing_data,
      [if alarm_description != null then alarm_description]: alarm_description,
      [if datapoints_to_alarm != null then datapoints_to_alarm]: datapoints_to_alarm,
      [if ok_actions != null then ok_actions]: ok_actions,
      [if statistic != null then statistic]: statistic,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if unit != null then unit]: unit,
      [if alarm_actions != null then alarm_actions]: alarm_actions,
      [if dimensions != null then dimensions]: dimensions,
      [if evaluate_low_sample_count_percentiles != null then evaluate_low_sample_count_percentiles]: evaluate_low_sample_count_percentiles,
      [if extended_statistic != null then extended_statistic]: extended_statistic,
      [if period != null then period]: period,
      rname:: rname,
      arn:: '${aws_cloudwatch_metric_alarm.%s.arn}' % rname,
    },
    // aws_db_event_subscription - https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param sns_topic (required) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#sns_topic.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#name_prefix.
    // @param source_ids (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#source_ids.
    // @param source_type (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#source_type.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#enabled.
    // @param event_categories (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#event_categories.
    aws_db_event_subscription(rname, sns_topic, tags=null, id=null, name=null, name_prefix=null, source_ids=null, source_type=null, enabled=null, event_categories=null):: {
      sns_topic: sns_topic,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if source_ids != null then source_ids]: source_ids,
      [if source_type != null then source_type]: source_type,
      [if enabled != null then enabled]: enabled,
      [if event_categories != null then event_categories]: event_categories,
      rname:: rname,
      arn:: '${aws_db_event_subscription.%s.arn}' % rname,
      customer_aws_id:: '${aws_db_event_subscription.%s.customer_aws_id}' % rname,
    },
    // aws_globalaccelerator_accelerator - https://www.terraform.io/docs/providers/aws/r/globalaccelerator_accelerator.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_accelerator.html#name.
    // @param ip_address_type (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_accelerator.html#ip_address_type.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_accelerator.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_accelerator.html#id.
    aws_globalaccelerator_accelerator(rname, name, ip_address_type=null, enabled=null, id=null):: {
      name: name,
      [if ip_address_type != null then ip_address_type]: ip_address_type,
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      rname:: rname,
      ip_sets:: '${aws_globalaccelerator_accelerator.%s.ip_sets}' % rname,
    },
    // aws_neptune_cluster - https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param replication_source_identifier (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#replication_source_identifier.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#vpc_security_group_ids.
    // @param iam_roles (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#iam_roles.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#tags.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#kms_key_arn.
    // @param snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#snapshot_identifier.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#availability_zones.
    // @param cluster_identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#cluster_identifier_prefix.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#engine.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#engine_version.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#id.
    // @param preferred_backup_window (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#preferred_backup_window.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#preferred_maintenance_window.
    // @param iam_database_authentication_enabled (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#iam_database_authentication_enabled.
    // @param neptune_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#neptune_subnet_group_name.
    // @param skip_final_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#skip_final_snapshot.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#apply_immediately.
    // @param backup_retention_period (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#backup_retention_period.
    // @param storage_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#storage_encrypted.
    // @param final_snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#final_snapshot_identifier.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#port.
    // @param cluster_identifier (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#cluster_identifier.
    // @param neptune_cluster_parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#neptune_cluster_parameter_group_name.
    aws_neptune_cluster(rname, replication_source_identifier=null, vpc_security_group_ids=null, iam_roles=null, tags=null, kms_key_arn=null, snapshot_identifier=null, availability_zones=null, cluster_identifier_prefix=null, engine=null, engine_version=null, id=null, preferred_backup_window=null, preferred_maintenance_window=null, iam_database_authentication_enabled=null, neptune_subnet_group_name=null, skip_final_snapshot=null, apply_immediately=null, backup_retention_period=null, storage_encrypted=null, final_snapshot_identifier=null, port=null, cluster_identifier=null, neptune_cluster_parameter_group_name=null):: {
      [if replication_source_identifier != null then replication_source_identifier]: replication_source_identifier,
      [if vpc_security_group_ids != null then vpc_security_group_ids]: vpc_security_group_ids,
      [if iam_roles != null then iam_roles]: iam_roles,
      [if tags != null then tags]: tags,
      [if kms_key_arn != null then kms_key_arn]: kms_key_arn,
      [if snapshot_identifier != null then snapshot_identifier]: snapshot_identifier,
      [if availability_zones != null then availability_zones]: availability_zones,
      [if cluster_identifier_prefix != null then cluster_identifier_prefix]: cluster_identifier_prefix,
      [if engine != null then engine]: engine,
      [if engine_version != null then engine_version]: engine_version,
      [if id != null then id]: id,
      [if preferred_backup_window != null then preferred_backup_window]: preferred_backup_window,
      [if preferred_maintenance_window != null then preferred_maintenance_window]: preferred_maintenance_window,
      [if iam_database_authentication_enabled != null then iam_database_authentication_enabled]: iam_database_authentication_enabled,
      [if neptune_subnet_group_name != null then neptune_subnet_group_name]: neptune_subnet_group_name,
      [if skip_final_snapshot != null then skip_final_snapshot]: skip_final_snapshot,
      [if apply_immediately != null then apply_immediately]: apply_immediately,
      [if backup_retention_period != null then backup_retention_period]: backup_retention_period,
      [if storage_encrypted != null then storage_encrypted]: storage_encrypted,
      [if final_snapshot_identifier != null then final_snapshot_identifier]: final_snapshot_identifier,
      [if port != null then port]: port,
      [if cluster_identifier != null then cluster_identifier]: cluster_identifier,
      [if neptune_cluster_parameter_group_name != null then neptune_cluster_parameter_group_name]: neptune_cluster_parameter_group_name,
      rname:: rname,
      cluster_resource_id:: '${aws_neptune_cluster.%s.cluster_resource_id}' % rname,
      endpoint:: '${aws_neptune_cluster.%s.endpoint}' % rname,
      arn:: '${aws_neptune_cluster.%s.arn}' % rname,
      cluster_members:: '${aws_neptune_cluster.%s.cluster_members}' % rname,
      hosted_zone_id:: '${aws_neptune_cluster.%s.hosted_zone_id}' % rname,
      reader_endpoint:: '${aws_neptune_cluster.%s.reader_endpoint}' % rname,
    },
    // aws_api_gateway_vpc_link - https://www.terraform.io/docs/providers/aws/r/api_gateway_vpc_link.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_vpc_link.html#name.
    // @param target_arns (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_vpc_link.html#target_arns.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_vpc_link.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_vpc_link.html#id.
    aws_api_gateway_vpc_link(rname, name, target_arns, description=null, id=null):: {
      name: name,
      target_arns: target_arns,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_glacier_vault - https://www.terraform.io/docs/providers/aws/r/glacier_vault.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glacier_vault.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glacier_vault.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/glacier_vault.html#tags.
    // @param access_policy (optional) https://www.terraform.io/docs/providers/aws/r/glacier_vault.html#access_policy.
    aws_glacier_vault(rname, name, id=null, tags=null, access_policy=null):: {
      name: name,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if access_policy != null then access_policy]: access_policy,
      rname:: rname,
      arn:: '${aws_glacier_vault.%s.arn}' % rname,
      location:: '${aws_glacier_vault.%s.location}' % rname,
    },
    // aws_media_package_channel - https://www.terraform.io/docs/providers/aws/r/media_package_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param channel_id (required) https://www.terraform.io/docs/providers/aws/r/media_package_channel.html#channel_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/media_package_channel.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/media_package_channel.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/media_package_channel.html#description.
    aws_media_package_channel(rname, channel_id, id=null, tags=null, description=null):: {
      channel_id: channel_id,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      rname:: rname,
      hls_ingest:: '${aws_media_package_channel.%s.hls_ingest}' % rname,
      arn:: '${aws_media_package_channel.%s.arn}' % rname,
    },
    // aws_transfer_ssh_key - https://www.terraform.io/docs/providers/aws/r/transfer_ssh_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param server_id (required) https://www.terraform.io/docs/providers/aws/r/transfer_ssh_key.html#server_id.
    // @param user_name (required) https://www.terraform.io/docs/providers/aws/r/transfer_ssh_key.html#user_name.
    // @param body (required) https://www.terraform.io/docs/providers/aws/r/transfer_ssh_key.html#body.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/transfer_ssh_key.html#id.
    aws_transfer_ssh_key(rname, server_id, user_name, body, id=null):: {
      server_id: server_id,
      user_name: user_name,
      body: body,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_api_gateway_model - https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param content_type (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html#content_type.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html#name.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html#rest_api_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html#id.
    // @param schema (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html#schema.
    aws_api_gateway_model(rname, content_type, name, rest_api_id, description=null, id=null, schema=null):: {
      content_type: content_type,
      name: name,
      rest_api_id: rest_api_id,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if schema != null then schema]: schema,
      rname:: rname,
    },
    // aws_batch_compute_environment - https://www.terraform.io/docs/providers/aws/r/batch_compute_environment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/batch_compute_environment.html#type.
    // @param compute_environment_name (required) https://www.terraform.io/docs/providers/aws/r/batch_compute_environment.html#compute_environment_name.
    // @param service_role (required) https://www.terraform.io/docs/providers/aws/r/batch_compute_environment.html#service_role.
    // @param state (optional) https://www.terraform.io/docs/providers/aws/r/batch_compute_environment.html#state.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/batch_compute_environment.html#id.
    aws_batch_compute_environment(rname, type, compute_environment_name, service_role, state=null, id=null):: {
      type: type,
      compute_environment_name: compute_environment_name,
      service_role: service_role,
      [if state != null then state]: state,
      [if id != null then id]: id,
      rname:: rname,
      status:: '${aws_batch_compute_environment.%s.status}' % rname,
      status_reason:: '${aws_batch_compute_environment.%s.status_reason}' % rname,
      arn:: '${aws_batch_compute_environment.%s.arn}' % rname,
      ecc_cluster_arn:: '${aws_batch_compute_environment.%s.ecc_cluster_arn}' % rname,
      ecs_cluster_arn:: '${aws_batch_compute_environment.%s.ecs_cluster_arn}' % rname,
    },
    // aws_config_delivery_channel - https://www.terraform.io/docs/providers/aws/r/config_delivery_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param s3_bucket_name (required) https://www.terraform.io/docs/providers/aws/r/config_delivery_channel.html#s3_bucket_name.
    // @param s3_key_prefix (optional) https://www.terraform.io/docs/providers/aws/r/config_delivery_channel.html#s3_key_prefix.
    // @param sns_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/config_delivery_channel.html#sns_topic_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_delivery_channel.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/config_delivery_channel.html#name.
    aws_config_delivery_channel(rname, s3_bucket_name, s3_key_prefix=null, sns_topic_arn=null, id=null, name=null):: {
      s3_bucket_name: s3_bucket_name,
      [if s3_key_prefix != null then s3_key_prefix]: s3_key_prefix,
      [if sns_topic_arn != null then sns_topic_arn]: sns_topic_arn,
      [if id != null then id]: id,
      [if name != null then name]: name,
      rname:: rname,
    },
    // aws_directory_service_directory - https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param password (required) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#password.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#name.
    // @param size (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#size.
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#type.
    // @param enable_sso (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#enable_sso.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#id.
    // @param alias (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#alias.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#description.
    // @param edition (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#edition.
    // @param short_name (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#short_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#tags.
    aws_directory_service_directory(rname, password, name, size=null, type=null, enable_sso=null, id=null, alias=null, description=null, edition=null, short_name=null, tags=null):: {
      password: password,
      name: name,
      [if size != null then size]: size,
      [if type != null then type]: type,
      [if enable_sso != null then enable_sso]: enable_sso,
      [if id != null then id]: id,
      [if alias != null then alias]: alias,
      [if description != null then description]: description,
      [if edition != null then edition]: edition,
      [if short_name != null then short_name]: short_name,
      [if tags != null then tags]: tags,
      rname:: rname,
      dns_ip_addresses:: '${aws_directory_service_directory.%s.dns_ip_addresses}' % rname,
      access_url:: '${aws_directory_service_directory.%s.access_url}' % rname,
      security_group_id:: '${aws_directory_service_directory.%s.security_group_id}' % rname,
    },
    // aws_glue_connection - https://www.terraform.io/docs/providers/aws/r/glue_connection.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_connection.html#name.
    // @param connection_properties (required) https://www.terraform.io/docs/providers/aws/r/glue_connection.html#connection_properties.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_connection.html#id.
    // @param match_criteria (optional) https://www.terraform.io/docs/providers/aws/r/glue_connection.html#match_criteria.
    // @param catalog_id (optional) https://www.terraform.io/docs/providers/aws/r/glue_connection.html#catalog_id.
    // @param connection_type (optional) https://www.terraform.io/docs/providers/aws/r/glue_connection.html#connection_type.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/glue_connection.html#description.
    aws_glue_connection(rname, name, connection_properties, id=null, match_criteria=null, catalog_id=null, connection_type=null, description=null):: {
      name: name,
      connection_properties: connection_properties,
      [if id != null then id]: id,
      [if match_criteria != null then match_criteria]: match_criteria,
      [if catalog_id != null then catalog_id]: catalog_id,
      [if connection_type != null then connection_type]: connection_type,
      [if description != null then description]: description,
      rname:: rname,
    },
    // aws_iot_thing_principal_attachment - https://www.terraform.io/docs/providers/aws/r/iot_thing_principal_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param principal (required) https://www.terraform.io/docs/providers/aws/r/iot_thing_principal_attachment.html#principal.
    // @param thing (required) https://www.terraform.io/docs/providers/aws/r/iot_thing_principal_attachment.html#thing.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_thing_principal_attachment.html#id.
    aws_iot_thing_principal_attachment(rname, principal, thing, id=null):: {
      principal: principal,
      thing: thing,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_kms_ciphertext - https://www.terraform.io/docs/providers/aws/r/kms_ciphertext.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param plaintext (required) https://www.terraform.io/docs/providers/aws/r/kms_ciphertext.html#plaintext.
    // @param key_id (required) https://www.terraform.io/docs/providers/aws/r/kms_ciphertext.html#key_id.
    // @param context (optional) https://www.terraform.io/docs/providers/aws/r/kms_ciphertext.html#context.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kms_ciphertext.html#id.
    aws_kms_ciphertext(rname, plaintext, key_id, context=null, id=null):: {
      plaintext: plaintext,
      key_id: key_id,
      [if context != null then context]: context,
      [if id != null then id]: id,
      rname:: rname,
      ciphertext_blob:: '${aws_kms_ciphertext.%s.ciphertext_blob}' % rname,
    },
    // aws_main_route_table_association - https://www.terraform.io/docs/providers/aws/r/main_route_table_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param route_table_id (required) https://www.terraform.io/docs/providers/aws/r/main_route_table_association.html#route_table_id.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/main_route_table_association.html#vpc_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/main_route_table_association.html#id.
    aws_main_route_table_association(rname, route_table_id, vpc_id, id=null):: {
      route_table_id: route_table_id,
      vpc_id: vpc_id,
      [if id != null then id]: id,
      rname:: rname,
      original_route_table_id:: '${aws_main_route_table_association.%s.original_route_table_id}' % rname,
    },
    // aws_api_gateway_method_settings - https://www.terraform.io/docs/providers/aws/r/api_gateway_method_settings.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param method_path (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_settings.html#method_path.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_settings.html#rest_api_id.
    // @param stage_name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_settings.html#stage_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_settings.html#id.
    aws_api_gateway_method_settings(rname, method_path, rest_api_id, stage_name, id=null):: {
      method_path: method_path,
      rest_api_id: rest_api_id,
      stage_name: stage_name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_waf_rule - https://www.terraform.io/docs/providers/aws/r/waf_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_rule.html#name.
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/waf_rule.html#metric_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_rule.html#id.
    aws_waf_rule(rname, name, metric_name, id=null):: {
      name: name,
      metric_name: metric_name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_elasticache_security_group - https://www.terraform.io/docs/providers/aws/r/elasticache_security_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/elasticache_security_group.html#name.
    // @param security_group_names (required) https://www.terraform.io/docs/providers/aws/r/elasticache_security_group.html#security_group_names.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_security_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_security_group.html#id.
    aws_elasticache_security_group(rname, name, security_group_names, description=null, id=null):: {
      name: name,
      security_group_names: security_group_names,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_dax_subnet_group - https://www.terraform.io/docs/providers/aws/r/dax_subnet_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dax_subnet_group.html#name.
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/dax_subnet_group.html#subnet_ids.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/dax_subnet_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dax_subnet_group.html#id.
    aws_dax_subnet_group(rname, name, subnet_ids, description=null, id=null):: {
      name: name,
      subnet_ids: subnet_ids,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      vpc_id:: '${aws_dax_subnet_group.%s.vpc_id}' % rname,
    },
    // aws_neptune_cluster_parameter_group - https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html#family.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html#tags.
    aws_neptune_cluster_parameter_group(rname, family, description=null, id=null, name=null, name_prefix=null, tags=null):: {
      family: family,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_neptune_cluster_parameter_group.%s.arn}' % rname,
    },
    // aws_ami - https://www.terraform.io/docs/providers/aws/r/ami.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ami.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#description.
    // @param sriov_net_support (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#sriov_net_support.
    // @param virtualization_type (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#virtualization_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#id.
    // @param kernel_id (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#kernel_id.
    // @param ramdisk_id (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#ramdisk_id.
    // @param architecture (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#architecture.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#tags.
    // @param ena_support (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#ena_support.
    // @param image_location (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#image_location.
    // @param root_device_name (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#root_device_name.
    aws_ami(rname, name, description=null, sriov_net_support=null, virtualization_type=null, id=null, kernel_id=null, ramdisk_id=null, architecture=null, tags=null, ena_support=null, image_location=null, root_device_name=null):: {
      name: name,
      [if description != null then description]: description,
      [if sriov_net_support != null then sriov_net_support]: sriov_net_support,
      [if virtualization_type != null then virtualization_type]: virtualization_type,
      [if id != null then id]: id,
      [if kernel_id != null then kernel_id]: kernel_id,
      [if ramdisk_id != null then ramdisk_id]: ramdisk_id,
      [if architecture != null then architecture]: architecture,
      [if tags != null then tags]: tags,
      [if ena_support != null then ena_support]: ena_support,
      [if image_location != null then image_location]: image_location,
      [if root_device_name != null then root_device_name]: root_device_name,
      rname:: rname,
      manage_ebs_snapshots:: '${aws_ami.%s.manage_ebs_snapshots}' % rname,
      root_snapshot_id:: '${aws_ami.%s.root_snapshot_id}' % rname,
    },
    // aws_iam_access_key - https://www.terraform.io/docs/providers/aws/r/iam_access_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param user (required) https://www.terraform.io/docs/providers/aws/r/iam_access_key.html#user.
    // @param status (optional) https://www.terraform.io/docs/providers/aws/r/iam_access_key.html#status.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_access_key.html#id.
    // @param pgp_key (optional) https://www.terraform.io/docs/providers/aws/r/iam_access_key.html#pgp_key.
    aws_iam_access_key(rname, user, status=null, id=null, pgp_key=null):: {
      user: user,
      [if status != null then status]: status,
      [if id != null then id]: id,
      [if pgp_key != null then pgp_key]: pgp_key,
      rname:: rname,
      secret:: '${aws_iam_access_key.%s.secret}' % rname,
      ses_smtp_password:: '${aws_iam_access_key.%s.ses_smtp_password}' % rname,
      encrypted_secret:: '${aws_iam_access_key.%s.encrypted_secret}' % rname,
      key_fingerprint:: '${aws_iam_access_key.%s.key_fingerprint}' % rname,
    },
    // aws_redshift_security_group - https://www.terraform.io/docs/providers/aws/r/redshift_security_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/redshift_security_group.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/redshift_security_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_security_group.html#id.
    aws_redshift_security_group(rname, name, description=null, id=null):: {
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_waf_sql_injection_match_set - https://www.terraform.io/docs/providers/aws/r/waf_sql_injection_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_sql_injection_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_sql_injection_match_set.html#id.
    aws_waf_sql_injection_match_set(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_datapipeline_pipeline - https://www.terraform.io/docs/providers/aws/r/datapipeline_pipeline.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/datapipeline_pipeline.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/datapipeline_pipeline.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/datapipeline_pipeline.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/datapipeline_pipeline.html#tags.
    aws_datapipeline_pipeline(rname, name, description=null, id=null, tags=null):: {
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
    },
    // aws_backup_selection - https://www.terraform.io/docs/providers/aws/r/backup_selection.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/backup_selection.html#name.
    // @param plan_id (required) https://www.terraform.io/docs/providers/aws/r/backup_selection.html#plan_id.
    // @param iam_role_arn (required) https://www.terraform.io/docs/providers/aws/r/backup_selection.html#iam_role_arn.
    // @param resources (optional) https://www.terraform.io/docs/providers/aws/r/backup_selection.html#resources.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/backup_selection.html#id.
    aws_backup_selection(rname, name, plan_id, iam_role_arn, resources=null, id=null):: {
      name: name,
      plan_id: plan_id,
      iam_role_arn: iam_role_arn,
      [if resources != null then resources]: resources,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_organizations_account - https://www.terraform.io/docs/providers/aws/r/organizations_account.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param email (required) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#email.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#name.
    // @param parent_id (optional) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#parent_id.
    // @param iam_user_access_to_billing (optional) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#iam_user_access_to_billing.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#id.
    // @param role_name (optional) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#role_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#tags.
    aws_organizations_account(rname, email, name, parent_id=null, iam_user_access_to_billing=null, id=null, role_name=null, tags=null):: {
      email: email,
      name: name,
      [if parent_id != null then parent_id]: parent_id,
      [if iam_user_access_to_billing != null then iam_user_access_to_billing]: iam_user_access_to_billing,
      [if id != null then id]: id,
      [if role_name != null then role_name]: role_name,
      [if tags != null then tags]: tags,
      rname:: rname,
      joined_timestamp:: '${aws_organizations_account.%s.joined_timestamp}' % rname,
      status:: '${aws_organizations_account.%s.status}' % rname,
      arn:: '${aws_organizations_account.%s.arn}' % rname,
      joined_method:: '${aws_organizations_account.%s.joined_method}' % rname,
    },
    // aws_vpc - https://www.terraform.io/docs/providers/aws/r/vpc.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cidr_block (required) https://www.terraform.io/docs/providers/aws/r/vpc.html#cidr_block.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#tags.
    // @param enable_dns_support (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#enable_dns_support.
    // @param instance_tenancy (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#instance_tenancy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#id.
    // @param enable_classiclink (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#enable_classiclink.
    // @param enable_dns_hostnames (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#enable_dns_hostnames.
    // @param assign_generated_ipv6_cidr_block (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#assign_generated_ipv6_cidr_block.
    // @param enable_classiclink_dns_support (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#enable_classiclink_dns_support.
    aws_vpc(rname, cidr_block, tags=null, enable_dns_support=null, instance_tenancy=null, id=null, enable_classiclink=null, enable_dns_hostnames=null, assign_generated_ipv6_cidr_block=null, enable_classiclink_dns_support=null):: {
      cidr_block: cidr_block,
      [if tags != null then tags]: tags,
      [if enable_dns_support != null then enable_dns_support]: enable_dns_support,
      [if instance_tenancy != null then instance_tenancy]: instance_tenancy,
      [if id != null then id]: id,
      [if enable_classiclink != null then enable_classiclink]: enable_classiclink,
      [if enable_dns_hostnames != null then enable_dns_hostnames]: enable_dns_hostnames,
      [if assign_generated_ipv6_cidr_block != null then assign_generated_ipv6_cidr_block]: assign_generated_ipv6_cidr_block,
      [if enable_classiclink_dns_support != null then enable_classiclink_dns_support]: enable_classiclink_dns_support,
      rname:: rname,
      dhcp_options_id:: '${aws_vpc.%s.dhcp_options_id}' % rname,
      ipv6_cidr_block:: '${aws_vpc.%s.ipv6_cidr_block}' % rname,
      default_route_table_id:: '${aws_vpc.%s.default_route_table_id}' % rname,
      default_network_acl_id:: '${aws_vpc.%s.default_network_acl_id}' % rname,
      owner_id:: '${aws_vpc.%s.owner_id}' % rname,
      ipv6_association_id:: '${aws_vpc.%s.ipv6_association_id}' % rname,
      main_route_table_id:: '${aws_vpc.%s.main_route_table_id}' % rname,
      arn:: '${aws_vpc.%s.arn}' % rname,
      default_security_group_id:: '${aws_vpc.%s.default_security_group_id}' % rname,
    },
    // aws_autoscaling_schedule - https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param scheduled_action_name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#scheduled_action_name.
    // @param autoscaling_group_name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#autoscaling_group_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#id.
    // @param max_size (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#max_size.
    // @param min_size (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#min_size.
    // @param recurrence (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#recurrence.
    // @param start_time (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#start_time.
    // @param desired_capacity (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#desired_capacity.
    // @param end_time (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#end_time.
    aws_autoscaling_schedule(rname, scheduled_action_name, autoscaling_group_name, id=null, max_size=null, min_size=null, recurrence=null, start_time=null, desired_capacity=null, end_time=null):: {
      scheduled_action_name: scheduled_action_name,
      autoscaling_group_name: autoscaling_group_name,
      [if id != null then id]: id,
      [if max_size != null then max_size]: max_size,
      [if min_size != null then min_size]: min_size,
      [if recurrence != null then recurrence]: recurrence,
      [if start_time != null then start_time]: start_time,
      [if desired_capacity != null then desired_capacity]: desired_capacity,
      [if end_time != null then end_time]: end_time,
      rname:: rname,
      arn:: '${aws_autoscaling_schedule.%s.arn}' % rname,
    },
    // aws_msk_cluster - https://www.terraform.io/docs/providers/aws/r/msk_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param kafka_version (required) https://www.terraform.io/docs/providers/aws/r/msk_cluster.html#kafka_version.
    // @param cluster_name (required) https://www.terraform.io/docs/providers/aws/r/msk_cluster.html#cluster_name.
    // @param number_of_broker_nodes (required) https://www.terraform.io/docs/providers/aws/r/msk_cluster.html#number_of_broker_nodes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/msk_cluster.html#id.
    // @param enhanced_monitoring (optional) https://www.terraform.io/docs/providers/aws/r/msk_cluster.html#enhanced_monitoring.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/msk_cluster.html#tags.
    aws_msk_cluster(rname, kafka_version, cluster_name, number_of_broker_nodes, id=null, enhanced_monitoring=null, tags=null):: {
      kafka_version: kafka_version,
      cluster_name: cluster_name,
      number_of_broker_nodes: number_of_broker_nodes,
      [if id != null then id]: id,
      [if enhanced_monitoring != null then enhanced_monitoring]: enhanced_monitoring,
      [if tags != null then tags]: tags,
      rname:: rname,
      bootstrap_brokers:: '${aws_msk_cluster.%s.bootstrap_brokers}' % rname,
      current_version:: '${aws_msk_cluster.%s.current_version}' % rname,
      zookeeper_connect_string:: '${aws_msk_cluster.%s.zookeeper_connect_string}' % rname,
      arn:: '${aws_msk_cluster.%s.arn}' % rname,
      bootstrap_brokers_tls:: '${aws_msk_cluster.%s.bootstrap_brokers_tls}' % rname,
    },
    // aws_opsworks_java_app_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#stack_id.
    // @param app_server (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#app_server.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_deploy_recipes.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_shutdown_recipes.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_setup_recipes.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#drain_elb_on_shutdown.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#id.
    // @param jvm_options (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#jvm_options.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#auto_healing.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_instance_profile_arn.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_json.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_security_group_ids.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#use_ebs_optimized_instances.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#install_updates_on_boot.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#instance_shutdown_timeout.
    // @param jvm_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#jvm_type.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#name.
    // @param app_server_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#app_server_version.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_configure_recipes.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_undeploy_recipes.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#elastic_load_balancer.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#system_packages.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#auto_assign_elastic_ips.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#auto_assign_public_ips.
    // @param jvm_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#jvm_version.
    aws_opsworks_java_app_layer(rname, stack_id, app_server=null, custom_deploy_recipes=null, custom_shutdown_recipes=null, custom_setup_recipes=null, drain_elb_on_shutdown=null, id=null, jvm_options=null, auto_healing=null, custom_instance_profile_arn=null, custom_json=null, custom_security_group_ids=null, use_ebs_optimized_instances=null, install_updates_on_boot=null, instance_shutdown_timeout=null, jvm_type=null, name=null, app_server_version=null, custom_configure_recipes=null, custom_undeploy_recipes=null, elastic_load_balancer=null, system_packages=null, auto_assign_elastic_ips=null, auto_assign_public_ips=null, jvm_version=null):: {
      stack_id: stack_id,
      [if app_server != null then app_server]: app_server,
      [if custom_deploy_recipes != null then custom_deploy_recipes]: custom_deploy_recipes,
      [if custom_shutdown_recipes != null then custom_shutdown_recipes]: custom_shutdown_recipes,
      [if custom_setup_recipes != null then custom_setup_recipes]: custom_setup_recipes,
      [if drain_elb_on_shutdown != null then drain_elb_on_shutdown]: drain_elb_on_shutdown,
      [if id != null then id]: id,
      [if jvm_options != null then jvm_options]: jvm_options,
      [if auto_healing != null then auto_healing]: auto_healing,
      [if custom_instance_profile_arn != null then custom_instance_profile_arn]: custom_instance_profile_arn,
      [if custom_json != null then custom_json]: custom_json,
      [if custom_security_group_ids != null then custom_security_group_ids]: custom_security_group_ids,
      [if use_ebs_optimized_instances != null then use_ebs_optimized_instances]: use_ebs_optimized_instances,
      [if install_updates_on_boot != null then install_updates_on_boot]: install_updates_on_boot,
      [if instance_shutdown_timeout != null then instance_shutdown_timeout]: instance_shutdown_timeout,
      [if jvm_type != null then jvm_type]: jvm_type,
      [if name != null then name]: name,
      [if app_server_version != null then app_server_version]: app_server_version,
      [if custom_configure_recipes != null then custom_configure_recipes]: custom_configure_recipes,
      [if custom_undeploy_recipes != null then custom_undeploy_recipes]: custom_undeploy_recipes,
      [if elastic_load_balancer != null then elastic_load_balancer]: elastic_load_balancer,
      [if system_packages != null then system_packages]: system_packages,
      [if auto_assign_elastic_ips != null then auto_assign_elastic_ips]: auto_assign_elastic_ips,
      [if auto_assign_public_ips != null then auto_assign_public_ips]: auto_assign_public_ips,
      [if jvm_version != null then jvm_version]: jvm_version,
      rname:: rname,
    },
    // aws_api_gateway_domain_name - https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain_name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#domain_name.
    // @param certificate_body (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#certificate_body.
    // @param regional_certificate_arn (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#regional_certificate_arn.
    // @param security_policy (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#security_policy.
    // @param certificate_arn (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#certificate_arn.
    // @param certificate_chain (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#certificate_chain.
    // @param certificate_name (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#certificate_name.
    // @param regional_certificate_name (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#regional_certificate_name.
    // @param certificate_private_key (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#certificate_private_key.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#id.
    aws_api_gateway_domain_name(rname, domain_name, certificate_body=null, regional_certificate_arn=null, security_policy=null, certificate_arn=null, certificate_chain=null, certificate_name=null, regional_certificate_name=null, certificate_private_key=null, id=null):: {
      domain_name: domain_name,
      [if certificate_body != null then certificate_body]: certificate_body,
      [if regional_certificate_arn != null then regional_certificate_arn]: regional_certificate_arn,
      [if security_policy != null then security_policy]: security_policy,
      [if certificate_arn != null then certificate_arn]: certificate_arn,
      [if certificate_chain != null then certificate_chain]: certificate_chain,
      [if certificate_name != null then certificate_name]: certificate_name,
      [if regional_certificate_name != null then regional_certificate_name]: regional_certificate_name,
      [if certificate_private_key != null then certificate_private_key]: certificate_private_key,
      [if id != null then id]: id,
      rname:: rname,
      regional_zone_id:: '${aws_api_gateway_domain_name.%s.regional_zone_id}' % rname,
      regional_domain_name:: '${aws_api_gateway_domain_name.%s.regional_domain_name}' % rname,
      cloudfront_domain_name:: '${aws_api_gateway_domain_name.%s.cloudfront_domain_name}' % rname,
      cloudfront_zone_id:: '${aws_api_gateway_domain_name.%s.cloudfront_zone_id}' % rname,
      certificate_upload_date:: '${aws_api_gateway_domain_name.%s.certificate_upload_date}' % rname,
    },
    // aws_db_snapshot - https://www.terraform.io/docs/providers/aws/r/db_snapshot.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param db_instance_identifier (required) https://www.terraform.io/docs/providers/aws/r/db_snapshot.html#db_instance_identifier.
    // @param db_snapshot_identifier (required) https://www.terraform.io/docs/providers/aws/r/db_snapshot.html#db_snapshot_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_snapshot.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_snapshot.html#tags.
    aws_db_snapshot(rname, db_instance_identifier, db_snapshot_identifier, id=null, tags=null):: {
      db_instance_identifier: db_instance_identifier,
      db_snapshot_identifier: db_snapshot_identifier,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      engine:: '${aws_db_snapshot.%s.engine}' % rname,
      license_model:: '${aws_db_snapshot.%s.license_model}' % rname,
      option_group_name:: '${aws_db_snapshot.%s.option_group_name}' % rname,
      vpc_id:: '${aws_db_snapshot.%s.vpc_id}' % rname,
      db_snapshot_arn:: '${aws_db_snapshot.%s.db_snapshot_arn}' % rname,
      encrypted:: '${aws_db_snapshot.%s.encrypted}' % rname,
      iops:: '${aws_db_snapshot.%s.iops}' % rname,
      kms_key_id:: '${aws_db_snapshot.%s.kms_key_id}' % rname,
      status:: '${aws_db_snapshot.%s.status}' % rname,
      availability_zone:: '${aws_db_snapshot.%s.availability_zone}' % rname,
      engine_version:: '${aws_db_snapshot.%s.engine_version}' % rname,
      port:: '${aws_db_snapshot.%s.port}' % rname,
      source_db_snapshot_identifier:: '${aws_db_snapshot.%s.source_db_snapshot_identifier}' % rname,
      source_region:: '${aws_db_snapshot.%s.source_region}' % rname,
      allocated_storage:: '${aws_db_snapshot.%s.allocated_storage}' % rname,
      snapshot_type:: '${aws_db_snapshot.%s.snapshot_type}' % rname,
      storage_type:: '${aws_db_snapshot.%s.storage_type}' % rname,
    },
    // aws_ecr_repository - https://www.terraform.io/docs/providers/aws/r/ecr_repository.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ecr_repository.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ecr_repository.html#id.
    // @param image_tag_mutability (optional) https://www.terraform.io/docs/providers/aws/r/ecr_repository.html#image_tag_mutability.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ecr_repository.html#tags.
    aws_ecr_repository(rname, name, id=null, image_tag_mutability=null, tags=null):: {
      name: name,
      [if id != null then id]: id,
      [if image_tag_mutability != null then image_tag_mutability]: image_tag_mutability,
      [if tags != null then tags]: tags,
      rname:: rname,
      registry_id:: '${aws_ecr_repository.%s.registry_id}' % rname,
      repository_url:: '${aws_ecr_repository.%s.repository_url}' % rname,
      arn:: '${aws_ecr_repository.%s.arn}' % rname,
    },
    // aws_lightsail_static_ip_attachment - https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_name (required) https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip_attachment.html#instance_name.
    // @param static_ip_name (required) https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip_attachment.html#static_ip_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip_attachment.html#id.
    aws_lightsail_static_ip_attachment(rname, instance_name, static_ip_name, id=null):: {
      instance_name: instance_name,
      static_ip_name: static_ip_name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_cognito_user_pool_client - https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#name.
    // @param user_pool_id (required) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#user_pool_id.
    // @param write_attributes (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#write_attributes.
    // @param default_redirect_uri (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#default_redirect_uri.
    // @param logout_urls (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#logout_urls.
    // @param read_attributes (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#read_attributes.
    // @param supported_identity_providers (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#supported_identity_providers.
    // @param refresh_token_validity (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#refresh_token_validity.
    // @param allowed_oauth_scopes (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#allowed_oauth_scopes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#id.
    // @param callback_urls (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#callback_urls.
    // @param explicit_auth_flows (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#explicit_auth_flows.
    // @param generate_secret (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#generate_secret.
    // @param allowed_oauth_flows (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#allowed_oauth_flows.
    // @param allowed_oauth_flows_user_pool_client (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#allowed_oauth_flows_user_pool_client.
    aws_cognito_user_pool_client(rname, name, user_pool_id, write_attributes=null, default_redirect_uri=null, logout_urls=null, read_attributes=null, supported_identity_providers=null, refresh_token_validity=null, allowed_oauth_scopes=null, id=null, callback_urls=null, explicit_auth_flows=null, generate_secret=null, allowed_oauth_flows=null, allowed_oauth_flows_user_pool_client=null):: {
      name: name,
      user_pool_id: user_pool_id,
      [if write_attributes != null then write_attributes]: write_attributes,
      [if default_redirect_uri != null then default_redirect_uri]: default_redirect_uri,
      [if logout_urls != null then logout_urls]: logout_urls,
      [if read_attributes != null then read_attributes]: read_attributes,
      [if supported_identity_providers != null then supported_identity_providers]: supported_identity_providers,
      [if refresh_token_validity != null then refresh_token_validity]: refresh_token_validity,
      [if allowed_oauth_scopes != null then allowed_oauth_scopes]: allowed_oauth_scopes,
      [if id != null then id]: id,
      [if callback_urls != null then callback_urls]: callback_urls,
      [if explicit_auth_flows != null then explicit_auth_flows]: explicit_auth_flows,
      [if generate_secret != null then generate_secret]: generate_secret,
      [if allowed_oauth_flows != null then allowed_oauth_flows]: allowed_oauth_flows,
      [if allowed_oauth_flows_user_pool_client != null then allowed_oauth_flows_user_pool_client]: allowed_oauth_flows_user_pool_client,
      rname:: rname,
      client_secret:: '${aws_cognito_user_pool_client.%s.client_secret}' % rname,
    },
    // aws_app_cookie_stickiness_policy - https://www.terraform.io/docs/providers/aws/r/app_cookie_stickiness_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param lb_port (required) https://www.terraform.io/docs/providers/aws/r/app_cookie_stickiness_policy.html#lb_port.
    // @param load_balancer (required) https://www.terraform.io/docs/providers/aws/r/app_cookie_stickiness_policy.html#load_balancer.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/app_cookie_stickiness_policy.html#name.
    // @param cookie_name (required) https://www.terraform.io/docs/providers/aws/r/app_cookie_stickiness_policy.html#cookie_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/app_cookie_stickiness_policy.html#id.
    aws_app_cookie_stickiness_policy(rname, lb_port, load_balancer, name, cookie_name, id=null):: {
      lb_port: lb_port,
      load_balancer: load_balancer,
      name: name,
      cookie_name: cookie_name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_default_network_acl - https://www.terraform.io/docs/providers/aws/r/default_network_acl.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param default_network_acl_id (required) https://www.terraform.io/docs/providers/aws/r/default_network_acl.html#default_network_acl_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/default_network_acl.html#id.
    // @param subnet_ids (optional) https://www.terraform.io/docs/providers/aws/r/default_network_acl.html#subnet_ids.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/default_network_acl.html#tags.
    aws_default_network_acl(rname, default_network_acl_id, id=null, subnet_ids=null, tags=null):: {
      default_network_acl_id: default_network_acl_id,
      [if id != null then id]: id,
      [if subnet_ids != null then subnet_ids]: subnet_ids,
      [if tags != null then tags]: tags,
      rname:: rname,
      owner_id:: '${aws_default_network_acl.%s.owner_id}' % rname,
      vpc_id:: '${aws_default_network_acl.%s.vpc_id}' % rname,
    },
    // aws_iam_openid_connect_provider - https://www.terraform.io/docs/providers/aws/r/iam_openid_connect_provider.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param client_id_list (required) https://www.terraform.io/docs/providers/aws/r/iam_openid_connect_provider.html#client_id_list.
    // @param thumbprint_list (required) https://www.terraform.io/docs/providers/aws/r/iam_openid_connect_provider.html#thumbprint_list.
    // @param url (required) https://www.terraform.io/docs/providers/aws/r/iam_openid_connect_provider.html#url.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_openid_connect_provider.html#id.
    aws_iam_openid_connect_provider(rname, client_id_list, thumbprint_list, url, id=null):: {
      client_id_list: client_id_list,
      thumbprint_list: thumbprint_list,
      url: url,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_iam_openid_connect_provider.%s.arn}' % rname,
    },
    // aws_iam_role_policy_attachment - https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy_arn (required) https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html#policy_arn.
    // @param role (required) https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html#role.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html#id.
    aws_iam_role_policy_attachment(rname, policy_arn, role, id=null):: {
      policy_arn: policy_arn,
      role: role,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_s3_bucket_inventory - https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html#bucket.
    // @param included_object_versions (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html#included_object_versions.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html#name.
    // @param optional_fields (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html#optional_fields.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html#id.
    aws_s3_bucket_inventory(rname, bucket, included_object_versions, name, optional_fields=null, enabled=null, id=null):: {
      bucket: bucket,
      included_object_versions: included_object_versions,
      name: name,
      [if optional_fields != null then optional_fields]: optional_fields,
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_storagegateway_gateway - https://www.terraform.io/docs/providers/aws/r/storagegateway_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param gateway_timezone (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_gateway.html#gateway_timezone.
    // @param gateway_name (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_gateway.html#gateway_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_gateway.html#id.
    // @param medium_changer_type (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_gateway.html#medium_changer_type.
    // @param smb_guest_password (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_gateway.html#smb_guest_password.
    // @param activation_key (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_gateway.html#activation_key.
    // @param gateway_ip_address (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_gateway.html#gateway_ip_address.
    // @param gateway_type (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_gateway.html#gateway_type.
    // @param tape_drive_type (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_gateway.html#tape_drive_type.
    aws_storagegateway_gateway(rname, gateway_timezone, gateway_name, id=null, medium_changer_type=null, smb_guest_password=null, activation_key=null, gateway_ip_address=null, gateway_type=null, tape_drive_type=null):: {
      gateway_timezone: gateway_timezone,
      gateway_name: gateway_name,
      [if id != null then id]: id,
      [if medium_changer_type != null then medium_changer_type]: medium_changer_type,
      [if smb_guest_password != null then smb_guest_password]: smb_guest_password,
      [if activation_key != null then activation_key]: activation_key,
      [if gateway_ip_address != null then gateway_ip_address]: gateway_ip_address,
      [if gateway_type != null then gateway_type]: gateway_type,
      [if tape_drive_type != null then tape_drive_type]: tape_drive_type,
      rname:: rname,
      arn:: '${aws_storagegateway_gateway.%s.arn}' % rname,
      gateway_id:: '${aws_storagegateway_gateway.%s.gateway_id}' % rname,
    },
    // aws_api_gateway_method - https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param http_method (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#http_method.
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#resource_id.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#rest_api_id.
    // @param authorization (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#authorization.
    // @param api_key_required (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#api_key_required.
    // @param request_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#request_parameters.
    // @param request_parameters_in_json (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#request_parameters_in_json.
    // @param request_validator_id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#request_validator_id.
    // @param authorization_scopes (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#authorization_scopes.
    // @param authorizer_id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#authorizer_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#id.
    // @param request_models (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#request_models.
    aws_api_gateway_method(rname, http_method, resource_id, rest_api_id, authorization, api_key_required=null, request_parameters=null, request_parameters_in_json=null, request_validator_id=null, authorization_scopes=null, authorizer_id=null, id=null, request_models=null):: {
      http_method: http_method,
      resource_id: resource_id,
      rest_api_id: rest_api_id,
      authorization: authorization,
      [if api_key_required != null then api_key_required]: api_key_required,
      [if request_parameters != null then request_parameters]: request_parameters,
      [if request_parameters_in_json != null then request_parameters_in_json]: request_parameters_in_json,
      [if request_validator_id != null then request_validator_id]: request_validator_id,
      [if authorization_scopes != null then authorization_scopes]: authorization_scopes,
      [if authorizer_id != null then authorizer_id]: authorizer_id,
      [if id != null then id]: id,
      [if request_models != null then request_models]: request_models,
      rname:: rname,
    },
    // aws_waf_rate_based_rule - https://www.terraform.io/docs/providers/aws/r/waf_rate_based_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/waf_rate_based_rule.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_rate_based_rule.html#name.
    // @param rate_key (required) https://www.terraform.io/docs/providers/aws/r/waf_rate_based_rule.html#rate_key.
    // @param rate_limit (required) https://www.terraform.io/docs/providers/aws/r/waf_rate_based_rule.html#rate_limit.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_rate_based_rule.html#id.
    aws_waf_rate_based_rule(rname, metric_name, name, rate_key, rate_limit, id=null):: {
      metric_name: metric_name,
      name: name,
      rate_key: rate_key,
      rate_limit: rate_limit,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_wafregional_web_acl - https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl.html#id.
    aws_wafregional_web_acl(rname, metric_name, name, id=null):: {
      metric_name: metric_name,
      name: name,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_wafregional_web_acl.%s.arn}' % rname,
    },
    // aws_vpn_gateway - https://www.terraform.io/docs/providers/aws/r/vpn_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param amazon_side_asn (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway.html#amazon_side_asn.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway.html#availability_zone.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway.html#tags.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway.html#vpc_id.
    aws_vpn_gateway(rname, amazon_side_asn=null, availability_zone=null, id=null, tags=null, vpc_id=null):: {
      [if amazon_side_asn != null then amazon_side_asn]: amazon_side_asn,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if vpc_id != null then vpc_id]: vpc_id,
      rname:: rname,
    },
    // aws_gamelift_game_session_queue - https://www.terraform.io/docs/providers/aws/r/gamelift_game_session_queue.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/gamelift_game_session_queue.html#name.
    // @param timeout_in_seconds (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_game_session_queue.html#timeout_in_seconds.
    // @param destinations (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_game_session_queue.html#destinations.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_game_session_queue.html#id.
    aws_gamelift_game_session_queue(rname, name, timeout_in_seconds=null, destinations=null, id=null):: {
      name: name,
      [if timeout_in_seconds != null then timeout_in_seconds]: timeout_in_seconds,
      [if destinations != null then destinations]: destinations,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_gamelift_game_session_queue.%s.arn}' % rname,
    },
    // aws_opsworks_permission - https://www.terraform.io/docs/providers/aws/r/opsworks_permission.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param user_arn (required) https://www.terraform.io/docs/providers/aws/r/opsworks_permission.html#user_arn.
    // @param allow_ssh (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_permission.html#allow_ssh.
    // @param allow_sudo (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_permission.html#allow_sudo.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_permission.html#id.
    // @param level (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_permission.html#level.
    // @param stack_id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_permission.html#stack_id.
    aws_opsworks_permission(rname, user_arn, allow_ssh=null, allow_sudo=null, id=null, level=null, stack_id=null):: {
      user_arn: user_arn,
      [if allow_ssh != null then allow_ssh]: allow_ssh,
      [if allow_sudo != null then allow_sudo]: allow_sudo,
      [if id != null then id]: id,
      [if level != null then level]: level,
      [if stack_id != null then stack_id]: stack_id,
      rname:: rname,
    },
    // aws_ssm_patch_group - https://www.terraform.io/docs/providers/aws/r/ssm_patch_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param patch_group (required) https://www.terraform.io/docs/providers/aws/r/ssm_patch_group.html#patch_group.
    // @param baseline_id (required) https://www.terraform.io/docs/providers/aws/r/ssm_patch_group.html#baseline_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_group.html#id.
    aws_ssm_patch_group(rname, patch_group, baseline_id, id=null):: {
      patch_group: patch_group,
      baseline_id: baseline_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_api_gateway_account - https://www.terraform.io/docs/providers/aws/r/api_gateway_account.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cloudwatch_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_account.html#cloudwatch_role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_account.html#id.
    aws_api_gateway_account(rname, cloudwatch_role_arn=null, id=null):: {
      [if cloudwatch_role_arn != null then cloudwatch_role_arn]: cloudwatch_role_arn,
      [if id != null then id]: id,
      rname:: rname,
      throttle_settings:: '${aws_api_gateway_account.%s.throttle_settings}' % rname,
    },
    // aws_dx_gateway_association_proposal - https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param dx_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html#dx_gateway_id.
    // @param dx_gateway_owner_account_id (required) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html#dx_gateway_owner_account_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html#id.
    // @param vpn_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html#vpn_gateway_id.
    // @param allowed_prefixes (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html#allowed_prefixes.
    // @param associated_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html#associated_gateway_id.
    aws_dx_gateway_association_proposal(rname, dx_gateway_id, dx_gateway_owner_account_id, id=null, vpn_gateway_id=null, allowed_prefixes=null, associated_gateway_id=null):: {
      dx_gateway_id: dx_gateway_id,
      dx_gateway_owner_account_id: dx_gateway_owner_account_id,
      [if id != null then id]: id,
      [if vpn_gateway_id != null then vpn_gateway_id]: vpn_gateway_id,
      [if allowed_prefixes != null then allowed_prefixes]: allowed_prefixes,
      [if associated_gateway_id != null then associated_gateway_id]: associated_gateway_id,
      rname:: rname,
      associated_gateway_owner_account_id:: '${aws_dx_gateway_association_proposal.%s.associated_gateway_owner_account_id}' % rname,
      associated_gateway_type:: '${aws_dx_gateway_association_proposal.%s.associated_gateway_type}' % rname,
    },
    // aws_elastic_beanstalk_configuration_template - https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html#application.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html#description.
    // @param environment_id (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html#environment_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html#id.
    // @param solution_stack_name (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html#solution_stack_name.
    aws_elastic_beanstalk_configuration_template(rname, application, name, description=null, environment_id=null, id=null, solution_stack_name=null):: {
      application: application,
      name: name,
      [if description != null then description]: description,
      [if environment_id != null then environment_id]: environment_id,
      [if id != null then id]: id,
      [if solution_stack_name != null then solution_stack_name]: solution_stack_name,
      rname:: rname,
    },
    // aws_s3_bucket_policy - https://www.terraform.io/docs/providers/aws/r/s3_bucket_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_policy.html#policy.
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_policy.html#bucket.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_policy.html#id.
    aws_s3_bucket_policy(rname, policy, bucket, id=null):: {
      policy: policy,
      bucket: bucket,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_ses_email_identity - https://www.terraform.io/docs/providers/aws/r/ses_email_identity.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param email (required) https://www.terraform.io/docs/providers/aws/r/ses_email_identity.html#email.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_email_identity.html#id.
    aws_ses_email_identity(rname, email, id=null):: {
      email: email,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_ses_email_identity.%s.arn}' % rname,
    },
    // aws_storagegateway_smb_file_share - https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param location_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#location_arn.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#role_arn.
    // @param gateway_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#gateway_arn.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#kms_key_arn.
    // @param object_acl (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#object_acl.
    // @param requester_pays (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#requester_pays.
    // @param guess_mime_type_enabled (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#guess_mime_type_enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#id.
    // @param invalid_user_list (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#invalid_user_list.
    // @param read_only (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#read_only.
    // @param valid_user_list (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#valid_user_list.
    // @param authentication (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#authentication.
    // @param default_storage_class (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#default_storage_class.
    // @param kms_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#kms_encrypted.
    aws_storagegateway_smb_file_share(rname, location_arn, role_arn, gateway_arn, kms_key_arn=null, object_acl=null, requester_pays=null, guess_mime_type_enabled=null, id=null, invalid_user_list=null, read_only=null, valid_user_list=null, authentication=null, default_storage_class=null, kms_encrypted=null):: {
      location_arn: location_arn,
      role_arn: role_arn,
      gateway_arn: gateway_arn,
      [if kms_key_arn != null then kms_key_arn]: kms_key_arn,
      [if object_acl != null then object_acl]: object_acl,
      [if requester_pays != null then requester_pays]: requester_pays,
      [if guess_mime_type_enabled != null then guess_mime_type_enabled]: guess_mime_type_enabled,
      [if id != null then id]: id,
      [if invalid_user_list != null then invalid_user_list]: invalid_user_list,
      [if read_only != null then read_only]: read_only,
      [if valid_user_list != null then valid_user_list]: valid_user_list,
      [if authentication != null then authentication]: authentication,
      [if default_storage_class != null then default_storage_class]: default_storage_class,
      [if kms_encrypted != null then kms_encrypted]: kms_encrypted,
      rname:: rname,
      arn:: '${aws_storagegateway_smb_file_share.%s.arn}' % rname,
      fileshare_id:: '${aws_storagegateway_smb_file_share.%s.fileshare_id}' % rname,
    },
    // aws_vpc_endpoint - https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param service_name (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#service_name.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#vpc_id.
    // @param subnet_ids (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#subnet_ids.
    // @param route_table_ids (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#route_table_ids.
    // @param auto_accept (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#auto_accept.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#policy.
    // @param vpc_endpoint_type (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#vpc_endpoint_type.
    // @param private_dns_enabled (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#private_dns_enabled.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#security_group_ids.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#tags.
    aws_vpc_endpoint(rname, service_name, vpc_id, subnet_ids=null, route_table_ids=null, auto_accept=null, policy=null, vpc_endpoint_type=null, private_dns_enabled=null, security_group_ids=null, id=null, tags=null):: {
      service_name: service_name,
      vpc_id: vpc_id,
      [if subnet_ids != null then subnet_ids]: subnet_ids,
      [if route_table_ids != null then route_table_ids]: route_table_ids,
      [if auto_accept != null then auto_accept]: auto_accept,
      [if policy != null then policy]: policy,
      [if vpc_endpoint_type != null then vpc_endpoint_type]: vpc_endpoint_type,
      [if private_dns_enabled != null then private_dns_enabled]: private_dns_enabled,
      [if security_group_ids != null then security_group_ids]: security_group_ids,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      cidr_blocks:: '${aws_vpc_endpoint.%s.cidr_blocks}' % rname,
      dns_entry:: '${aws_vpc_endpoint.%s.dns_entry}' % rname,
      prefix_list_id:: '${aws_vpc_endpoint.%s.prefix_list_id}' % rname,
      state:: '${aws_vpc_endpoint.%s.state}' % rname,
      network_interface_ids:: '${aws_vpc_endpoint.%s.network_interface_ids}' % rname,
      requester_managed:: '${aws_vpc_endpoint.%s.requester_managed}' % rname,
      owner_id:: '${aws_vpc_endpoint.%s.owner_id}' % rname,
    },
    // aws_dax_cluster - https://www.terraform.io/docs/providers/aws/r/dax_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_name (required) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#cluster_name.
    // @param node_type (required) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#node_type.
    // @param iam_role_arn (required) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#iam_role_arn.
    // @param replication_factor (required) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#replication_factor.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#description.
    // @param parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#parameter_group_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#id.
    // @param notification_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#notification_topic_arn.
    // @param subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#subnet_group_name.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#availability_zones.
    // @param maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#maintenance_window.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#security_group_ids.
    aws_dax_cluster(rname, cluster_name, node_type, iam_role_arn, replication_factor, description=null, parameter_group_name=null, tags=null, id=null, notification_topic_arn=null, subnet_group_name=null, availability_zones=null, maintenance_window=null, security_group_ids=null):: {
      cluster_name: cluster_name,
      node_type: node_type,
      iam_role_arn: iam_role_arn,
      replication_factor: replication_factor,
      [if description != null then description]: description,
      [if parameter_group_name != null then parameter_group_name]: parameter_group_name,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      [if notification_topic_arn != null then notification_topic_arn]: notification_topic_arn,
      [if subnet_group_name != null then subnet_group_name]: subnet_group_name,
      [if availability_zones != null then availability_zones]: availability_zones,
      [if maintenance_window != null then maintenance_window]: maintenance_window,
      [if security_group_ids != null then security_group_ids]: security_group_ids,
      rname:: rname,
      nodes:: '${aws_dax_cluster.%s.nodes}' % rname,
      arn:: '${aws_dax_cluster.%s.arn}' % rname,
      cluster_address:: '${aws_dax_cluster.%s.cluster_address}' % rname,
      port:: '${aws_dax_cluster.%s.port}' % rname,
      configuration_endpoint:: '${aws_dax_cluster.%s.configuration_endpoint}' % rname,
    },
    // aws_network_acl - https://www.terraform.io/docs/providers/aws/r/network_acl.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/network_acl.html#vpc_id.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/network_acl.html#subnet_id.
    // @param subnet_ids (optional) https://www.terraform.io/docs/providers/aws/r/network_acl.html#subnet_ids.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/network_acl.html#tags.
    // @param egress (optional) https://www.terraform.io/docs/providers/aws/r/network_acl.html#egress.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/network_acl.html#id.
    // @param ingress (optional) https://www.terraform.io/docs/providers/aws/r/network_acl.html#ingress.
    aws_network_acl(rname, vpc_id, subnet_id=null, subnet_ids=null, tags=null, egress=null, id=null, ingress=null):: {
      vpc_id: vpc_id,
      [if subnet_id != null then subnet_id]: subnet_id,
      [if subnet_ids != null then subnet_ids]: subnet_ids,
      [if tags != null then tags]: tags,
      [if egress != null then egress]: egress,
      [if id != null then id]: id,
      [if ingress != null then ingress]: ingress,
      rname:: rname,
      owner_id:: '${aws_network_acl.%s.owner_id}' % rname,
    },
    // aws_opsworks_static_web_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#stack_id.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_undeploy_recipes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#name.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#use_ebs_optimized_instances.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#auto_assign_elastic_ips.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_security_group_ids.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_setup_recipes.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#install_updates_on_boot.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#instance_shutdown_timeout.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#auto_healing.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_instance_profile_arn.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_shutdown_recipes.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#drain_elb_on_shutdown.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#system_packages.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#auto_assign_public_ips.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_configure_recipes.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#elastic_load_balancer.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_deploy_recipes.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_json.
    aws_opsworks_static_web_layer(rname, stack_id, custom_undeploy_recipes=null, id=null, name=null, use_ebs_optimized_instances=null, auto_assign_elastic_ips=null, custom_security_group_ids=null, custom_setup_recipes=null, install_updates_on_boot=null, instance_shutdown_timeout=null, auto_healing=null, custom_instance_profile_arn=null, custom_shutdown_recipes=null, drain_elb_on_shutdown=null, system_packages=null, auto_assign_public_ips=null, custom_configure_recipes=null, elastic_load_balancer=null, custom_deploy_recipes=null, custom_json=null):: {
      stack_id: stack_id,
      [if custom_undeploy_recipes != null then custom_undeploy_recipes]: custom_undeploy_recipes,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if use_ebs_optimized_instances != null then use_ebs_optimized_instances]: use_ebs_optimized_instances,
      [if auto_assign_elastic_ips != null then auto_assign_elastic_ips]: auto_assign_elastic_ips,
      [if custom_security_group_ids != null then custom_security_group_ids]: custom_security_group_ids,
      [if custom_setup_recipes != null then custom_setup_recipes]: custom_setup_recipes,
      [if install_updates_on_boot != null then install_updates_on_boot]: install_updates_on_boot,
      [if instance_shutdown_timeout != null then instance_shutdown_timeout]: instance_shutdown_timeout,
      [if auto_healing != null then auto_healing]: auto_healing,
      [if custom_instance_profile_arn != null then custom_instance_profile_arn]: custom_instance_profile_arn,
      [if custom_shutdown_recipes != null then custom_shutdown_recipes]: custom_shutdown_recipes,
      [if drain_elb_on_shutdown != null then drain_elb_on_shutdown]: drain_elb_on_shutdown,
      [if system_packages != null then system_packages]: system_packages,
      [if auto_assign_public_ips != null then auto_assign_public_ips]: auto_assign_public_ips,
      [if custom_configure_recipes != null then custom_configure_recipes]: custom_configure_recipes,
      [if elastic_load_balancer != null then elastic_load_balancer]: elastic_load_balancer,
      [if custom_deploy_recipes != null then custom_deploy_recipes]: custom_deploy_recipes,
      [if custom_json != null then custom_json]: custom_json,
      rname:: rname,
    },
    // aws_ram_resource_share - https://www.terraform.io/docs/providers/aws/r/ram_resource_share.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ram_resource_share.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ram_resource_share.html#tags.
    // @param allow_external_principals (optional) https://www.terraform.io/docs/providers/aws/r/ram_resource_share.html#allow_external_principals.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ram_resource_share.html#id.
    aws_ram_resource_share(rname, name, tags=null, allow_external_principals=null, id=null):: {
      name: name,
      [if tags != null then tags]: tags,
      [if allow_external_principals != null then allow_external_principals]: allow_external_principals,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_ram_resource_share.%s.arn}' % rname,
    },
    // aws_ssm_maintenance_window_task - https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param max_concurrency (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#max_concurrency.
    // @param service_role_arn (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#service_role_arn.
    // @param task_arn (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#task_arn.
    // @param window_id (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#window_id.
    // @param max_errors (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#max_errors.
    // @param task_type (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#task_type.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#id.
    // @param priority (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#priority.
    aws_ssm_maintenance_window_task(rname, max_concurrency, service_role_arn, task_arn, window_id, max_errors, task_type, name=null, description=null, id=null, priority=null):: {
      max_concurrency: max_concurrency,
      service_role_arn: service_role_arn,
      task_arn: task_arn,
      window_id: window_id,
      max_errors: max_errors,
      task_type: task_type,
      [if name != null then name]: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if priority != null then priority]: priority,
      rname:: rname,
    },
    // aws_ecs_service - https://www.terraform.io/docs/providers/aws/r/ecs_service.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param task_definition (required) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#task_definition.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#name.
    // @param deployment_minimum_healthy_percent (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#deployment_minimum_healthy_percent.
    // @param enable_ecs_managed_tags (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#enable_ecs_managed_tags.
    // @param launch_type (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#launch_type.
    // @param deployment_maximum_percent (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#deployment_maximum_percent.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#id.
    // @param desired_count (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#desired_count.
    // @param health_check_grace_period_seconds (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#health_check_grace_period_seconds.
    // @param iam_role (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#iam_role.
    // @param platform_version (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#platform_version.
    // @param propagate_tags (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#propagate_tags.
    // @param scheduling_strategy (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#scheduling_strategy.
    // @param cluster (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#cluster.
    aws_ecs_service(rname, task_definition, name, deployment_minimum_healthy_percent=null, enable_ecs_managed_tags=null, launch_type=null, deployment_maximum_percent=null, tags=null, id=null, desired_count=null, health_check_grace_period_seconds=null, iam_role=null, platform_version=null, propagate_tags=null, scheduling_strategy=null, cluster=null):: {
      task_definition: task_definition,
      name: name,
      [if deployment_minimum_healthy_percent != null then deployment_minimum_healthy_percent]: deployment_minimum_healthy_percent,
      [if enable_ecs_managed_tags != null then enable_ecs_managed_tags]: enable_ecs_managed_tags,
      [if launch_type != null then launch_type]: launch_type,
      [if deployment_maximum_percent != null then deployment_maximum_percent]: deployment_maximum_percent,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      [if desired_count != null then desired_count]: desired_count,
      [if health_check_grace_period_seconds != null then health_check_grace_period_seconds]: health_check_grace_period_seconds,
      [if iam_role != null then iam_role]: iam_role,
      [if platform_version != null then platform_version]: platform_version,
      [if propagate_tags != null then propagate_tags]: propagate_tags,
      [if scheduling_strategy != null then scheduling_strategy]: scheduling_strategy,
      [if cluster != null then cluster]: cluster,
      rname:: rname,
    },
    // aws_dms_endpoint - https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param endpoint_type (required) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#endpoint_type.
    // @param engine_name (required) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#engine_name.
    // @param endpoint_id (required) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#endpoint_id.
    // @param database_name (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#database_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#id.
    // @param password (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#password.
    // @param ssl_mode (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#ssl_mode.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#kms_key_arn.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#tags.
    // @param certificate_arn (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#certificate_arn.
    // @param extra_connection_attributes (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#extra_connection_attributes.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#port.
    // @param server_name (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#server_name.
    // @param service_access_role (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#service_access_role.
    // @param username (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#username.
    aws_dms_endpoint(rname, endpoint_type, engine_name, endpoint_id, database_name=null, id=null, password=null, ssl_mode=null, kms_key_arn=null, tags=null, certificate_arn=null, extra_connection_attributes=null, port=null, server_name=null, service_access_role=null, username=null):: {
      endpoint_type: endpoint_type,
      engine_name: engine_name,
      endpoint_id: endpoint_id,
      [if database_name != null then database_name]: database_name,
      [if id != null then id]: id,
      [if password != null then password]: password,
      [if ssl_mode != null then ssl_mode]: ssl_mode,
      [if kms_key_arn != null then kms_key_arn]: kms_key_arn,
      [if tags != null then tags]: tags,
      [if certificate_arn != null then certificate_arn]: certificate_arn,
      [if extra_connection_attributes != null then extra_connection_attributes]: extra_connection_attributes,
      [if port != null then port]: port,
      [if server_name != null then server_name]: server_name,
      [if service_access_role != null then service_access_role]: service_access_role,
      [if username != null then username]: username,
      rname:: rname,
      endpoint_arn:: '${aws_dms_endpoint.%s.endpoint_arn}' % rname,
    },
    // aws_dms_replication_subnet_group - https://www.terraform.io/docs/providers/aws/r/dms_replication_subnet_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param replication_subnet_group_description (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_subnet_group.html#replication_subnet_group_description.
    // @param replication_subnet_group_id (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_subnet_group.html#replication_subnet_group_id.
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_subnet_group.html#subnet_ids.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_subnet_group.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_subnet_group.html#tags.
    aws_dms_replication_subnet_group(rname, replication_subnet_group_description, replication_subnet_group_id, subnet_ids, id=null, tags=null):: {
      replication_subnet_group_description: replication_subnet_group_description,
      replication_subnet_group_id: replication_subnet_group_id,
      subnet_ids: subnet_ids,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      replication_subnet_group_arn:: '${aws_dms_replication_subnet_group.%s.replication_subnet_group_arn}' % rname,
      vpc_id:: '${aws_dms_replication_subnet_group.%s.vpc_id}' % rname,
    },
    // aws_quicksight_group - https://www.terraform.io/docs/providers/aws/r/quicksight_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param group_name (required) https://www.terraform.io/docs/providers/aws/r/quicksight_group.html#group_name.
    // @param aws_account_id (optional) https://www.terraform.io/docs/providers/aws/r/quicksight_group.html#aws_account_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/quicksight_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/quicksight_group.html#id.
    // @param namespace (optional) https://www.terraform.io/docs/providers/aws/r/quicksight_group.html#namespace.
    aws_quicksight_group(rname, group_name, aws_account_id=null, description=null, id=null, namespace=null):: {
      group_name: group_name,
      [if aws_account_id != null then aws_account_id]: aws_account_id,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if namespace != null then namespace]: namespace,
      rname:: rname,
      arn:: '${aws_quicksight_group.%s.arn}' % rname,
    },
    // aws_cloudformation_stack_set_instance - https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_set_name (required) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html#stack_set_name.
    // @param account_id (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html#account_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html#id.
    // @param parameter_overrides (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html#parameter_overrides.
    // @param region (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html#region.
    // @param retain_stack (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html#retain_stack.
    aws_cloudformation_stack_set_instance(rname, stack_set_name, account_id=null, id=null, parameter_overrides=null, region=null, retain_stack=null):: {
      stack_set_name: stack_set_name,
      [if account_id != null then account_id]: account_id,
      [if id != null then id]: id,
      [if parameter_overrides != null then parameter_overrides]: parameter_overrides,
      [if region != null then region]: region,
      [if retain_stack != null then retain_stack]: retain_stack,
      rname:: rname,
      stack_id:: '${aws_cloudformation_stack_set_instance.%s.stack_id}' % rname,
    },
    // aws_flow_log - https://www.terraform.io/docs/providers/aws/r/flow_log.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param traffic_type (required) https://www.terraform.io/docs/providers/aws/r/flow_log.html#traffic_type.
    // @param iam_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#iam_role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#id.
    // @param log_group_name (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#log_group_name.
    // @param eni_id (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#eni_id.
    // @param log_destination_type (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#log_destination_type.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#subnet_id.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#vpc_id.
    // @param log_destination (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#log_destination.
    aws_flow_log(rname, traffic_type, iam_role_arn=null, id=null, log_group_name=null, eni_id=null, log_destination_type=null, subnet_id=null, vpc_id=null, log_destination=null):: {
      traffic_type: traffic_type,
      [if iam_role_arn != null then iam_role_arn]: iam_role_arn,
      [if id != null then id]: id,
      [if log_group_name != null then log_group_name]: log_group_name,
      [if eni_id != null then eni_id]: eni_id,
      [if log_destination_type != null then log_destination_type]: log_destination_type,
      [if subnet_id != null then subnet_id]: subnet_id,
      [if vpc_id != null then vpc_id]: vpc_id,
      [if log_destination != null then log_destination]: log_destination,
      rname:: rname,
    },
    // aws_inspector_assessment_target - https://www.terraform.io/docs/providers/aws/r/inspector_assessment_target.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/inspector_assessment_target.html#name.
    // @param resource_group_arn (optional) https://www.terraform.io/docs/providers/aws/r/inspector_assessment_target.html#resource_group_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/inspector_assessment_target.html#id.
    aws_inspector_assessment_target(rname, name, resource_group_arn=null, id=null):: {
      name: name,
      [if resource_group_arn != null then resource_group_arn]: resource_group_arn,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_inspector_assessment_target.%s.arn}' % rname,
    },
    // aws_opsworks_instance - https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param layer_ids (required) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#layer_ids.
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#stack_id.
    // @param delete_eip (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#delete_eip.
    // @param os (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#os.
    // @param public_dns (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#public_dns.
    // @param ssh_host_dsa_key_fingerprint (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#ssh_host_dsa_key_fingerprint.
    // @param reported_os_name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#reported_os_name.
    // @param ami_id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#ami_id.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#availability_zone.
    // @param created_at (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#created_at.
    // @param instance_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#instance_type.
    // @param last_service_error_id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#last_service_error_id.
    // @param reported_os_family (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#reported_os_family.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#install_updates_on_boot.
    // @param ssh_key_name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#ssh_key_name.
    // @param virtualization_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#virtualization_type.
    // @param status (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#status.
    // @param auto_scaling_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#auto_scaling_type.
    // @param hostname (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#hostname.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#id.
    // @param infrastructure_class (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#infrastructure_class.
    // @param instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#instance_profile_arn.
    // @param registered_by (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#registered_by.
    // @param ssh_host_rsa_key_fingerprint (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#ssh_host_rsa_key_fingerprint.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#subnet_id.
    // @param elastic_ip (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#elastic_ip.
    // @param public_ip (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#public_ip.
    // @param reported_agent_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#reported_agent_version.
    // @param root_device_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#root_device_type.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#security_group_ids.
    // @param state (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#state.
    // @param agent_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#agent_version.
    // @param tenancy (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#tenancy.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#ebs_optimized.
    // @param private_dns (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#private_dns.
    // @param reported_os_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#reported_os_version.
    // @param architecture (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#architecture.
    // @param delete_ebs (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#delete_ebs.
    // @param ecs_cluster_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#ecs_cluster_arn.
    // @param platform (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#platform.
    // @param private_ip (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#private_ip.
    // @param root_device_volume_id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#root_device_volume_id.
    aws_opsworks_instance(rname, layer_ids, stack_id, delete_eip=null, os=null, public_dns=null, ssh_host_dsa_key_fingerprint=null, reported_os_name=null, ami_id=null, availability_zone=null, created_at=null, instance_type=null, last_service_error_id=null, reported_os_family=null, install_updates_on_boot=null, ssh_key_name=null, virtualization_type=null, status=null, auto_scaling_type=null, hostname=null, id=null, infrastructure_class=null, instance_profile_arn=null, registered_by=null, ssh_host_rsa_key_fingerprint=null, subnet_id=null, elastic_ip=null, public_ip=null, reported_agent_version=null, root_device_type=null, security_group_ids=null, state=null, agent_version=null, tenancy=null, ebs_optimized=null, private_dns=null, reported_os_version=null, architecture=null, delete_ebs=null, ecs_cluster_arn=null, platform=null, private_ip=null, root_device_volume_id=null):: {
      layer_ids: layer_ids,
      stack_id: stack_id,
      [if delete_eip != null then delete_eip]: delete_eip,
      [if os != null then os]: os,
      [if public_dns != null then public_dns]: public_dns,
      [if ssh_host_dsa_key_fingerprint != null then ssh_host_dsa_key_fingerprint]: ssh_host_dsa_key_fingerprint,
      [if reported_os_name != null then reported_os_name]: reported_os_name,
      [if ami_id != null then ami_id]: ami_id,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if created_at != null then created_at]: created_at,
      [if instance_type != null then instance_type]: instance_type,
      [if last_service_error_id != null then last_service_error_id]: last_service_error_id,
      [if reported_os_family != null then reported_os_family]: reported_os_family,
      [if install_updates_on_boot != null then install_updates_on_boot]: install_updates_on_boot,
      [if ssh_key_name != null then ssh_key_name]: ssh_key_name,
      [if virtualization_type != null then virtualization_type]: virtualization_type,
      [if status != null then status]: status,
      [if auto_scaling_type != null then auto_scaling_type]: auto_scaling_type,
      [if hostname != null then hostname]: hostname,
      [if id != null then id]: id,
      [if infrastructure_class != null then infrastructure_class]: infrastructure_class,
      [if instance_profile_arn != null then instance_profile_arn]: instance_profile_arn,
      [if registered_by != null then registered_by]: registered_by,
      [if ssh_host_rsa_key_fingerprint != null then ssh_host_rsa_key_fingerprint]: ssh_host_rsa_key_fingerprint,
      [if subnet_id != null then subnet_id]: subnet_id,
      [if elastic_ip != null then elastic_ip]: elastic_ip,
      [if public_ip != null then public_ip]: public_ip,
      [if reported_agent_version != null then reported_agent_version]: reported_agent_version,
      [if root_device_type != null then root_device_type]: root_device_type,
      [if security_group_ids != null then security_group_ids]: security_group_ids,
      [if state != null then state]: state,
      [if agent_version != null then agent_version]: agent_version,
      [if tenancy != null then tenancy]: tenancy,
      [if ebs_optimized != null then ebs_optimized]: ebs_optimized,
      [if private_dns != null then private_dns]: private_dns,
      [if reported_os_version != null then reported_os_version]: reported_os_version,
      [if architecture != null then architecture]: architecture,
      [if delete_ebs != null then delete_ebs]: delete_ebs,
      [if ecs_cluster_arn != null then ecs_cluster_arn]: ecs_cluster_arn,
      [if platform != null then platform]: platform,
      [if private_ip != null then private_ip]: private_ip,
      [if root_device_volume_id != null then root_device_volume_id]: root_device_volume_id,
      rname:: rname,
      ec2_instance_id:: '${aws_opsworks_instance.%s.ec2_instance_id}' % rname,
    },
    // aws_ram_resource_share_accepter - https://www.terraform.io/docs/providers/aws/r/ram_resource_share_accepter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param share_arn (required) https://www.terraform.io/docs/providers/aws/r/ram_resource_share_accepter.html#share_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ram_resource_share_accepter.html#id.
    aws_ram_resource_share_accepter(rname, share_arn, id=null):: {
      share_arn: share_arn,
      [if id != null then id]: id,
      rname:: rname,
      invitation_arn:: '${aws_ram_resource_share_accepter.%s.invitation_arn}' % rname,
      receiver_account_id:: '${aws_ram_resource_share_accepter.%s.receiver_account_id}' % rname,
      share_name:: '${aws_ram_resource_share_accepter.%s.share_name}' % rname,
      sender_account_id:: '${aws_ram_resource_share_accepter.%s.sender_account_id}' % rname,
      share_id:: '${aws_ram_resource_share_accepter.%s.share_id}' % rname,
      status:: '${aws_ram_resource_share_accepter.%s.status}' % rname,
      resources:: '${aws_ram_resource_share_accepter.%s.resources}' % rname,
    },
    // aws_security_group_rule - https://www.terraform.io/docs/providers/aws/r/security_group_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param security_group_id (required) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#security_group_id.
    // @param to_port (required) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#to_port.
    // @param protocol (required) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#protocol.
    // @param cidr_blocks (optional) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#cidr_blocks.
    // @param prefix_list_ids (optional) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#prefix_list_ids.
    aws_security_group_rule(rname, security_group_id, to_port, protocol, cidr_blocks=null, prefix_list_ids=null):: {
      security_group_id: security_group_id,
      to_port: to_port,
      protocol: protocol,
      [if cidr_blocks != null then cidr_blocks]: cidr_blocks,
      [if prefix_list_ids != null then prefix_list_ids]: prefix_list_ids,
      rname:: rname,
    },
    // aws_ses_receipt_rule_set - https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rule_set_name (required) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule_set.html#rule_set_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule_set.html#id.
    aws_ses_receipt_rule_set(rname, rule_set_name, id=null):: {
      rule_set_name: rule_set_name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_batch_job_queue - https://www.terraform.io/docs/providers/aws/r/batch_job_queue.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param priority (required) https://www.terraform.io/docs/providers/aws/r/batch_job_queue.html#priority.
    // @param state (required) https://www.terraform.io/docs/providers/aws/r/batch_job_queue.html#state.
    // @param compute_environments (required) https://www.terraform.io/docs/providers/aws/r/batch_job_queue.html#compute_environments.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/batch_job_queue.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/batch_job_queue.html#id.
    aws_batch_job_queue(rname, priority, state, compute_environments, name, id=null):: {
      priority: priority,
      state: state,
      compute_environments: compute_environments,
      name: name,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_batch_job_queue.%s.arn}' % rname,
    },
    // aws_codebuild_project - https://www.terraform.io/docs/providers/aws/r/codebuild_project.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#name.
    // @param service_role (required) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#service_role.
    // @param encryption_key (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#encryption_key.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#id.
    // @param badge_enabled (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#badge_enabled.
    // @param build_timeout (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#build_timeout.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#description.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#tags.
    aws_codebuild_project(rname, name, service_role, encryption_key=null, id=null, badge_enabled=null, build_timeout=null, description=null, tags=null):: {
      name: name,
      service_role: service_role,
      [if encryption_key != null then encryption_key]: encryption_key,
      [if id != null then id]: id,
      [if badge_enabled != null then badge_enabled]: badge_enabled,
      [if build_timeout != null then build_timeout]: build_timeout,
      [if description != null then description]: description,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_codebuild_project.%s.arn}' % rname,
      badge_url:: '${aws_codebuild_project.%s.badge_url}' % rname,
    },
    // aws_fsx_lustre_file_system - https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param storage_capacity (required) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#storage_capacity.
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#subnet_ids.
    // @param weekly_maintenance_start_time (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#weekly_maintenance_start_time.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#security_group_ids.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#id.
    // @param imported_file_chunk_size (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#imported_file_chunk_size.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#tags.
    // @param export_path (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#export_path.
    // @param import_path (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#import_path.
    aws_fsx_lustre_file_system(rname, storage_capacity, subnet_ids, weekly_maintenance_start_time=null, security_group_ids=null, id=null, imported_file_chunk_size=null, tags=null, export_path=null, import_path=null):: {
      storage_capacity: storage_capacity,
      subnet_ids: subnet_ids,
      [if weekly_maintenance_start_time != null then weekly_maintenance_start_time]: weekly_maintenance_start_time,
      [if security_group_ids != null then security_group_ids]: security_group_ids,
      [if id != null then id]: id,
      [if imported_file_chunk_size != null then imported_file_chunk_size]: imported_file_chunk_size,
      [if tags != null then tags]: tags,
      [if export_path != null then export_path]: export_path,
      [if import_path != null then import_path]: import_path,
      rname:: rname,
      owner_id:: '${aws_fsx_lustre_file_system.%s.owner_id}' % rname,
      arn:: '${aws_fsx_lustre_file_system.%s.arn}' % rname,
      dns_name:: '${aws_fsx_lustre_file_system.%s.dns_name}' % rname,
      vpc_id:: '${aws_fsx_lustre_file_system.%s.vpc_id}' % rname,
      network_interface_ids:: '${aws_fsx_lustre_file_system.%s.network_interface_ids}' % rname,
    },
    // aws_lambda_function - https://www.terraform.io/docs/providers/aws/r/lambda_function.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param function_name (required) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#function_name.
    // @param role (required) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#role.
    // @param runtime (required) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#runtime.
    // @param handler (required) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#handler.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#id.
    // @param memory_size (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#memory_size.
    // @param s3_bucket (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#s3_bucket.
    // @param s3_key (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#s3_key.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#tags.
    // @param timeout (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#timeout.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#kms_key_arn.
    // @param publish (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#publish.
    // @param source_code_hash (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#source_code_hash.
    // @param filename (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#filename.
    // @param layers (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#layers.
    // @param reserved_concurrent_executions (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#reserved_concurrent_executions.
    // @param s3_object_version (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#s3_object_version.
    aws_lambda_function(rname, function_name, role, runtime, handler, description=null, id=null, memory_size=null, s3_bucket=null, s3_key=null, tags=null, timeout=null, kms_key_arn=null, publish=null, source_code_hash=null, filename=null, layers=null, reserved_concurrent_executions=null, s3_object_version=null):: {
      function_name: function_name,
      role: role,
      runtime: runtime,
      handler: handler,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if memory_size != null then memory_size]: memory_size,
      [if s3_bucket != null then s3_bucket]: s3_bucket,
      [if s3_key != null then s3_key]: s3_key,
      [if tags != null then tags]: tags,
      [if timeout != null then timeout]: timeout,
      [if kms_key_arn != null then kms_key_arn]: kms_key_arn,
      [if publish != null then publish]: publish,
      [if source_code_hash != null then source_code_hash]: source_code_hash,
      [if filename != null then filename]: filename,
      [if layers != null then layers]: layers,
      [if reserved_concurrent_executions != null then reserved_concurrent_executions]: reserved_concurrent_executions,
      [if s3_object_version != null then s3_object_version]: s3_object_version,
      rname:: rname,
      version:: '${aws_lambda_function.%s.version}' % rname,
      arn:: '${aws_lambda_function.%s.arn}' % rname,
      source_code_size:: '${aws_lambda_function.%s.source_code_size}' % rname,
      invoke_arn:: '${aws_lambda_function.%s.invoke_arn}' % rname,
      last_modified:: '${aws_lambda_function.%s.last_modified}' % rname,
      qualified_arn:: '${aws_lambda_function.%s.qualified_arn}' % rname,
    },
    // aws_appmesh_virtual_service - https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_service.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param mesh_name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_service.html#mesh_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_service.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_service.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_service.html#tags.
    aws_appmesh_virtual_service(rname, mesh_name, name, id=null, tags=null):: {
      mesh_name: mesh_name,
      name: name,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_appmesh_virtual_service.%s.arn}' % rname,
      created_date:: '${aws_appmesh_virtual_service.%s.created_date}' % rname,
      last_updated_date:: '${aws_appmesh_virtual_service.%s.last_updated_date}' % rname,
    },
    // aws_storagegateway_working_storage - https://www.terraform.io/docs/providers/aws/r/storagegateway_working_storage.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param disk_id (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_working_storage.html#disk_id.
    // @param gateway_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_working_storage.html#gateway_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_working_storage.html#id.
    aws_storagegateway_working_storage(rname, disk_id, gateway_arn, id=null):: {
      disk_id: disk_id,
      gateway_arn: gateway_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_ecr_lifecycle_policy - https://www.terraform.io/docs/providers/aws/r/ecr_lifecycle_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param repository (required) https://www.terraform.io/docs/providers/aws/r/ecr_lifecycle_policy.html#repository.
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/ecr_lifecycle_policy.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ecr_lifecycle_policy.html#id.
    aws_ecr_lifecycle_policy(rname, repository, policy, id=null):: {
      repository: repository,
      policy: policy,
      [if id != null then id]: id,
      rname:: rname,
      registry_id:: '${aws_ecr_lifecycle_policy.%s.registry_id}' % rname,
    },
    // aws_cloud9_environment_ec2 - https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#name.
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#instance_type.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#description.
    // @param owner_arn (optional) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#owner_arn.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#subnet_id.
    // @param automatic_stop_time_minutes (optional) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#automatic_stop_time_minutes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#id.
    aws_cloud9_environment_ec2(rname, name, instance_type, description=null, owner_arn=null, subnet_id=null, automatic_stop_time_minutes=null, id=null):: {
      name: name,
      instance_type: instance_type,
      [if description != null then description]: description,
      [if owner_arn != null then owner_arn]: owner_arn,
      [if subnet_id != null then subnet_id]: subnet_id,
      [if automatic_stop_time_minutes != null then automatic_stop_time_minutes]: automatic_stop_time_minutes,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_cloud9_environment_ec2.%s.arn}' % rname,
      type:: '${aws_cloud9_environment_ec2.%s.type}' % rname,
    },
    // aws_cloudwatch_event_permission - https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_permission.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param principal (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_permission.html#principal.
    // @param statement_id (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_permission.html#statement_id.
    // @param action (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_permission.html#action.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_permission.html#id.
    aws_cloudwatch_event_permission(rname, principal, statement_id, action=null, id=null):: {
      principal: principal,
      statement_id: statement_id,
      [if action != null then action]: action,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_db_security_group - https://www.terraform.io/docs/providers/aws/r/db_security_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/db_security_group.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_security_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/db_security_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_security_group.html#id.
    aws_db_security_group(rname, name, tags=null, description=null, id=null):: {
      name: name,
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_db_security_group.%s.arn}' % rname,
    },
    // aws_elasticsearch_domain_policy - https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param access_policies (required) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain_policy.html#access_policies.
    // @param domain_name (required) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain_policy.html#domain_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain_policy.html#id.
    aws_elasticsearch_domain_policy(rname, access_policies, domain_name, id=null):: {
      access_policies: access_policies,
      domain_name: domain_name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_glue_catalog_database - https://www.terraform.io/docs/providers/aws/r/glue_catalog_database.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_catalog_database.html#name.
    // @param catalog_id (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_database.html#catalog_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_database.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_database.html#id.
    // @param location_uri (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_database.html#location_uri.
    // @param parameters (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_database.html#parameters.
    aws_glue_catalog_database(rname, name, catalog_id=null, description=null, id=null, location_uri=null, parameters=null):: {
      name: name,
      [if catalog_id != null then catalog_id]: catalog_id,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if location_uri != null then location_uri]: location_uri,
      [if parameters != null then parameters]: parameters,
      rname:: rname,
    },
    // aws_service_discovery_service - https://www.terraform.io/docs/providers/aws/r/service_discovery_service.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/service_discovery_service.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_service.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_service.html#id.
    // @param namespace_id (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_service.html#namespace_id.
    aws_service_discovery_service(rname, name, description=null, id=null, namespace_id=null):: {
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if namespace_id != null then namespace_id]: namespace_id,
      rname:: rname,
      arn:: '${aws_service_discovery_service.%s.arn}' % rname,
    },
    // aws_ssm_parameter - https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#name.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#type.
    // @param value (required) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#value.
    // @param allowed_pattern (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#allowed_pattern.
    // @param arn (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#arn.
    // @param overwrite (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#overwrite.
    // @param tier (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#tier.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#id.
    // @param key_id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#key_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#tags.
    aws_ssm_parameter(rname, name, type, value, allowed_pattern=null, arn=null, overwrite=null, tier=null, description=null, id=null, key_id=null, tags=null):: {
      name: name,
      type: type,
      value: value,
      [if allowed_pattern != null then allowed_pattern]: allowed_pattern,
      [if arn != null then arn]: arn,
      [if overwrite != null then overwrite]: overwrite,
      [if tier != null then tier]: tier,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if key_id != null then key_id]: key_id,
      [if tags != null then tags]: tags,
      rname:: rname,
      version:: '${aws_ssm_parameter.%s.version}' % rname,
    },
    // aws_api_gateway_gateway_response - https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param response_type (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html#response_type.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html#rest_api_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html#id.
    // @param response_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html#response_parameters.
    // @param response_templates (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html#response_templates.
    // @param status_code (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html#status_code.
    aws_api_gateway_gateway_response(rname, response_type, rest_api_id, id=null, response_parameters=null, response_templates=null, status_code=null):: {
      response_type: response_type,
      rest_api_id: rest_api_id,
      [if id != null then id]: id,
      [if response_parameters != null then response_parameters]: response_parameters,
      [if response_templates != null then response_templates]: response_templates,
      [if status_code != null then status_code]: status_code,
      rname:: rname,
    },
    // aws_ses_domain_identity - https://www.terraform.io/docs/providers/aws/r/ses_domain_identity.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain (required) https://www.terraform.io/docs/providers/aws/r/ses_domain_identity.html#domain.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_domain_identity.html#id.
    aws_ses_domain_identity(rname, domain, id=null):: {
      domain: domain,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_ses_domain_identity.%s.arn}' % rname,
      verification_token:: '${aws_ses_domain_identity.%s.verification_token}' % rname,
    },
    // aws_wafregional_ipset - https://www.terraform.io/docs/providers/aws/r/wafregional_ipset.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_ipset.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_ipset.html#id.
    aws_wafregional_ipset(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_wafregional_ipset.%s.arn}' % rname,
    },
    // aws_route53_resolver_endpoint - https://www.terraform.io/docs/providers/aws/r/route53_resolver_endpoint.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param direction (required) https://www.terraform.io/docs/providers/aws/r/route53_resolver_endpoint.html#direction.
    // @param security_group_ids (required) https://www.terraform.io/docs/providers/aws/r/route53_resolver_endpoint.html#security_group_ids.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_endpoint.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_endpoint.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_endpoint.html#tags.
    aws_route53_resolver_endpoint(rname, direction, security_group_ids, id=null, name=null, tags=null):: {
      direction: direction,
      security_group_ids: security_group_ids,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if tags != null then tags]: tags,
      rname:: rname,
      host_vpc_id:: '${aws_route53_resolver_endpoint.%s.host_vpc_id}' % rname,
      arn:: '${aws_route53_resolver_endpoint.%s.arn}' % rname,
    },
    // aws_batch_job_definition - https://www.terraform.io/docs/providers/aws/r/batch_job_definition.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/batch_job_definition.html#name.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/batch_job_definition.html#type.
    // @param parameters (optional) https://www.terraform.io/docs/providers/aws/r/batch_job_definition.html#parameters.
    // @param container_properties (optional) https://www.terraform.io/docs/providers/aws/r/batch_job_definition.html#container_properties.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/batch_job_definition.html#id.
    aws_batch_job_definition(rname, name, type, parameters=null, container_properties=null, id=null):: {
      name: name,
      type: type,
      [if parameters != null then parameters]: parameters,
      [if container_properties != null then container_properties]: container_properties,
      [if id != null then id]: id,
      rname:: rname,
      revision:: '${aws_batch_job_definition.%s.revision}' % rname,
      arn:: '${aws_batch_job_definition.%s.arn}' % rname,
    },
    // aws_guardduty_ipset - https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param location (required) https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html#location.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html#name.
    // @param activate (required) https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html#activate.
    // @param detector_id (required) https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html#detector_id.
    // @param format (required) https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html#format.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html#id.
    aws_guardduty_ipset(rname, location, name, activate, detector_id, format, id=null):: {
      location: location,
      name: name,
      activate: activate,
      detector_id: detector_id,
      format: format,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_mq_configuration - https://www.terraform.io/docs/providers/aws/r/mq_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#name.
    // @param data (required) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#data.
    // @param engine_type (required) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#engine_type.
    // @param engine_version (required) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#engine_version.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#description.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#tags.
    aws_mq_configuration(rname, name, data, engine_type, engine_version, id=null, description=null, tags=null):: {
      name: name,
      data: data,
      engine_type: engine_type,
      engine_version: engine_version,
      [if id != null then id]: id,
      [if description != null then description]: description,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_mq_configuration.%s.arn}' % rname,
      latest_revision:: '${aws_mq_configuration.%s.latest_revision}' % rname,
    },
    // aws_msk_configuration - https://www.terraform.io/docs/providers/aws/r/msk_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/msk_configuration.html#name.
    // @param server_properties (required) https://www.terraform.io/docs/providers/aws/r/msk_configuration.html#server_properties.
    // @param kafka_versions (required) https://www.terraform.io/docs/providers/aws/r/msk_configuration.html#kafka_versions.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/msk_configuration.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/msk_configuration.html#id.
    aws_msk_configuration(rname, name, server_properties, kafka_versions, description=null, id=null):: {
      name: name,
      server_properties: server_properties,
      kafka_versions: kafka_versions,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_msk_configuration.%s.arn}' % rname,
      latest_revision:: '${aws_msk_configuration.%s.latest_revision}' % rname,
    },
    // aws_autoscaling_lifecycle_hook - https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param lifecycle_transition (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#lifecycle_transition.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#name.
    // @param autoscaling_group_name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#autoscaling_group_name.
    // @param notification_metadata (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#notification_metadata.
    // @param default_result (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#default_result.
    // @param heartbeat_timeout (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#heartbeat_timeout.
    // @param notification_target_arn (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#notification_target_arn.
    // @param role_arn (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#id.
    aws_autoscaling_lifecycle_hook(rname, lifecycle_transition, name, autoscaling_group_name, notification_metadata=null, default_result=null, heartbeat_timeout=null, notification_target_arn=null, role_arn=null, id=null):: {
      lifecycle_transition: lifecycle_transition,
      name: name,
      autoscaling_group_name: autoscaling_group_name,
      [if notification_metadata != null then notification_metadata]: notification_metadata,
      [if default_result != null then default_result]: default_result,
      [if heartbeat_timeout != null then heartbeat_timeout]: heartbeat_timeout,
      [if notification_target_arn != null then notification_target_arn]: notification_target_arn,
      [if role_arn != null then role_arn]: role_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_iam_user_policy - https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html#policy.
    // @param user (required) https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html#user.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_policy.html#name_prefix.
    aws_iam_user_policy(rname, policy, user, id=null, name=null, name_prefix=null):: {
      policy: policy,
      user: user,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      rname:: rname,
    },
    // aws_lambda_permission - https://www.terraform.io/docs/providers/aws/r/lambda_permission.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param principal (required) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#principal.
    // @param function_name (required) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#function_name.
    // @param action (required) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#action.
    // @param qualifier (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#qualifier.
    // @param source_arn (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#source_arn.
    // @param statement_id (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#statement_id.
    // @param statement_id_prefix (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#statement_id_prefix.
    // @param event_source_token (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#event_source_token.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#id.
    // @param source_account (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#source_account.
    aws_lambda_permission(rname, principal, function_name, action, qualifier=null, source_arn=null, statement_id=null, statement_id_prefix=null, event_source_token=null, id=null, source_account=null):: {
      principal: principal,
      function_name: function_name,
      action: action,
      [if qualifier != null then qualifier]: qualifier,
      [if source_arn != null then source_arn]: source_arn,
      [if statement_id != null then statement_id]: statement_id,
      [if statement_id_prefix != null then statement_id_prefix]: statement_id_prefix,
      [if event_source_token != null then event_source_token]: event_source_token,
      [if id != null then id]: id,
      [if source_account != null then source_account]: source_account,
      rname:: rname,
    },
    // aws_sns_platform_application - https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param platform (required) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#platform.
    // @param platform_credential (required) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#platform_credential.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#name.
    // @param event_endpoint_updated_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#event_endpoint_updated_topic_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#id.
    // @param platform_principal (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#platform_principal.
    // @param event_delivery_failure_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#event_delivery_failure_topic_arn.
    // @param event_endpoint_created_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#event_endpoint_created_topic_arn.
    // @param success_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#success_feedback_role_arn.
    // @param success_feedback_sample_rate (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#success_feedback_sample_rate.
    // @param event_endpoint_deleted_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#event_endpoint_deleted_topic_arn.
    // @param failure_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#failure_feedback_role_arn.
    aws_sns_platform_application(rname, platform, platform_credential, name, event_endpoint_updated_topic_arn=null, id=null, platform_principal=null, event_delivery_failure_topic_arn=null, event_endpoint_created_topic_arn=null, success_feedback_role_arn=null, success_feedback_sample_rate=null, event_endpoint_deleted_topic_arn=null, failure_feedback_role_arn=null):: {
      platform: platform,
      platform_credential: platform_credential,
      name: name,
      [if event_endpoint_updated_topic_arn != null then event_endpoint_updated_topic_arn]: event_endpoint_updated_topic_arn,
      [if id != null then id]: id,
      [if platform_principal != null then platform_principal]: platform_principal,
      [if event_delivery_failure_topic_arn != null then event_delivery_failure_topic_arn]: event_delivery_failure_topic_arn,
      [if event_endpoint_created_topic_arn != null then event_endpoint_created_topic_arn]: event_endpoint_created_topic_arn,
      [if success_feedback_role_arn != null then success_feedback_role_arn]: success_feedback_role_arn,
      [if success_feedback_sample_rate != null then success_feedback_sample_rate]: success_feedback_sample_rate,
      [if event_endpoint_deleted_topic_arn != null then event_endpoint_deleted_topic_arn]: event_endpoint_deleted_topic_arn,
      [if failure_feedback_role_arn != null then failure_feedback_role_arn]: failure_feedback_role_arn,
      rname:: rname,
      arn:: '${aws_sns_platform_application.%s.arn}' % rname,
    },
    // aws_config_configuration_recorder - https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder.html#role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder.html#name.
    aws_config_configuration_recorder(rname, role_arn, id=null, name=null):: {
      role_arn: role_arn,
      [if id != null then id]: id,
      [if name != null then name]: name,
      rname:: rname,
    },
    // aws_ecs_cluster - https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html#id.
    aws_ecs_cluster(rname, name, tags=null, id=null):: {
      name: name,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_ecs_cluster.%s.arn}' % rname,
    },
    // aws_elasticache_cluster - https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_id (required) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#cluster_id.
    // @param node_type (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#node_type.
    // @param parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#parameter_group_name.
    // @param az_mode (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#az_mode.
    // @param notification_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#notification_topic_arn.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#availability_zone.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#engine.
    // @param snapshot_retention_limit (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#snapshot_retention_limit.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#tags.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#engine_version.
    // @param num_cache_nodes (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#num_cache_nodes.
    // @param replication_group_id (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#replication_group_id.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#security_group_ids.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#availability_zones.
    // @param preferred_availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#preferred_availability_zones.
    // @param security_group_names (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#security_group_names.
    // @param snapshot_name (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#snapshot_name.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#apply_immediately.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#port.
    // @param snapshot_arns (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#snapshot_arns.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#id.
    // @param maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#maintenance_window.
    // @param subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#subnet_group_name.
    // @param snapshot_window (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#snapshot_window.
    aws_elasticache_cluster(rname, cluster_id, node_type=null, parameter_group_name=null, az_mode=null, notification_topic_arn=null, availability_zone=null, engine=null, snapshot_retention_limit=null, tags=null, engine_version=null, num_cache_nodes=null, replication_group_id=null, security_group_ids=null, availability_zones=null, preferred_availability_zones=null, security_group_names=null, snapshot_name=null, apply_immediately=null, port=null, snapshot_arns=null, id=null, maintenance_window=null, subnet_group_name=null, snapshot_window=null):: {
      cluster_id: cluster_id,
      [if node_type != null then node_type]: node_type,
      [if parameter_group_name != null then parameter_group_name]: parameter_group_name,
      [if az_mode != null then az_mode]: az_mode,
      [if notification_topic_arn != null then notification_topic_arn]: notification_topic_arn,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if engine != null then engine]: engine,
      [if snapshot_retention_limit != null then snapshot_retention_limit]: snapshot_retention_limit,
      [if tags != null then tags]: tags,
      [if engine_version != null then engine_version]: engine_version,
      [if num_cache_nodes != null then num_cache_nodes]: num_cache_nodes,
      [if replication_group_id != null then replication_group_id]: replication_group_id,
      [if security_group_ids != null then security_group_ids]: security_group_ids,
      [if availability_zones != null then availability_zones]: availability_zones,
      [if preferred_availability_zones != null then preferred_availability_zones]: preferred_availability_zones,
      [if security_group_names != null then security_group_names]: security_group_names,
      [if snapshot_name != null then snapshot_name]: snapshot_name,
      [if apply_immediately != null then apply_immediately]: apply_immediately,
      [if port != null then port]: port,
      [if snapshot_arns != null then snapshot_arns]: snapshot_arns,
      [if id != null then id]: id,
      [if maintenance_window != null then maintenance_window]: maintenance_window,
      [if subnet_group_name != null then subnet_group_name]: subnet_group_name,
      [if snapshot_window != null then snapshot_window]: snapshot_window,
      rname:: rname,
      configuration_endpoint:: '${aws_elasticache_cluster.%s.configuration_endpoint}' % rname,
      cluster_address:: '${aws_elasticache_cluster.%s.cluster_address}' % rname,
      cache_nodes:: '${aws_elasticache_cluster.%s.cache_nodes}' % rname,
    },
    // aws_xray_sampling_rule - https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param priority (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#priority.
    // @param reservoir_size (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#reservoir_size.
    // @param service_name (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#service_name.
    // @param url_path (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#url_path.
    // @param fixed_rate (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#fixed_rate.
    // @param host (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#host.
    // @param service_type (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#service_type.
    // @param http_method (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#http_method.
    // @param resource_arn (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#resource_arn.
    // @param version (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#version.
    // @param rule_name (optional) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#rule_name.
    // @param attributes (optional) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#attributes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#id.
    aws_xray_sampling_rule(rname, priority, reservoir_size, service_name, url_path, fixed_rate, host, service_type, http_method, resource_arn, version, rule_name=null, attributes=null, id=null):: {
      priority: priority,
      reservoir_size: reservoir_size,
      service_name: service_name,
      url_path: url_path,
      fixed_rate: fixed_rate,
      host: host,
      service_type: service_type,
      http_method: http_method,
      resource_arn: resource_arn,
      version: version,
      [if rule_name != null then rule_name]: rule_name,
      [if attributes != null then attributes]: attributes,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_xray_sampling_rule.%s.arn}' % rname,
    },
    // aws_dx_private_virtual_interface - https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#bgp_asn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#name.
    // @param connection_id (required) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#connection_id.
    // @param address_family (required) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#address_family.
    // @param vlan (required) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#vlan.
    // @param bgp_auth_key (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#bgp_auth_key.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#id.
    // @param mtu (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#mtu.
    // @param amazon_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#amazon_address.
    // @param customer_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#customer_address.
    // @param dx_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#dx_gateway_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#tags.
    // @param vpn_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#vpn_gateway_id.
    aws_dx_private_virtual_interface(rname, bgp_asn, name, connection_id, address_family, vlan, bgp_auth_key=null, id=null, mtu=null, amazon_address=null, customer_address=null, dx_gateway_id=null, tags=null, vpn_gateway_id=null):: {
      bgp_asn: bgp_asn,
      name: name,
      connection_id: connection_id,
      address_family: address_family,
      vlan: vlan,
      [if bgp_auth_key != null then bgp_auth_key]: bgp_auth_key,
      [if id != null then id]: id,
      [if mtu != null then mtu]: mtu,
      [if amazon_address != null then amazon_address]: amazon_address,
      [if customer_address != null then customer_address]: customer_address,
      [if dx_gateway_id != null then dx_gateway_id]: dx_gateway_id,
      [if tags != null then tags]: tags,
      [if vpn_gateway_id != null then vpn_gateway_id]: vpn_gateway_id,
      rname:: rname,
      arn:: '${aws_dx_private_virtual_interface.%s.arn}' % rname,
      aws_device:: '${aws_dx_private_virtual_interface.%s.aws_device}' % rname,
      jumbo_frame_capable:: '${aws_dx_private_virtual_interface.%s.jumbo_frame_capable}' % rname,
    },
    // aws_cur_report_definition - https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param additional_schema_elements (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#additional_schema_elements.
    // @param compression (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#compression.
    // @param report_name (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#report_name.
    // @param format (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#format.
    // @param s3_bucket (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#s3_bucket.
    // @param s3_region (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#s3_region.
    // @param time_unit (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#time_unit.
    // @param s3_prefix (optional) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#s3_prefix.
    // @param additional_artifacts (optional) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#additional_artifacts.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#id.
    aws_cur_report_definition(rname, additional_schema_elements, compression, report_name, format, s3_bucket, s3_region, time_unit, s3_prefix=null, additional_artifacts=null, id=null):: {
      additional_schema_elements: additional_schema_elements,
      compression: compression,
      report_name: report_name,
      format: format,
      s3_bucket: s3_bucket,
      s3_region: s3_region,
      time_unit: time_unit,
      [if s3_prefix != null then s3_prefix]: s3_prefix,
      [if additional_artifacts != null then additional_artifacts]: additional_artifacts,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_opsworks_rails_app_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#stack_id.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#auto_healing.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_deploy_recipes.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#drain_elb_on_shutdown.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#elastic_load_balancer.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#instance_shutdown_timeout.
    // @param passenger_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#passenger_version.
    // @param ruby_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#ruby_version.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_undeploy_recipes.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#install_updates_on_boot.
    // @param manage_bundler (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#manage_bundler.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_configure_recipes.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_setup_recipes.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_shutdown_recipes.
    // @param rubygems_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#rubygems_version.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#system_packages.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#use_ebs_optimized_instances.
    // @param app_server (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#app_server.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#auto_assign_elastic_ips.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#auto_assign_public_ips.
    // @param bundler_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#bundler_version.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_instance_profile_arn.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_json.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_security_group_ids.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#name.
    aws_opsworks_rails_app_layer(rname, stack_id, auto_healing=null, custom_deploy_recipes=null, drain_elb_on_shutdown=null, elastic_load_balancer=null, instance_shutdown_timeout=null, passenger_version=null, ruby_version=null, custom_undeploy_recipes=null, install_updates_on_boot=null, manage_bundler=null, custom_configure_recipes=null, custom_setup_recipes=null, custom_shutdown_recipes=null, rubygems_version=null, system_packages=null, use_ebs_optimized_instances=null, app_server=null, auto_assign_elastic_ips=null, auto_assign_public_ips=null, bundler_version=null, custom_instance_profile_arn=null, custom_json=null, custom_security_group_ids=null, id=null, name=null):: {
      stack_id: stack_id,
      [if auto_healing != null then auto_healing]: auto_healing,
      [if custom_deploy_recipes != null then custom_deploy_recipes]: custom_deploy_recipes,
      [if drain_elb_on_shutdown != null then drain_elb_on_shutdown]: drain_elb_on_shutdown,
      [if elastic_load_balancer != null then elastic_load_balancer]: elastic_load_balancer,
      [if instance_shutdown_timeout != null then instance_shutdown_timeout]: instance_shutdown_timeout,
      [if passenger_version != null then passenger_version]: passenger_version,
      [if ruby_version != null then ruby_version]: ruby_version,
      [if custom_undeploy_recipes != null then custom_undeploy_recipes]: custom_undeploy_recipes,
      [if install_updates_on_boot != null then install_updates_on_boot]: install_updates_on_boot,
      [if manage_bundler != null then manage_bundler]: manage_bundler,
      [if custom_configure_recipes != null then custom_configure_recipes]: custom_configure_recipes,
      [if custom_setup_recipes != null then custom_setup_recipes]: custom_setup_recipes,
      [if custom_shutdown_recipes != null then custom_shutdown_recipes]: custom_shutdown_recipes,
      [if rubygems_version != null then rubygems_version]: rubygems_version,
      [if system_packages != null then system_packages]: system_packages,
      [if use_ebs_optimized_instances != null then use_ebs_optimized_instances]: use_ebs_optimized_instances,
      [if app_server != null then app_server]: app_server,
      [if auto_assign_elastic_ips != null then auto_assign_elastic_ips]: auto_assign_elastic_ips,
      [if auto_assign_public_ips != null then auto_assign_public_ips]: auto_assign_public_ips,
      [if bundler_version != null then bundler_version]: bundler_version,
      [if custom_instance_profile_arn != null then custom_instance_profile_arn]: custom_instance_profile_arn,
      [if custom_json != null then custom_json]: custom_json,
      [if custom_security_group_ids != null then custom_security_group_ids]: custom_security_group_ids,
      [if id != null then id]: id,
      [if name != null then name]: name,
      rname:: rname,
    },
    // aws_pinpoint_apns_voip_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#application_id.
    // @param token_key_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#token_key_id.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#enabled.
    // @param private_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#private_key.
    // @param team_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#team_id.
    // @param default_authentication_method (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#default_authentication_method.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#id.
    // @param token_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#token_key.
    // @param bundle_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#bundle_id.
    // @param certificate (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#certificate.
    aws_pinpoint_apns_voip_channel(rname, application_id, token_key_id=null, enabled=null, private_key=null, team_id=null, default_authentication_method=null, id=null, token_key=null, bundle_id=null, certificate=null):: {
      application_id: application_id,
      [if token_key_id != null then token_key_id]: token_key_id,
      [if enabled != null then enabled]: enabled,
      [if private_key != null then private_key]: private_key,
      [if team_id != null then team_id]: team_id,
      [if default_authentication_method != null then default_authentication_method]: default_authentication_method,
      [if id != null then id]: id,
      [if token_key != null then token_key]: token_key,
      [if bundle_id != null then bundle_id]: bundle_id,
      [if certificate != null then certificate]: certificate,
      rname:: rname,
    },
    // aws_waf_web_acl - https://www.terraform.io/docs/providers/aws/r/waf_web_acl.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/waf_web_acl.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_web_acl.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_web_acl.html#id.
    aws_waf_web_acl(rname, metric_name, name, id=null):: {
      metric_name: metric_name,
      name: name,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_waf_web_acl.%s.arn}' % rname,
    },
    // aws_athena_database - https://www.terraform.io/docs/providers/aws/r/athena_database.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/athena_database.html#bucket.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/athena_database.html#name.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/athena_database.html#force_destroy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/athena_database.html#id.
    aws_athena_database(rname, bucket, name, force_destroy=null, id=null):: {
      bucket: bucket,
      name: name,
      [if force_destroy != null then force_destroy]: force_destroy,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_dx_gateway_association - https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param dx_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#dx_gateway_id.
    // @param associated_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#associated_gateway_id.
    // @param proposal_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#proposal_id.
    // @param vpn_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#vpn_gateway_id.
    // @param allowed_prefixes (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#allowed_prefixes.
    // @param associated_gateway_owner_account_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#associated_gateway_owner_account_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#id.
    aws_dx_gateway_association(rname, dx_gateway_id, associated_gateway_id=null, proposal_id=null, vpn_gateway_id=null, allowed_prefixes=null, associated_gateway_owner_account_id=null, id=null):: {
      dx_gateway_id: dx_gateway_id,
      [if associated_gateway_id != null then associated_gateway_id]: associated_gateway_id,
      [if proposal_id != null then proposal_id]: proposal_id,
      [if vpn_gateway_id != null then vpn_gateway_id]: vpn_gateway_id,
      [if allowed_prefixes != null then allowed_prefixes]: allowed_prefixes,
      [if associated_gateway_owner_account_id != null then associated_gateway_owner_account_id]: associated_gateway_owner_account_id,
      [if id != null then id]: id,
      rname:: rname,
      dx_gateway_association_id:: '${aws_dx_gateway_association.%s.dx_gateway_association_id}' % rname,
      associated_gateway_type:: '${aws_dx_gateway_association.%s.associated_gateway_type}' % rname,
      dx_gateway_owner_account_id:: '${aws_dx_gateway_association.%s.dx_gateway_owner_account_id}' % rname,
    },
    // aws_ebs_snapshot_copy - https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param source_region (required) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#source_region.
    // @param source_snapshot_id (required) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#source_snapshot_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#description.
    // @param encrypted (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#encrypted.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#kms_key_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#id.
    aws_ebs_snapshot_copy(rname, source_region, source_snapshot_id, description=null, encrypted=null, kms_key_id=null, tags=null, id=null):: {
      source_region: source_region,
      source_snapshot_id: source_snapshot_id,
      [if description != null then description]: description,
      [if encrypted != null then encrypted]: encrypted,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      volume_id:: '${aws_ebs_snapshot_copy.%s.volume_id}' % rname,
      data_encryption_key_id:: '${aws_ebs_snapshot_copy.%s.data_encryption_key_id}' % rname,
      owner_alias:: '${aws_ebs_snapshot_copy.%s.owner_alias}' % rname,
      owner_id:: '${aws_ebs_snapshot_copy.%s.owner_id}' % rname,
      volume_size:: '${aws_ebs_snapshot_copy.%s.volume_size}' % rname,
    },
    // aws_gamelift_alias - https://www.terraform.io/docs/providers/aws/r/gamelift_alias.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/gamelift_alias.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_alias.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_alias.html#id.
    aws_gamelift_alias(rname, name, description=null, id=null):: {
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_gamelift_alias.%s.arn}' % rname,
    },
    // aws_globalaccelerator_listener - https://www.terraform.io/docs/providers/aws/r/globalaccelerator_listener.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param accelerator_arn (required) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_listener.html#accelerator_arn.
    // @param protocol (required) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_listener.html#protocol.
    // @param client_affinity (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_listener.html#client_affinity.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_listener.html#id.
    aws_globalaccelerator_listener(rname, accelerator_arn, protocol, client_affinity=null, id=null):: {
      accelerator_arn: accelerator_arn,
      protocol: protocol,
      [if client_affinity != null then client_affinity]: client_affinity,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_iam_role_policy - https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html#policy.
    // @param role (required) https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html#role.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html#name_prefix.
    aws_iam_role_policy(rname, policy, role, id=null, name=null, name_prefix=null):: {
      policy: policy,
      role: role,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      rname:: rname,
    },
    // aws_redshift_subnet_group - https://www.terraform.io/docs/providers/aws/r/redshift_subnet_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/redshift_subnet_group.html#name.
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/redshift_subnet_group.html#subnet_ids.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/redshift_subnet_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/redshift_subnet_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_subnet_group.html#id.
    aws_redshift_subnet_group(rname, name, subnet_ids, tags=null, description=null, id=null):: {
      name: name,
      subnet_ids: subnet_ids,
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_redshift_subnet_group.%s.arn}' % rname,
    },
    // aws_vpc_peering_connection_accepter - https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_accepter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_peering_connection_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_accepter.html#vpc_peering_connection_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_accepter.html#tags.
    // @param auto_accept (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_accepter.html#auto_accept.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_accepter.html#id.
    aws_vpc_peering_connection_accepter(rname, vpc_peering_connection_id, tags=null, auto_accept=null, id=null):: {
      vpc_peering_connection_id: vpc_peering_connection_id,
      [if tags != null then tags]: tags,
      [if auto_accept != null then auto_accept]: auto_accept,
      [if id != null then id]: id,
      rname:: rname,
      peer_region:: '${aws_vpc_peering_connection_accepter.%s.peer_region}' % rname,
      peer_vpc_id:: '${aws_vpc_peering_connection_accepter.%s.peer_vpc_id}' % rname,
      vpc_id:: '${aws_vpc_peering_connection_accepter.%s.vpc_id}' % rname,
      accept_status:: '${aws_vpc_peering_connection_accepter.%s.accept_status}' % rname,
      peer_owner_id:: '${aws_vpc_peering_connection_accepter.%s.peer_owner_id}' % rname,
    },
    // aws_dms_replication_task - https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param replication_task_id (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#replication_task_id.
    // @param source_endpoint_arn (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#source_endpoint_arn.
    // @param replication_instance_arn (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#replication_instance_arn.
    // @param migration_type (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#migration_type.
    // @param table_mappings (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#table_mappings.
    // @param target_endpoint_arn (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#target_endpoint_arn.
    // @param replication_task_settings (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#replication_task_settings.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#tags.
    // @param cdc_start_time (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#cdc_start_time.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#id.
    aws_dms_replication_task(rname, replication_task_id, source_endpoint_arn, replication_instance_arn, migration_type, table_mappings, target_endpoint_arn, replication_task_settings=null, tags=null, cdc_start_time=null, id=null):: {
      replication_task_id: replication_task_id,
      source_endpoint_arn: source_endpoint_arn,
      replication_instance_arn: replication_instance_arn,
      migration_type: migration_type,
      table_mappings: table_mappings,
      target_endpoint_arn: target_endpoint_arn,
      [if replication_task_settings != null then replication_task_settings]: replication_task_settings,
      [if tags != null then tags]: tags,
      [if cdc_start_time != null then cdc_start_time]: cdc_start_time,
      [if id != null then id]: id,
      rname:: rname,
      replication_task_arn:: '${aws_dms_replication_task.%s.replication_task_arn}' % rname,
    },
    // aws_db_cluster_snapshot - https://www.terraform.io/docs/providers/aws/r/db_cluster_snapshot.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param db_cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/db_cluster_snapshot.html#db_cluster_identifier.
    // @param db_cluster_snapshot_identifier (required) https://www.terraform.io/docs/providers/aws/r/db_cluster_snapshot.html#db_cluster_snapshot_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_cluster_snapshot.html#id.
    aws_db_cluster_snapshot(rname, db_cluster_identifier, db_cluster_snapshot_identifier, id=null):: {
      db_cluster_identifier: db_cluster_identifier,
      db_cluster_snapshot_identifier: db_cluster_snapshot_identifier,
      [if id != null then id]: id,
      rname:: rname,
      db_cluster_snapshot_arn:: '${aws_db_cluster_snapshot.%s.db_cluster_snapshot_arn}' % rname,
      allocated_storage:: '${aws_db_cluster_snapshot.%s.allocated_storage}' % rname,
      engine_version:: '${aws_db_cluster_snapshot.%s.engine_version}' % rname,
      snapshot_type:: '${aws_db_cluster_snapshot.%s.snapshot_type}' % rname,
      status:: '${aws_db_cluster_snapshot.%s.status}' % rname,
      source_db_cluster_snapshot_arn:: '${aws_db_cluster_snapshot.%s.source_db_cluster_snapshot_arn}' % rname,
      vpc_id:: '${aws_db_cluster_snapshot.%s.vpc_id}' % rname,
      availability_zones:: '${aws_db_cluster_snapshot.%s.availability_zones}' % rname,
      kms_key_id:: '${aws_db_cluster_snapshot.%s.kms_key_id}' % rname,
      license_model:: '${aws_db_cluster_snapshot.%s.license_model}' % rname,
      port:: '${aws_db_cluster_snapshot.%s.port}' % rname,
      engine:: '${aws_db_cluster_snapshot.%s.engine}' % rname,
      storage_encrypted:: '${aws_db_cluster_snapshot.%s.storage_encrypted}' % rname,
    },
    // aws_dlm_lifecycle_policy - https://www.terraform.io/docs/providers/aws/r/dlm_lifecycle_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param description (required) https://www.terraform.io/docs/providers/aws/r/dlm_lifecycle_policy.html#description.
    // @param execution_role_arn (required) https://www.terraform.io/docs/providers/aws/r/dlm_lifecycle_policy.html#execution_role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dlm_lifecycle_policy.html#id.
    // @param state (optional) https://www.terraform.io/docs/providers/aws/r/dlm_lifecycle_policy.html#state.
    aws_dlm_lifecycle_policy(rname, description, execution_role_arn, id=null, state=null):: {
      description: description,
      execution_role_arn: execution_role_arn,
      [if id != null then id]: id,
      [if state != null then state]: state,
      rname:: rname,
    },
    // aws_iam_saml_provider - https://www.terraform.io/docs/providers/aws/r/iam_saml_provider.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iam_saml_provider.html#name.
    // @param saml_metadata_document (required) https://www.terraform.io/docs/providers/aws/r/iam_saml_provider.html#saml_metadata_document.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_saml_provider.html#id.
    aws_iam_saml_provider(rname, name, saml_metadata_document, id=null):: {
      name: name,
      saml_metadata_document: saml_metadata_document,
      [if id != null then id]: id,
      rname:: rname,
      valid_until:: '${aws_iam_saml_provider.%s.valid_until}' % rname,
      arn:: '${aws_iam_saml_provider.%s.arn}' % rname,
    },
    // aws_organizations_policy - https://www.terraform.io/docs/providers/aws/r/organizations_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/organizations_policy.html#name.
    // @param content (required) https://www.terraform.io/docs/providers/aws/r/organizations_policy.html#content.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/organizations_policy.html#id.
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/organizations_policy.html#type.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/organizations_policy.html#description.
    aws_organizations_policy(rname, name, content, id=null, type=null, description=null):: {
      name: name,
      content: content,
      [if id != null then id]: id,
      [if type != null then type]: type,
      [if description != null then description]: description,
      rname:: rname,
      arn:: '${aws_organizations_policy.%s.arn}' % rname,
    },
    // aws_waf_geo_match_set - https://www.terraform.io/docs/providers/aws/r/waf_geo_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_geo_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_geo_match_set.html#id.
    aws_waf_geo_match_set(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_autoscaling_notification - https://www.terraform.io/docs/providers/aws/r/autoscaling_notification.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param group_names (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_notification.html#group_names.
    // @param notifications (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_notification.html#notifications.
    // @param topic_arn (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_notification.html#topic_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_notification.html#id.
    aws_autoscaling_notification(rname, group_names, notifications, topic_arn, id=null):: {
      group_names: group_names,
      notifications: notifications,
      topic_arn: topic_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_network_acl_rule - https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param network_acl_id (required) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#network_acl_id.
    // @param protocol (required) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#protocol.
    // @param rule_action (required) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#rule_action.
    // @param rule_number (required) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#rule_number.
    // @param egress (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#egress.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#id.
    // @param ipv6_cidr_block (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#ipv6_cidr_block.
    // @param cidr_block (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#cidr_block.
    // @param to_port (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#to_port.
    // @param icmp_code (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#icmp_code.
    // @param icmp_type (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#icmp_type.
    // @param from_port (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#from_port.
    aws_network_acl_rule(rname, network_acl_id, protocol, rule_action, rule_number, egress=null, id=null, ipv6_cidr_block=null, cidr_block=null, to_port=null, icmp_code=null, icmp_type=null, from_port=null):: {
      network_acl_id: network_acl_id,
      protocol: protocol,
      rule_action: rule_action,
      rule_number: rule_number,
      [if egress != null then egress]: egress,
      [if id != null then id]: id,
      [if ipv6_cidr_block != null then ipv6_cidr_block]: ipv6_cidr_block,
      [if cidr_block != null then cidr_block]: cidr_block,
      [if to_port != null then to_port]: to_port,
      [if icmp_code != null then icmp_code]: icmp_code,
      [if icmp_type != null then icmp_type]: icmp_type,
      [if from_port != null then from_port]: from_port,
      rname:: rname,
    },
    // aws_storagegateway_upload_buffer - https://www.terraform.io/docs/providers/aws/r/storagegateway_upload_buffer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param disk_id (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_upload_buffer.html#disk_id.
    // @param gateway_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_upload_buffer.html#gateway_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_upload_buffer.html#id.
    aws_storagegateway_upload_buffer(rname, disk_id, gateway_arn, id=null):: {
      disk_id: disk_id,
      gateway_arn: gateway_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_api_gateway_resource - https://www.terraform.io/docs/providers/aws/r/api_gateway_resource.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param path_part (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_resource.html#path_part.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_resource.html#rest_api_id.
    // @param parent_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_resource.html#parent_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_resource.html#id.
    aws_api_gateway_resource(rname, path_part, rest_api_id, parent_id, id=null):: {
      path_part: path_part,
      rest_api_id: rest_api_id,
      parent_id: parent_id,
      [if id != null then id]: id,
      rname:: rname,
      path:: '${aws_api_gateway_resource.%s.path}' % rname,
    },
    // aws_elasticsearch_domain - https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain_name (required) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html#domain_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html#tags.
    // @param access_policies (optional) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html#access_policies.
    // @param elasticsearch_version (optional) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html#elasticsearch_version.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html#id.
    // @param advanced_options (optional) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html#advanced_options.
    aws_elasticsearch_domain(rname, domain_name, tags=null, access_policies=null, elasticsearch_version=null, id=null, advanced_options=null):: {
      domain_name: domain_name,
      [if tags != null then tags]: tags,
      [if access_policies != null then access_policies]: access_policies,
      [if elasticsearch_version != null then elasticsearch_version]: elasticsearch_version,
      [if id != null then id]: id,
      [if advanced_options != null then advanced_options]: advanced_options,
      rname:: rname,
      endpoint:: '${aws_elasticsearch_domain.%s.endpoint}' % rname,
      arn:: '${aws_elasticsearch_domain.%s.arn}' % rname,
      domain_id:: '${aws_elasticsearch_domain.%s.domain_id}' % rname,
      kibana_endpoint:: '${aws_elasticsearch_domain.%s.kibana_endpoint}' % rname,
    },
    // aws_launch_configuration - https://www.terraform.io/docs/providers/aws/r/launch_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#instance_type.
    // @param image_id (required) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#image_id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#name.
    // @param spot_price (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#spot_price.
    // @param user_data (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#user_data.
    // @param user_data_base64 (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#user_data_base64.
    // @param vpc_classic_link_id (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#vpc_classic_link_id.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#ebs_optimized.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#id.
    // @param key_name (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#key_name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#name_prefix.
    // @param vpc_classic_link_security_groups (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#vpc_classic_link_security_groups.
    // @param associate_public_ip_address (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#associate_public_ip_address.
    // @param iam_instance_profile (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#iam_instance_profile.
    // @param placement_tenancy (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#placement_tenancy.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#security_groups.
    // @param enable_monitoring (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#enable_monitoring.
    aws_launch_configuration(rname, instance_type, image_id, name=null, spot_price=null, user_data=null, user_data_base64=null, vpc_classic_link_id=null, ebs_optimized=null, id=null, key_name=null, name_prefix=null, vpc_classic_link_security_groups=null, associate_public_ip_address=null, iam_instance_profile=null, placement_tenancy=null, security_groups=null, enable_monitoring=null):: {
      instance_type: instance_type,
      image_id: image_id,
      [if name != null then name]: name,
      [if spot_price != null then spot_price]: spot_price,
      [if user_data != null then user_data]: user_data,
      [if user_data_base64 != null then user_data_base64]: user_data_base64,
      [if vpc_classic_link_id != null then vpc_classic_link_id]: vpc_classic_link_id,
      [if ebs_optimized != null then ebs_optimized]: ebs_optimized,
      [if id != null then id]: id,
      [if key_name != null then key_name]: key_name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if vpc_classic_link_security_groups != null then vpc_classic_link_security_groups]: vpc_classic_link_security_groups,
      [if associate_public_ip_address != null then associate_public_ip_address]: associate_public_ip_address,
      [if iam_instance_profile != null then iam_instance_profile]: iam_instance_profile,
      [if placement_tenancy != null then placement_tenancy]: placement_tenancy,
      [if security_groups != null then security_groups]: security_groups,
      [if enable_monitoring != null then enable_monitoring]: enable_monitoring,
      rname:: rname,
    },
    // aws_lb - https://www.terraform.io/docs/providers/aws/r/lb.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param idle_timeout (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#idle_timeout.
    // @param ip_address_type (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#ip_address_type.
    // @param load_balancer_type (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#load_balancer_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#id.
    // @param internal (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#internal.
    // @param enable_http2 (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#enable_http2.
    // @param enable_cross_zone_load_balancing (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#enable_cross_zone_load_balancing.
    // @param enable_deletion_protection (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#enable_deletion_protection.
    // @param subnets (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#subnets.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#name_prefix.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#security_groups.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#tags.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#name.
    aws_lb(rname, idle_timeout=null, ip_address_type=null, load_balancer_type=null, id=null, internal=null, enable_http2=null, enable_cross_zone_load_balancing=null, enable_deletion_protection=null, subnets=null, name_prefix=null, security_groups=null, tags=null, name=null):: {
      [if idle_timeout != null then idle_timeout]: idle_timeout,
      [if ip_address_type != null then ip_address_type]: ip_address_type,
      [if load_balancer_type != null then load_balancer_type]: load_balancer_type,
      [if id != null then id]: id,
      [if internal != null then internal]: internal,
      [if enable_http2 != null then enable_http2]: enable_http2,
      [if enable_cross_zone_load_balancing != null then enable_cross_zone_load_balancing]: enable_cross_zone_load_balancing,
      [if enable_deletion_protection != null then enable_deletion_protection]: enable_deletion_protection,
      [if subnets != null then subnets]: subnets,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if security_groups != null then security_groups]: security_groups,
      [if tags != null then tags]: tags,
      [if name != null then name]: name,
      rname:: rname,
      arn:: '${aws_lb.%s.arn}' % rname,
      vpc_id:: '${aws_lb.%s.vpc_id}' % rname,
      dns_name:: '${aws_lb.%s.dns_name}' % rname,
      zone_id:: '${aws_lb.%s.zone_id}' % rname,
      arn_suffix:: '${aws_lb.%s.arn_suffix}' % rname,
    },
    // aws_lightsail_instance - https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bundle_id (required) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#bundle_id.
    // @param availability_zone (required) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#availability_zone.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#name.
    // @param blueprint_id (required) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#blueprint_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#tags.
    // @param user_data (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#user_data.
    // @param key_pair_name (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#key_pair_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#id.
    aws_lightsail_instance(rname, bundle_id, availability_zone, name, blueprint_id, tags=null, user_data=null, key_pair_name=null, id=null):: {
      bundle_id: bundle_id,
      availability_zone: availability_zone,
      name: name,
      blueprint_id: blueprint_id,
      [if tags != null then tags]: tags,
      [if user_data != null then user_data]: user_data,
      [if key_pair_name != null then key_pair_name]: key_pair_name,
      [if id != null then id]: id,
      rname:: rname,
      username:: '${aws_lightsail_instance.%s.username}' % rname,
      arn:: '${aws_lightsail_instance.%s.arn}' % rname,
      cpu_count:: '${aws_lightsail_instance.%s.cpu_count}' % rname,
      public_ip_address:: '${aws_lightsail_instance.%s.public_ip_address}' % rname,
      created_at:: '${aws_lightsail_instance.%s.created_at}' % rname,
      ipv6_address:: '${aws_lightsail_instance.%s.ipv6_address}' % rname,
      is_static_ip:: '${aws_lightsail_instance.%s.is_static_ip}' % rname,
      private_ip_address:: '${aws_lightsail_instance.%s.private_ip_address}' % rname,
      ram_size:: '${aws_lightsail_instance.%s.ram_size}' % rname,
    },
    // aws_opsworks_php_app_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#stack_id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#name.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#use_ebs_optimized_instances.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#auto_assign_public_ips.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#auto_healing.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_configure_recipes.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_shutdown_recipes.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_deploy_recipes.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_instance_profile_arn.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#elastic_load_balancer.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#id.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#install_updates_on_boot.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#auto_assign_elastic_ips.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_json.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_security_group_ids.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_setup_recipes.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_undeploy_recipes.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#drain_elb_on_shutdown.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#instance_shutdown_timeout.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#system_packages.
    aws_opsworks_php_app_layer(rname, stack_id, name=null, use_ebs_optimized_instances=null, auto_assign_public_ips=null, auto_healing=null, custom_configure_recipes=null, custom_shutdown_recipes=null, custom_deploy_recipes=null, custom_instance_profile_arn=null, elastic_load_balancer=null, id=null, install_updates_on_boot=null, auto_assign_elastic_ips=null, custom_json=null, custom_security_group_ids=null, custom_setup_recipes=null, custom_undeploy_recipes=null, drain_elb_on_shutdown=null, instance_shutdown_timeout=null, system_packages=null):: {
      stack_id: stack_id,
      [if name != null then name]: name,
      [if use_ebs_optimized_instances != null then use_ebs_optimized_instances]: use_ebs_optimized_instances,
      [if auto_assign_public_ips != null then auto_assign_public_ips]: auto_assign_public_ips,
      [if auto_healing != null then auto_healing]: auto_healing,
      [if custom_configure_recipes != null then custom_configure_recipes]: custom_configure_recipes,
      [if custom_shutdown_recipes != null then custom_shutdown_recipes]: custom_shutdown_recipes,
      [if custom_deploy_recipes != null then custom_deploy_recipes]: custom_deploy_recipes,
      [if custom_instance_profile_arn != null then custom_instance_profile_arn]: custom_instance_profile_arn,
      [if elastic_load_balancer != null then elastic_load_balancer]: elastic_load_balancer,
      [if id != null then id]: id,
      [if install_updates_on_boot != null then install_updates_on_boot]: install_updates_on_boot,
      [if auto_assign_elastic_ips != null then auto_assign_elastic_ips]: auto_assign_elastic_ips,
      [if custom_json != null then custom_json]: custom_json,
      [if custom_security_group_ids != null then custom_security_group_ids]: custom_security_group_ids,
      [if custom_setup_recipes != null then custom_setup_recipes]: custom_setup_recipes,
      [if custom_undeploy_recipes != null then custom_undeploy_recipes]: custom_undeploy_recipes,
      [if drain_elb_on_shutdown != null then drain_elb_on_shutdown]: drain_elb_on_shutdown,
      [if instance_shutdown_timeout != null then instance_shutdown_timeout]: instance_shutdown_timeout,
      [if system_packages != null then system_packages]: system_packages,
      rname:: rname,
    },
    // aws_redshift_snapshot_schedule - https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param definitions (required) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#definitions.
    // @param identifier (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#identifier.
    // @param identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#identifier_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#description.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#force_destroy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#id.
    aws_redshift_snapshot_schedule(rname, definitions, identifier=null, identifier_prefix=null, tags=null, description=null, force_destroy=null, id=null):: {
      definitions: definitions,
      [if identifier != null then identifier]: identifier,
      [if identifier_prefix != null then identifier_prefix]: identifier_prefix,
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      [if force_destroy != null then force_destroy]: force_destroy,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_redshift_snapshot_schedule.%s.arn}' % rname,
    },
    // aws_db_subnet_group - https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html#subnet_ids.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html#id.
    aws_db_subnet_group(rname, subnet_ids, name=null, name_prefix=null, tags=null, description=null, id=null):: {
      subnet_ids: subnet_ids,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_db_subnet_group.%s.arn}' % rname,
    },
    // aws_opsworks_rds_db_instance - https://www.terraform.io/docs/providers/aws/r/opsworks_rds_db_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_rds_db_instance.html#stack_id.
    // @param db_password (required) https://www.terraform.io/docs/providers/aws/r/opsworks_rds_db_instance.html#db_password.
    // @param db_user (required) https://www.terraform.io/docs/providers/aws/r/opsworks_rds_db_instance.html#db_user.
    // @param rds_db_instance_arn (required) https://www.terraform.io/docs/providers/aws/r/opsworks_rds_db_instance.html#rds_db_instance_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rds_db_instance.html#id.
    aws_opsworks_rds_db_instance(rname, stack_id, db_password, db_user, rds_db_instance_arn, id=null):: {
      stack_id: stack_id,
      db_password: db_password,
      db_user: db_user,
      rds_db_instance_arn: rds_db_instance_arn,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_securityhub_account - https://www.terraform.io/docs/providers/aws/r/securityhub_account.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/securityhub_account.html#id.
    aws_securityhub_account(rname, id=null):: {
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_spot_datafeed_subscription - https://www.terraform.io/docs/providers/aws/r/spot_datafeed_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/spot_datafeed_subscription.html#bucket.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/spot_datafeed_subscription.html#id.
    // @param prefix (optional) https://www.terraform.io/docs/providers/aws/r/spot_datafeed_subscription.html#prefix.
    aws_spot_datafeed_subscription(rname, bucket, id=null, prefix=null):: {
      bucket: bucket,
      [if id != null then id]: id,
      [if prefix != null then prefix]: prefix,
      rname:: rname,
    },
    // aws_appsync_graphql_api - https://www.terraform.io/docs/providers/aws/r/appsync_graphql_api.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appsync_graphql_api.html#name.
    // @param authentication_type (required) https://www.terraform.io/docs/providers/aws/r/appsync_graphql_api.html#authentication_type.
    // @param schema (optional) https://www.terraform.io/docs/providers/aws/r/appsync_graphql_api.html#schema.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/appsync_graphql_api.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appsync_graphql_api.html#id.
    aws_appsync_graphql_api(rname, name, authentication_type, schema=null, tags=null, id=null):: {
      name: name,
      authentication_type: authentication_type,
      [if schema != null then schema]: schema,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      uris:: '${aws_appsync_graphql_api.%s.uris}' % rname,
      arn:: '${aws_appsync_graphql_api.%s.arn}' % rname,
    },
    // aws_cloudwatch_log_group - https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html#id.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html#kms_key_id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html#name_prefix.
    // @param retention_in_days (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html#retention_in_days.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html#tags.
    aws_cloudwatch_log_group(rname, id=null, kms_key_id=null, name=null, name_prefix=null, retention_in_days=null, tags=null):: {
      [if id != null then id]: id,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if retention_in_days != null then retention_in_days]: retention_in_days,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_cloudwatch_log_group.%s.arn}' % rname,
    },
    // aws_sqs_queue - https://www.terraform.io/docs/providers/aws/r/sqs_queue.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#name.
    // @param receive_wait_time_seconds (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#receive_wait_time_seconds.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#tags.
    // @param delay_seconds (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#delay_seconds.
    // @param message_retention_seconds (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#message_retention_seconds.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#id.
    // @param kms_data_key_reuse_period_seconds (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#kms_data_key_reuse_period_seconds.
    // @param max_message_size (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#max_message_size.
    // @param redrive_policy (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#redrive_policy.
    // @param visibility_timeout_seconds (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#visibility_timeout_seconds.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#name_prefix.
    // @param content_based_deduplication (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#content_based_deduplication.
    // @param fifo_queue (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#fifo_queue.
    // @param kms_master_key_id (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#kms_master_key_id.
    aws_sqs_queue(rname, name=null, receive_wait_time_seconds=null, tags=null, delay_seconds=null, message_retention_seconds=null, policy=null, id=null, kms_data_key_reuse_period_seconds=null, max_message_size=null, redrive_policy=null, visibility_timeout_seconds=null, name_prefix=null, content_based_deduplication=null, fifo_queue=null, kms_master_key_id=null):: {
      [if name != null then name]: name,
      [if receive_wait_time_seconds != null then receive_wait_time_seconds]: receive_wait_time_seconds,
      [if tags != null then tags]: tags,
      [if delay_seconds != null then delay_seconds]: delay_seconds,
      [if message_retention_seconds != null then message_retention_seconds]: message_retention_seconds,
      [if policy != null then policy]: policy,
      [if id != null then id]: id,
      [if kms_data_key_reuse_period_seconds != null then kms_data_key_reuse_period_seconds]: kms_data_key_reuse_period_seconds,
      [if max_message_size != null then max_message_size]: max_message_size,
      [if redrive_policy != null then redrive_policy]: redrive_policy,
      [if visibility_timeout_seconds != null then visibility_timeout_seconds]: visibility_timeout_seconds,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if content_based_deduplication != null then content_based_deduplication]: content_based_deduplication,
      [if fifo_queue != null then fifo_queue]: fifo_queue,
      [if kms_master_key_id != null then kms_master_key_id]: kms_master_key_id,
      rname:: rname,
      arn:: '${aws_sqs_queue.%s.arn}' % rname,
    },
    // aws_budgets_budget - https://www.terraform.io/docs/providers/aws/r/budgets_budget.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param limit_amount (required) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#limit_amount.
    // @param time_period_start (required) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#time_period_start.
    // @param time_unit (required) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#time_unit.
    // @param budget_type (required) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#budget_type.
    // @param limit_unit (required) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#limit_unit.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#name.
    // @param time_period_end (optional) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#time_period_end.
    // @param account_id (optional) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#account_id.
    // @param cost_filters (optional) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#cost_filters.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#id.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#name_prefix.
    aws_budgets_budget(rname, limit_amount, time_period_start, time_unit, budget_type, limit_unit, name=null, time_period_end=null, account_id=null, cost_filters=null, id=null, name_prefix=null):: {
      limit_amount: limit_amount,
      time_period_start: time_period_start,
      time_unit: time_unit,
      budget_type: budget_type,
      limit_unit: limit_unit,
      [if name != null then name]: name,
      [if time_period_end != null then time_period_end]: time_period_end,
      [if account_id != null then account_id]: account_id,
      [if cost_filters != null then cost_filters]: cost_filters,
      [if id != null then id]: id,
      [if name_prefix != null then name_prefix]: name_prefix,
      rname:: rname,
    },
    // aws_ebs_volume - https://www.terraform.io/docs/providers/aws/r/ebs_volume.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param availability_zone (required) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#availability_zone.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#id.
    // @param iops (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#iops.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#kms_key_id.
    // @param snapshot_id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#snapshot_id.
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#type.
    // @param encrypted (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#encrypted.
    // @param size (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#size.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#tags.
    aws_ebs_volume(rname, availability_zone, id=null, iops=null, kms_key_id=null, snapshot_id=null, type=null, encrypted=null, size=null, tags=null):: {
      availability_zone: availability_zone,
      [if id != null then id]: id,
      [if iops != null then iops]: iops,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if snapshot_id != null then snapshot_id]: snapshot_id,
      [if type != null then type]: type,
      [if encrypted != null then encrypted]: encrypted,
      [if size != null then size]: size,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_ebs_volume.%s.arn}' % rname,
    },
    // aws_api_gateway_authorizer - https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#name.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#rest_api_id.
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#type.
    // @param authorizer_credentials (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#authorizer_credentials.
    // @param authorizer_uri (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#authorizer_uri.
    // @param identity_source (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#identity_source.
    // @param identity_validation_expression (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#identity_validation_expression.
    // @param provider_arns (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#provider_arns.
    // @param authorizer_result_ttl_in_seconds (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#authorizer_result_ttl_in_seconds.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#id.
    aws_api_gateway_authorizer(rname, name, rest_api_id, type=null, authorizer_credentials=null, authorizer_uri=null, identity_source=null, identity_validation_expression=null, provider_arns=null, authorizer_result_ttl_in_seconds=null, id=null):: {
      name: name,
      rest_api_id: rest_api_id,
      [if type != null then type]: type,
      [if authorizer_credentials != null then authorizer_credentials]: authorizer_credentials,
      [if authorizer_uri != null then authorizer_uri]: authorizer_uri,
      [if identity_source != null then identity_source]: identity_source,
      [if identity_validation_expression != null then identity_validation_expression]: identity_validation_expression,
      [if provider_arns != null then provider_arns]: provider_arns,
      [if authorizer_result_ttl_in_seconds != null then authorizer_result_ttl_in_seconds]: authorizer_result_ttl_in_seconds,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_ec2_transit_gateway_vpc_attachment - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#vpc_id.
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#subnet_ids.
    // @param transit_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#transit_gateway_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#id.
    // @param ipv6_support (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#ipv6_support.
    // @param transit_gateway_default_route_table_association (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#transit_gateway_default_route_table_association.
    // @param transit_gateway_default_route_table_propagation (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#transit_gateway_default_route_table_propagation.
    // @param dns_support (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#dns_support.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#tags.
    aws_ec2_transit_gateway_vpc_attachment(rname, vpc_id, subnet_ids, transit_gateway_id, id=null, ipv6_support=null, transit_gateway_default_route_table_association=null, transit_gateway_default_route_table_propagation=null, dns_support=null, tags=null):: {
      vpc_id: vpc_id,
      subnet_ids: subnet_ids,
      transit_gateway_id: transit_gateway_id,
      [if id != null then id]: id,
      [if ipv6_support != null then ipv6_support]: ipv6_support,
      [if transit_gateway_default_route_table_association != null then transit_gateway_default_route_table_association]: transit_gateway_default_route_table_association,
      [if transit_gateway_default_route_table_propagation != null then transit_gateway_default_route_table_propagation]: transit_gateway_default_route_table_propagation,
      [if dns_support != null then dns_support]: dns_support,
      [if tags != null then tags]: tags,
      rname:: rname,
      vpc_owner_id:: '${aws_ec2_transit_gateway_vpc_attachment.%s.vpc_owner_id}' % rname,
    },
    // aws_service_discovery_private_dns_namespace - https://www.terraform.io/docs/providers/aws/r/service_discovery_private_dns_namespace.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/service_discovery_private_dns_namespace.html#name.
    // @param vpc (required) https://www.terraform.io/docs/providers/aws/r/service_discovery_private_dns_namespace.html#vpc.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_private_dns_namespace.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_private_dns_namespace.html#id.
    aws_service_discovery_private_dns_namespace(rname, name, vpc, description=null, id=null):: {
      name: name,
      vpc: vpc,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_service_discovery_private_dns_namespace.%s.arn}' % rname,
      hosted_zone:: '${aws_service_discovery_private_dns_namespace.%s.hosted_zone}' % rname,
    },
    // aws_config_config_rule - https://www.terraform.io/docs/providers/aws/r/config_config_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/config_config_rule.html#name.
    // @param maximum_execution_frequency (optional) https://www.terraform.io/docs/providers/aws/r/config_config_rule.html#maximum_execution_frequency.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/config_config_rule.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/config_config_rule.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_config_rule.html#id.
    // @param input_parameters (optional) https://www.terraform.io/docs/providers/aws/r/config_config_rule.html#input_parameters.
    aws_config_config_rule(rname, name, maximum_execution_frequency=null, tags=null, description=null, id=null, input_parameters=null):: {
      name: name,
      [if maximum_execution_frequency != null then maximum_execution_frequency]: maximum_execution_frequency,
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if input_parameters != null then input_parameters]: input_parameters,
      rname:: rname,
      rule_id:: '${aws_config_config_rule.%s.rule_id}' % rname,
      arn:: '${aws_config_config_rule.%s.arn}' % rname,
    },
    // aws_lambda_layer_version - https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param layer_name (required) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#layer_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#id.
    // @param license_info (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#license_info.
    // @param s3_object_version (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#s3_object_version.
    // @param compatible_runtimes (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#compatible_runtimes.
    // @param s3_key (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#s3_key.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#description.
    // @param filename (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#filename.
    // @param s3_bucket (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#s3_bucket.
    // @param source_code_hash (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#source_code_hash.
    aws_lambda_layer_version(rname, layer_name, id=null, license_info=null, s3_object_version=null, compatible_runtimes=null, s3_key=null, description=null, filename=null, s3_bucket=null, source_code_hash=null):: {
      layer_name: layer_name,
      [if id != null then id]: id,
      [if license_info != null then license_info]: license_info,
      [if s3_object_version != null then s3_object_version]: s3_object_version,
      [if compatible_runtimes != null then compatible_runtimes]: compatible_runtimes,
      [if s3_key != null then s3_key]: s3_key,
      [if description != null then description]: description,
      [if filename != null then filename]: filename,
      [if s3_bucket != null then s3_bucket]: s3_bucket,
      [if source_code_hash != null then source_code_hash]: source_code_hash,
      rname:: rname,
      layer_arn:: '${aws_lambda_layer_version.%s.layer_arn}' % rname,
      version:: '${aws_lambda_layer_version.%s.version}' % rname,
      arn:: '${aws_lambda_layer_version.%s.arn}' % rname,
      created_date:: '${aws_lambda_layer_version.%s.created_date}' % rname,
      source_code_size:: '${aws_lambda_layer_version.%s.source_code_size}' % rname,
    },
    // aws_cloudhsm_v2_hsm - https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_hsm.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_id (required) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_hsm.html#cluster_id.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_hsm.html#subnet_id.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_hsm.html#availability_zone.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_hsm.html#id.
    // @param ip_address (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_hsm.html#ip_address.
    aws_cloudhsm_v2_hsm(rname, cluster_id, subnet_id=null, availability_zone=null, id=null, ip_address=null):: {
      cluster_id: cluster_id,
      [if subnet_id != null then subnet_id]: subnet_id,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if id != null then id]: id,
      [if ip_address != null then ip_address]: ip_address,
      rname:: rname,
      hsm_eni_id:: '${aws_cloudhsm_v2_hsm.%s.hsm_eni_id}' % rname,
      hsm_id:: '${aws_cloudhsm_v2_hsm.%s.hsm_id}' % rname,
      hsm_state:: '${aws_cloudhsm_v2_hsm.%s.hsm_state}' % rname,
    },
    // aws_appmesh_route - https://www.terraform.io/docs/providers/aws/r/appmesh_route.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_route.html#name.
    // @param virtual_router_name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_route.html#virtual_router_name.
    // @param mesh_name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_route.html#mesh_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_route.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_route.html#id.
    aws_appmesh_route(rname, name, virtual_router_name, mesh_name, tags=null, id=null):: {
      name: name,
      virtual_router_name: virtual_router_name,
      mesh_name: mesh_name,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_appmesh_route.%s.arn}' % rname,
      created_date:: '${aws_appmesh_route.%s.created_date}' % rname,
      last_updated_date:: '${aws_appmesh_route.%s.last_updated_date}' % rname,
    },
    // aws_cognito_identity_pool_roles_attachment - https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool_roles_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param identity_pool_id (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool_roles_attachment.html#identity_pool_id.
    // @param roles (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool_roles_attachment.html#roles.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool_roles_attachment.html#id.
    aws_cognito_identity_pool_roles_attachment(rname, identity_pool_id, roles, id=null):: {
      identity_pool_id: identity_pool_id,
      roles: roles,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_datasync_location_s3 - https://www.terraform.io/docs/providers/aws/r/datasync_location_s3.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subdirectory (required) https://www.terraform.io/docs/providers/aws/r/datasync_location_s3.html#subdirectory.
    // @param s3_bucket_arn (required) https://www.terraform.io/docs/providers/aws/r/datasync_location_s3.html#s3_bucket_arn.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_s3.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_s3.html#id.
    aws_datasync_location_s3(rname, subdirectory, s3_bucket_arn, tags=null, id=null):: {
      subdirectory: subdirectory,
      s3_bucket_arn: s3_bucket_arn,
      [if tags != null then tags]: tags,
      [if id != null then id]: id,
      rname:: rname,
      uri:: '${aws_datasync_location_s3.%s.uri}' % rname,
      arn:: '${aws_datasync_location_s3.%s.arn}' % rname,
    },
    // aws_ec2_capacity_reservation - https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param availability_zone (required) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#availability_zone.
    // @param instance_count (required) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#instance_count.
    // @param instance_platform (required) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#instance_platform.
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#instance_type.
    // @param end_date (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#end_date.
    // @param ephemeral_storage (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#ephemeral_storage.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#tags.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#ebs_optimized.
    // @param end_date_type (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#end_date_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#id.
    // @param instance_match_criteria (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#instance_match_criteria.
    // @param tenancy (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#tenancy.
    aws_ec2_capacity_reservation(rname, availability_zone, instance_count, instance_platform, instance_type, end_date=null, ephemeral_storage=null, tags=null, ebs_optimized=null, end_date_type=null, id=null, instance_match_criteria=null, tenancy=null):: {
      availability_zone: availability_zone,
      instance_count: instance_count,
      instance_platform: instance_platform,
      instance_type: instance_type,
      [if end_date != null then end_date]: end_date,
      [if ephemeral_storage != null then ephemeral_storage]: ephemeral_storage,
      [if tags != null then tags]: tags,
      [if ebs_optimized != null then ebs_optimized]: ebs_optimized,
      [if end_date_type != null then end_date_type]: end_date_type,
      [if id != null then id]: id,
      [if instance_match_criteria != null then instance_match_criteria]: instance_match_criteria,
      [if tenancy != null then tenancy]: tenancy,
      rname:: rname,
    },
    // aws_lb_ssl_negotiation_policy - https://www.terraform.io/docs/providers/aws/r/lb_ssl_negotiation_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param lb_port (required) https://www.terraform.io/docs/providers/aws/r/lb_ssl_negotiation_policy.html#lb_port.
    // @param load_balancer (required) https://www.terraform.io/docs/providers/aws/r/lb_ssl_negotiation_policy.html#load_balancer.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/lb_ssl_negotiation_policy.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb_ssl_negotiation_policy.html#id.
    aws_lb_ssl_negotiation_policy(rname, lb_port, load_balancer, name, id=null):: {
      lb_port: lb_port,
      load_balancer: load_balancer,
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_api_gateway_documentation_part - https://www.terraform.io/docs/providers/aws/r/api_gateway_documentation_part.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param properties (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_documentation_part.html#properties.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_documentation_part.html#rest_api_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_documentation_part.html#id.
    aws_api_gateway_documentation_part(rname, properties, rest_api_id, id=null):: {
      properties: properties,
      rest_api_id: rest_api_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_wafregional_regex_pattern_set - https://www.terraform.io/docs/providers/aws/r/wafregional_regex_pattern_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_regex_pattern_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_regex_pattern_set.html#id.
    // @param regex_pattern_strings (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_regex_pattern_set.html#regex_pattern_strings.
    aws_wafregional_regex_pattern_set(rname, name, id=null, regex_pattern_strings=null):: {
      name: name,
      [if id != null then id]: id,
      [if regex_pattern_strings != null then regex_pattern_strings]: regex_pattern_strings,
      rname:: rname,
    },
    // aws_opsworks_application - https://www.terraform.io/docs/providers/aws/r/opsworks_application.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#stack_id.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#name.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#type.
    // @param data_source_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#data_source_arn.
    // @param domains (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#domains.
    // @param aws_flow_ruby_settings (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#aws_flow_ruby_settings.
    // @param data_source_database_name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#data_source_database_name.
    // @param data_source_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#data_source_type.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#description.
    // @param document_root (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#document_root.
    // @param rails_env (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#rails_env.
    // @param auto_bundle_on_deploy (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#auto_bundle_on_deploy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#id.
    // @param short_name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#short_name.
    // @param enable_ssl (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#enable_ssl.
    aws_opsworks_application(rname, stack_id, name, type, data_source_arn=null, domains=null, aws_flow_ruby_settings=null, data_source_database_name=null, data_source_type=null, description=null, document_root=null, rails_env=null, auto_bundle_on_deploy=null, id=null, short_name=null, enable_ssl=null):: {
      stack_id: stack_id,
      name: name,
      type: type,
      [if data_source_arn != null then data_source_arn]: data_source_arn,
      [if domains != null then domains]: domains,
      [if aws_flow_ruby_settings != null then aws_flow_ruby_settings]: aws_flow_ruby_settings,
      [if data_source_database_name != null then data_source_database_name]: data_source_database_name,
      [if data_source_type != null then data_source_type]: data_source_type,
      [if description != null then description]: description,
      [if document_root != null then document_root]: document_root,
      [if rails_env != null then rails_env]: rails_env,
      [if auto_bundle_on_deploy != null then auto_bundle_on_deploy]: auto_bundle_on_deploy,
      [if id != null then id]: id,
      [if short_name != null then short_name]: short_name,
      [if enable_ssl != null then enable_ssl]: enable_ssl,
      rname:: rname,
    },
    // aws_kms_alias - https://www.terraform.io/docs/providers/aws/r/kms_alias.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param target_key_id (required) https://www.terraform.io/docs/providers/aws/r/kms_alias.html#target_key_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kms_alias.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/kms_alias.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/kms_alias.html#name_prefix.
    aws_kms_alias(rname, target_key_id, id=null, name=null, name_prefix=null):: {
      target_key_id: target_key_id,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      rname:: rname,
      arn:: '${aws_kms_alias.%s.arn}' % rname,
      target_key_arn:: '${aws_kms_alias.%s.target_key_arn}' % rname,
    },
    // aws_pinpoint_email_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param identity (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html#identity.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html#role_arn.
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html#application_id.
    // @param from_address (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html#from_address.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html#id.
    aws_pinpoint_email_channel(rname, identity, role_arn, application_id, from_address, enabled=null, id=null):: {
      identity: identity,
      role_arn: role_arn,
      application_id: application_id,
      from_address: from_address,
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      rname:: rname,
      messages_per_second:: '${aws_pinpoint_email_channel.%s.messages_per_second}' % rname,
    },
    // aws_ssm_resource_data_sync - https://www.terraform.io/docs/providers/aws/r/ssm_resource_data_sync.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ssm_resource_data_sync.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_resource_data_sync.html#id.
    aws_ssm_resource_data_sync(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_config_organization_managed_rule - https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#name.
    // @param rule_identifier (required) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#rule_identifier.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#description.
    // @param tag_key_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#tag_key_scope.
    // @param excluded_accounts (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#excluded_accounts.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#id.
    // @param input_parameters (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#input_parameters.
    // @param maximum_execution_frequency (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#maximum_execution_frequency.
    // @param resource_id_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#resource_id_scope.
    // @param resource_types_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#resource_types_scope.
    // @param tag_value_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#tag_value_scope.
    aws_config_organization_managed_rule(rname, name, rule_identifier, description=null, tag_key_scope=null, excluded_accounts=null, id=null, input_parameters=null, maximum_execution_frequency=null, resource_id_scope=null, resource_types_scope=null, tag_value_scope=null):: {
      name: name,
      rule_identifier: rule_identifier,
      [if description != null then description]: description,
      [if tag_key_scope != null then tag_key_scope]: tag_key_scope,
      [if excluded_accounts != null then excluded_accounts]: excluded_accounts,
      [if id != null then id]: id,
      [if input_parameters != null then input_parameters]: input_parameters,
      [if maximum_execution_frequency != null then maximum_execution_frequency]: maximum_execution_frequency,
      [if resource_id_scope != null then resource_id_scope]: resource_id_scope,
      [if resource_types_scope != null then resource_types_scope]: resource_types_scope,
      [if tag_value_scope != null then tag_value_scope]: tag_value_scope,
      rname:: rname,
      arn:: '${aws_config_organization_managed_rule.%s.arn}' % rname,
    },
    // aws_cloudwatch_log_subscription_filter - https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_subscription_filter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param destination_arn (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_subscription_filter.html#destination_arn.
    // @param filter_pattern (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_subscription_filter.html#filter_pattern.
    // @param log_group_name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_subscription_filter.html#log_group_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_subscription_filter.html#name.
    // @param distribution (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_subscription_filter.html#distribution.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_subscription_filter.html#id.
    // @param role_arn (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_subscription_filter.html#role_arn.
    aws_cloudwatch_log_subscription_filter(rname, destination_arn, filter_pattern, log_group_name, name, distribution=null, id=null, role_arn=null):: {
      destination_arn: destination_arn,
      filter_pattern: filter_pattern,
      log_group_name: log_group_name,
      name: name,
      [if distribution != null then distribution]: distribution,
      [if id != null then id]: id,
      [if role_arn != null then role_arn]: role_arn,
      rname:: rname,
    },
    // aws_codecommit_trigger - https://www.terraform.io/docs/providers/aws/r/codecommit_trigger.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param repository_name (required) https://www.terraform.io/docs/providers/aws/r/codecommit_trigger.html#repository_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codecommit_trigger.html#id.
    aws_codecommit_trigger(rname, repository_name, id=null):: {
      repository_name: repository_name,
      [if id != null then id]: id,
      rname:: rname,
      configuration_id:: '${aws_codecommit_trigger.%s.configuration_id}' % rname,
    },
    // aws_codedeploy_app - https://www.terraform.io/docs/providers/aws/r/codedeploy_app.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/codedeploy_app.html#name.
    // @param compute_platform (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_app.html#compute_platform.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_app.html#id.
    // @param unique_id (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_app.html#unique_id.
    aws_codedeploy_app(rname, name, compute_platform=null, id=null, unique_id=null):: {
      name: name,
      [if compute_platform != null then compute_platform]: compute_platform,
      [if id != null then id]: id,
      [if unique_id != null then unique_id]: unique_id,
      rname:: rname,
    },
    // aws_config_organization_custom_rule - https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param lambda_function_arn (required) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#lambda_function_arn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#name.
    // @param trigger_types (required) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#trigger_types.
    // @param resource_types_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#resource_types_scope.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#description.
    // @param excluded_accounts (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#excluded_accounts.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#id.
    // @param input_parameters (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#input_parameters.
    // @param maximum_execution_frequency (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#maximum_execution_frequency.
    // @param resource_id_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#resource_id_scope.
    // @param tag_key_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#tag_key_scope.
    // @param tag_value_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#tag_value_scope.
    aws_config_organization_custom_rule(rname, lambda_function_arn, name, trigger_types, resource_types_scope=null, description=null, excluded_accounts=null, id=null, input_parameters=null, maximum_execution_frequency=null, resource_id_scope=null, tag_key_scope=null, tag_value_scope=null):: {
      lambda_function_arn: lambda_function_arn,
      name: name,
      trigger_types: trigger_types,
      [if resource_types_scope != null then resource_types_scope]: resource_types_scope,
      [if description != null then description]: description,
      [if excluded_accounts != null then excluded_accounts]: excluded_accounts,
      [if id != null then id]: id,
      [if input_parameters != null then input_parameters]: input_parameters,
      [if maximum_execution_frequency != null then maximum_execution_frequency]: maximum_execution_frequency,
      [if resource_id_scope != null then resource_id_scope]: resource_id_scope,
      [if tag_key_scope != null then tag_key_scope]: tag_key_scope,
      [if tag_value_scope != null then tag_value_scope]: tag_value_scope,
      rname:: rname,
      arn:: '${aws_config_organization_custom_rule.%s.arn}' % rname,
    },
    // aws_directory_service_conditional_forwarder - https://www.terraform.io/docs/providers/aws/r/directory_service_conditional_forwarder.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param remote_domain_name (required) https://www.terraform.io/docs/providers/aws/r/directory_service_conditional_forwarder.html#remote_domain_name.
    // @param directory_id (required) https://www.terraform.io/docs/providers/aws/r/directory_service_conditional_forwarder.html#directory_id.
    // @param dns_ips (required) https://www.terraform.io/docs/providers/aws/r/directory_service_conditional_forwarder.html#dns_ips.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_conditional_forwarder.html#id.
    aws_directory_service_conditional_forwarder(rname, remote_domain_name, directory_id, dns_ips, id=null):: {
      remote_domain_name: remote_domain_name,
      directory_id: directory_id,
      dns_ips: dns_ips,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_inspector_resource_group - https://www.terraform.io/docs/providers/aws/r/inspector_resource_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param tags (required) https://www.terraform.io/docs/providers/aws/r/inspector_resource_group.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/inspector_resource_group.html#id.
    aws_inspector_resource_group(rname, tags, id=null):: {
      tags: tags,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_inspector_resource_group.%s.arn}' % rname,
    },
    // aws_vpn_gateway_route_propagation - https://www.terraform.io/docs/providers/aws/r/vpn_gateway_route_propagation.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param route_table_id (required) https://www.terraform.io/docs/providers/aws/r/vpn_gateway_route_propagation.html#route_table_id.
    // @param vpn_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/vpn_gateway_route_propagation.html#vpn_gateway_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway_route_propagation.html#id.
    aws_vpn_gateway_route_propagation(rname, route_table_id, vpn_gateway_id, id=null):: {
      route_table_id: route_table_id,
      vpn_gateway_id: vpn_gateway_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_api_gateway_integration_response - https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param status_code (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#status_code.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#rest_api_id.
    // @param http_method (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#http_method.
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#resource_id.
    // @param response_parameters_in_json (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#response_parameters_in_json.
    // @param response_templates (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#response_templates.
    // @param selection_pattern (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#selection_pattern.
    // @param response_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#response_parameters.
    // @param content_handling (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#content_handling.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#id.
    aws_api_gateway_integration_response(rname, status_code, rest_api_id, http_method, resource_id, response_parameters_in_json=null, response_templates=null, selection_pattern=null, response_parameters=null, content_handling=null, id=null):: {
      status_code: status_code,
      rest_api_id: rest_api_id,
      http_method: http_method,
      resource_id: resource_id,
      [if response_parameters_in_json != null then response_parameters_in_json]: response_parameters_in_json,
      [if response_templates != null then response_templates]: response_templates,
      [if selection_pattern != null then selection_pattern]: selection_pattern,
      [if response_parameters != null then response_parameters]: response_parameters,
      [if content_handling != null then content_handling]: content_handling,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_s3_bucket_notification - https://www.terraform.io/docs/providers/aws/r/s3_bucket_notification.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_notification.html#bucket.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_notification.html#id.
    aws_s3_bucket_notification(rname, bucket, id=null):: {
      bucket: bucket,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_cognito_user_pool_domain - https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_domain.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param user_pool_id (required) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_domain.html#user_pool_id.
    // @param domain (required) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_domain.html#domain.
    // @param certificate_arn (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_domain.html#certificate_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_domain.html#id.
    aws_cognito_user_pool_domain(rname, user_pool_id, domain, certificate_arn=null, id=null):: {
      user_pool_id: user_pool_id,
      domain: domain,
      [if certificate_arn != null then certificate_arn]: certificate_arn,
      [if id != null then id]: id,
      rname:: rname,
      s3_bucket:: '${aws_cognito_user_pool_domain.%s.s3_bucket}' % rname,
      version:: '${aws_cognito_user_pool_domain.%s.version}' % rname,
      aws_account_id:: '${aws_cognito_user_pool_domain.%s.aws_account_id}' % rname,
      cloudfront_distribution_arn:: '${aws_cognito_user_pool_domain.%s.cloudfront_distribution_arn}' % rname,
    },
    // aws_neptune_cluster_snapshot - https://www.terraform.io/docs/providers/aws/r/neptune_cluster_snapshot.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param db_cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_snapshot.html#db_cluster_identifier.
    // @param db_cluster_snapshot_identifier (required) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_snapshot.html#db_cluster_snapshot_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_snapshot.html#id.
    aws_neptune_cluster_snapshot(rname, db_cluster_identifier, db_cluster_snapshot_identifier, id=null):: {
      db_cluster_identifier: db_cluster_identifier,
      db_cluster_snapshot_identifier: db_cluster_snapshot_identifier,
      [if id != null then id]: id,
      rname:: rname,
      license_model:: '${aws_neptune_cluster_snapshot.%s.license_model}' % rname,
      status:: '${aws_neptune_cluster_snapshot.%s.status}' % rname,
      availability_zones:: '${aws_neptune_cluster_snapshot.%s.availability_zones}' % rname,
      db_cluster_snapshot_arn:: '${aws_neptune_cluster_snapshot.%s.db_cluster_snapshot_arn}' % rname,
      port:: '${aws_neptune_cluster_snapshot.%s.port}' % rname,
      vpc_id:: '${aws_neptune_cluster_snapshot.%s.vpc_id}' % rname,
      allocated_storage:: '${aws_neptune_cluster_snapshot.%s.allocated_storage}' % rname,
      kms_key_id:: '${aws_neptune_cluster_snapshot.%s.kms_key_id}' % rname,
      snapshot_type:: '${aws_neptune_cluster_snapshot.%s.snapshot_type}' % rname,
      source_db_cluster_snapshot_arn:: '${aws_neptune_cluster_snapshot.%s.source_db_cluster_snapshot_arn}' % rname,
      storage_encrypted:: '${aws_neptune_cluster_snapshot.%s.storage_encrypted}' % rname,
      engine:: '${aws_neptune_cluster_snapshot.%s.engine}' % rname,
      engine_version:: '${aws_neptune_cluster_snapshot.%s.engine_version}' % rname,
    },
    // aws_network_interface_sg_attachment - https://www.terraform.io/docs/providers/aws/r/network_interface_sg_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param network_interface_id (required) https://www.terraform.io/docs/providers/aws/r/network_interface_sg_attachment.html#network_interface_id.
    // @param security_group_id (required) https://www.terraform.io/docs/providers/aws/r/network_interface_sg_attachment.html#security_group_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/network_interface_sg_attachment.html#id.
    aws_network_interface_sg_attachment(rname, network_interface_id, security_group_id, id=null):: {
      network_interface_id: network_interface_id,
      security_group_id: security_group_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_kms_external_key - https://www.terraform.io/docs/providers/aws/r/kms_external_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param deletion_window_in_days (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#deletion_window_in_days.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#id.
    // @param key_material_base64 (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#key_material_base64.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#tags.
    // @param valid_to (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#valid_to.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#policy.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#description.
    aws_kms_external_key(rname, deletion_window_in_days=null, enabled=null, id=null, key_material_base64=null, tags=null, valid_to=null, policy=null, description=null):: {
      [if deletion_window_in_days != null then deletion_window_in_days]: deletion_window_in_days,
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      [if key_material_base64 != null then key_material_base64]: key_material_base64,
      [if tags != null then tags]: tags,
      [if valid_to != null then valid_to]: valid_to,
      [if policy != null then policy]: policy,
      [if description != null then description]: description,
      rname:: rname,
      arn:: '${aws_kms_external_key.%s.arn}' % rname,
      expiration_model:: '${aws_kms_external_key.%s.expiration_model}' % rname,
      key_state:: '${aws_kms_external_key.%s.key_state}' % rname,
      key_usage:: '${aws_kms_external_key.%s.key_usage}' % rname,
    },
    // aws_dx_connection - https://www.terraform.io/docs/providers/aws/r/dx_connection.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param location (required) https://www.terraform.io/docs/providers/aws/r/dx_connection.html#location.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_connection.html#name.
    // @param bandwidth (required) https://www.terraform.io/docs/providers/aws/r/dx_connection.html#bandwidth.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_connection.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_connection.html#tags.
    aws_dx_connection(rname, location, name, bandwidth, id=null, tags=null):: {
      location: location,
      name: name,
      bandwidth: bandwidth,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_dx_connection.%s.arn}' % rname,
      aws_device:: '${aws_dx_connection.%s.aws_device}' % rname,
      jumbo_frame_capable:: '${aws_dx_connection.%s.jumbo_frame_capable}' % rname,
      has_logical_redundancy:: '${aws_dx_connection.%s.has_logical_redundancy}' % rname,
    },
    // aws_glue_security_configuration - https://www.terraform.io/docs/providers/aws/r/glue_security_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_security_configuration.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_security_configuration.html#id.
    aws_glue_security_configuration(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_kinesis_firehose_delivery_stream - https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param destination (required) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#destination.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#name.
    // @param destination_id (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#destination_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#tags.
    // @param version_id (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#version_id.
    // @param arn (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#arn.
    aws_kinesis_firehose_delivery_stream(rname, destination, name, destination_id=null, id=null, tags=null, version_id=null, arn=null):: {
      destination: destination,
      name: name,
      [if destination_id != null then destination_id]: destination_id,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if version_id != null then version_id]: version_id,
      [if arn != null then arn]: arn,
      rname:: rname,
    },
    // aws_secretsmanager_secret_version - https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret_version.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param secret_id (required) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret_version.html#secret_id.
    // @param version_stages (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret_version.html#version_stages.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret_version.html#id.
    // @param secret_binary (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret_version.html#secret_binary.
    // @param secret_string (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret_version.html#secret_string.
    aws_secretsmanager_secret_version(rname, secret_id, version_stages=null, id=null, secret_binary=null, secret_string=null):: {
      secret_id: secret_id,
      [if version_stages != null then version_stages]: version_stages,
      [if id != null then id]: id,
      [if secret_binary != null then secret_binary]: secret_binary,
      [if secret_string != null then secret_string]: secret_string,
      rname:: rname,
      arn:: '${aws_secretsmanager_secret_version.%s.arn}' % rname,
      version_id:: '${aws_secretsmanager_secret_version.%s.version_id}' % rname,
    },
    // aws_waf_xss_match_set - https://www.terraform.io/docs/providers/aws/r/waf_xss_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_xss_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_xss_match_set.html#id.
    aws_waf_xss_match_set(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_wafregional_sql_injection_match_set - https://www.terraform.io/docs/providers/aws/r/wafregional_sql_injection_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_sql_injection_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_sql_injection_match_set.html#id.
    aws_wafregional_sql_injection_match_set(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_cloudfront_distribution - https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param enabled (required) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#enabled.
    // @param comment (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#comment.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#id.
    // @param is_ipv6_enabled (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#is_ipv6_enabled.
    // @param price_class (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#price_class.
    // @param aliases (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#aliases.
    // @param retain_on_delete (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#retain_on_delete.
    // @param default_root_object (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#default_root_object.
    // @param http_version (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#http_version.
    // @param web_acl_id (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#web_acl_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#tags.
    // @param wait_for_deployment (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#wait_for_deployment.
    aws_cloudfront_distribution(rname, enabled, comment=null, id=null, is_ipv6_enabled=null, price_class=null, aliases=null, retain_on_delete=null, default_root_object=null, http_version=null, web_acl_id=null, tags=null, wait_for_deployment=null):: {
      enabled: enabled,
      [if comment != null then comment]: comment,
      [if id != null then id]: id,
      [if is_ipv6_enabled != null then is_ipv6_enabled]: is_ipv6_enabled,
      [if price_class != null then price_class]: price_class,
      [if aliases != null then aliases]: aliases,
      [if retain_on_delete != null then retain_on_delete]: retain_on_delete,
      [if default_root_object != null then default_root_object]: default_root_object,
      [if http_version != null then http_version]: http_version,
      [if web_acl_id != null then web_acl_id]: web_acl_id,
      [if tags != null then tags]: tags,
      [if wait_for_deployment != null then wait_for_deployment]: wait_for_deployment,
      rname:: rname,
      etag:: '${aws_cloudfront_distribution.%s.etag}' % rname,
      in_progress_validation_batches:: '${aws_cloudfront_distribution.%s.in_progress_validation_batches}' % rname,
      status:: '${aws_cloudfront_distribution.%s.status}' % rname,
      arn:: '${aws_cloudfront_distribution.%s.arn}' % rname,
      caller_reference:: '${aws_cloudfront_distribution.%s.caller_reference}' % rname,
      hosted_zone_id:: '${aws_cloudfront_distribution.%s.hosted_zone_id}' % rname,
      last_modified_time:: '${aws_cloudfront_distribution.%s.last_modified_time}' % rname,
      active_trusted_signers:: '${aws_cloudfront_distribution.%s.active_trusted_signers}' % rname,
      domain_name:: '${aws_cloudfront_distribution.%s.domain_name}' % rname,
    },
    // aws_dx_hosted_public_virtual_interface_accepter - https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface_accepter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param virtual_interface_id (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface_accepter.html#virtual_interface_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface_accepter.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface_accepter.html#tags.
    aws_dx_hosted_public_virtual_interface_accepter(rname, virtual_interface_id, id=null, tags=null):: {
      virtual_interface_id: virtual_interface_id,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      arn:: '${aws_dx_hosted_public_virtual_interface_accepter.%s.arn}' % rname,
    },
    // aws_glue_crawler - https://www.terraform.io/docs/providers/aws/r/glue_crawler.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param role (required) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#role.
    // @param database_name (required) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#database_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#description.
    // @param schedule (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#schedule.
    // @param security_configuration (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#security_configuration.
    // @param classifiers (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#classifiers.
    // @param configuration (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#configuration.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#id.
    // @param table_prefix (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#table_prefix.
    aws_glue_crawler(rname, role, database_name, name, description=null, schedule=null, security_configuration=null, classifiers=null, configuration=null, id=null, table_prefix=null):: {
      role: role,
      database_name: database_name,
      name: name,
      [if description != null then description]: description,
      [if schedule != null then schedule]: schedule,
      [if security_configuration != null then security_configuration]: security_configuration,
      [if classifiers != null then classifiers]: classifiers,
      [if configuration != null then configuration]: configuration,
      [if id != null then id]: id,
      [if table_prefix != null then table_prefix]: table_prefix,
      rname:: rname,
      arn:: '${aws_glue_crawler.%s.arn}' % rname,
    },
    // aws_docdb_cluster_snapshot - https://www.terraform.io/docs/providers/aws/r/docdb_cluster_snapshot.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param db_cluster_snapshot_identifier (required) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_snapshot.html#db_cluster_snapshot_identifier.
    // @param db_cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_snapshot.html#db_cluster_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_snapshot.html#id.
    aws_docdb_cluster_snapshot(rname, db_cluster_snapshot_identifier, db_cluster_identifier, id=null):: {
      db_cluster_snapshot_identifier: db_cluster_snapshot_identifier,
      db_cluster_identifier: db_cluster_identifier,
      [if id != null then id]: id,
      rname:: rname,
      engine_version:: '${aws_docdb_cluster_snapshot.%s.engine_version}' % rname,
      kms_key_id:: '${aws_docdb_cluster_snapshot.%s.kms_key_id}' % rname,
      snapshot_type:: '${aws_docdb_cluster_snapshot.%s.snapshot_type}' % rname,
      source_db_cluster_snapshot_arn:: '${aws_docdb_cluster_snapshot.%s.source_db_cluster_snapshot_arn}' % rname,
      storage_encrypted:: '${aws_docdb_cluster_snapshot.%s.storage_encrypted}' % rname,
      vpc_id:: '${aws_docdb_cluster_snapshot.%s.vpc_id}' % rname,
      engine:: '${aws_docdb_cluster_snapshot.%s.engine}' % rname,
      db_cluster_snapshot_arn:: '${aws_docdb_cluster_snapshot.%s.db_cluster_snapshot_arn}' % rname,
      availability_zones:: '${aws_docdb_cluster_snapshot.%s.availability_zones}' % rname,
      port:: '${aws_docdb_cluster_snapshot.%s.port}' % rname,
      status:: '${aws_docdb_cluster_snapshot.%s.status}' % rname,
    },
    // aws_waf_byte_match_set - https://www.terraform.io/docs/providers/aws/r/waf_byte_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_byte_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_byte_match_set.html#id.
    aws_waf_byte_match_set(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_efs_file_system - https://www.terraform.io/docs/providers/aws/r/efs_file_system.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param creation_token (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#creation_token.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#kms_key_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#tags.
    // @param throughput_mode (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#throughput_mode.
    // @param encrypted (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#encrypted.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#id.
    // @param performance_mode (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#performance_mode.
    // @param provisioned_throughput_in_mibps (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#provisioned_throughput_in_mibps.
    // @param reference_name (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#reference_name.
    aws_efs_file_system(rname, creation_token=null, kms_key_id=null, tags=null, throughput_mode=null, encrypted=null, id=null, performance_mode=null, provisioned_throughput_in_mibps=null, reference_name=null):: {
      [if creation_token != null then creation_token]: creation_token,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if tags != null then tags]: tags,
      [if throughput_mode != null then throughput_mode]: throughput_mode,
      [if encrypted != null then encrypted]: encrypted,
      [if id != null then id]: id,
      [if performance_mode != null then performance_mode]: performance_mode,
      [if provisioned_throughput_in_mibps != null then provisioned_throughput_in_mibps]: provisioned_throughput_in_mibps,
      [if reference_name != null then reference_name]: reference_name,
      rname:: rname,
      arn:: '${aws_efs_file_system.%s.arn}' % rname,
      dns_name:: '${aws_efs_file_system.%s.dns_name}' % rname,
    },
    // aws_docdb_cluster_instance - https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_class (required) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#instance_class.
    // @param cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#cluster_identifier.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#preferred_maintenance_window.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#auto_minor_version_upgrade.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#engine.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#id.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#apply_immediately.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#tags.
    // @param identifier (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#identifier.
    // @param promotion_tier (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#promotion_tier.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#availability_zone.
    // @param identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#identifier_prefix.
    aws_docdb_cluster_instance(rname, instance_class, cluster_identifier, preferred_maintenance_window=null, auto_minor_version_upgrade=null, engine=null, id=null, apply_immediately=null, tags=null, identifier=null, promotion_tier=null, availability_zone=null, identifier_prefix=null):: {
      instance_class: instance_class,
      cluster_identifier: cluster_identifier,
      [if preferred_maintenance_window != null then preferred_maintenance_window]: preferred_maintenance_window,
      [if auto_minor_version_upgrade != null then auto_minor_version_upgrade]: auto_minor_version_upgrade,
      [if engine != null then engine]: engine,
      [if id != null then id]: id,
      [if apply_immediately != null then apply_immediately]: apply_immediately,
      [if tags != null then tags]: tags,
      [if identifier != null then identifier]: identifier,
      [if promotion_tier != null then promotion_tier]: promotion_tier,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if identifier_prefix != null then identifier_prefix]: identifier_prefix,
      rname:: rname,
      port:: '${aws_docdb_cluster_instance.%s.port}' % rname,
      storage_encrypted:: '${aws_docdb_cluster_instance.%s.storage_encrypted}' % rname,
      writer:: '${aws_docdb_cluster_instance.%s.writer}' % rname,
      engine_version:: '${aws_docdb_cluster_instance.%s.engine_version}' % rname,
      db_subnet_group_name:: '${aws_docdb_cluster_instance.%s.db_subnet_group_name}' % rname,
      dbi_resource_id:: '${aws_docdb_cluster_instance.%s.dbi_resource_id}' % rname,
      endpoint:: '${aws_docdb_cluster_instance.%s.endpoint}' % rname,
      arn:: '${aws_docdb_cluster_instance.%s.arn}' % rname,
      kms_key_id:: '${aws_docdb_cluster_instance.%s.kms_key_id}' % rname,
      preferred_backup_window:: '${aws_docdb_cluster_instance.%s.preferred_backup_window}' % rname,
      publicly_accessible:: '${aws_docdb_cluster_instance.%s.publicly_accessible}' % rname,
    },
    // aws_appsync_function - https://www.terraform.io/docs/providers/aws/r/appsync_function.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param api_id (required) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#api_id.
    // @param data_source (required) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#data_source.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#name.
    // @param request_mapping_template (required) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#request_mapping_template.
    // @param response_mapping_template (required) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#response_mapping_template.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#description.
    // @param function_version (optional) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#function_version.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#id.
    aws_appsync_function(rname, api_id, data_source, name, request_mapping_template, response_mapping_template, description=null, function_version=null, id=null):: {
      api_id: api_id,
      data_source: data_source,
      name: name,
      request_mapping_template: request_mapping_template,
      response_mapping_template: response_mapping_template,
      [if description != null then description]: description,
      [if function_version != null then function_version]: function_version,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_appsync_function.%s.arn}' % rname,
      function_id:: '${aws_appsync_function.%s.function_id}' % rname,
    },
    // aws_dx_connection_association - https://www.terraform.io/docs/providers/aws/r/dx_connection_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param lag_id (required) https://www.terraform.io/docs/providers/aws/r/dx_connection_association.html#lag_id.
    // @param connection_id (required) https://www.terraform.io/docs/providers/aws/r/dx_connection_association.html#connection_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_connection_association.html#id.
    aws_dx_connection_association(rname, lag_id, connection_id, id=null):: {
      lag_id: lag_id,
      connection_id: connection_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_guardduty_invite_accepter - https://www.terraform.io/docs/providers/aws/r/guardduty_invite_accepter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param detector_id (required) https://www.terraform.io/docs/providers/aws/r/guardduty_invite_accepter.html#detector_id.
    // @param master_account_id (required) https://www.terraform.io/docs/providers/aws/r/guardduty_invite_accepter.html#master_account_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_invite_accepter.html#id.
    aws_guardduty_invite_accepter(rname, detector_id, master_account_id, id=null):: {
      detector_id: detector_id,
      master_account_id: master_account_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_kinesis_stream - https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#name.
    // @param shard_count (required) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#shard_count.
    // @param arn (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#arn.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#kms_key_id.
    // @param retention_period (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#retention_period.
    // @param shard_level_metrics (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#shard_level_metrics.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#tags.
    // @param encryption_type (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#encryption_type.
    // @param enforce_consumer_deletion (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#enforce_consumer_deletion.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#id.
    aws_kinesis_stream(rname, name, shard_count, arn=null, kms_key_id=null, retention_period=null, shard_level_metrics=null, tags=null, encryption_type=null, enforce_consumer_deletion=null, id=null):: {
      name: name,
      shard_count: shard_count,
      [if arn != null then arn]: arn,
      [if kms_key_id != null then kms_key_id]: kms_key_id,
      [if retention_period != null then retention_period]: retention_period,
      [if shard_level_metrics != null then shard_level_metrics]: shard_level_metrics,
      [if tags != null then tags]: tags,
      [if encryption_type != null then encryption_type]: encryption_type,
      [if enforce_consumer_deletion != null then enforce_consumer_deletion]: enforce_consumer_deletion,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_pinpoint_apns_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#application_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#id.
    // @param team_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#team_id.
    // @param bundle_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#bundle_id.
    // @param default_authentication_method (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#default_authentication_method.
    // @param token_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#token_key.
    // @param token_key_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#token_key_id.
    // @param certificate (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#certificate.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#enabled.
    // @param private_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#private_key.
    aws_pinpoint_apns_channel(rname, application_id, id=null, team_id=null, bundle_id=null, default_authentication_method=null, token_key=null, token_key_id=null, certificate=null, enabled=null, private_key=null):: {
      application_id: application_id,
      [if id != null then id]: id,
      [if team_id != null then team_id]: team_id,
      [if bundle_id != null then bundle_id]: bundle_id,
      [if default_authentication_method != null then default_authentication_method]: default_authentication_method,
      [if token_key != null then token_key]: token_key,
      [if token_key_id != null then token_key_id]: token_key_id,
      [if certificate != null then certificate]: certificate,
      [if enabled != null then enabled]: enabled,
      [if private_key != null then private_key]: private_key,
      rname:: rname,
    },
    // aws_ses_identity_policy - https://www.terraform.io/docs/providers/aws/r/ses_identity_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param identity (required) https://www.terraform.io/docs/providers/aws/r/ses_identity_policy.html#identity.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ses_identity_policy.html#name.
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/ses_identity_policy.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_identity_policy.html#id.
    aws_ses_identity_policy(rname, identity, name, policy, id=null):: {
      identity: identity,
      name: name,
      policy: policy,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_alb_listener - https://www.terraform.io/docs/providers/aws/r/alb_listener.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param load_balancer_arn (required) https://www.terraform.io/docs/providers/aws/r/alb_listener.html#load_balancer_arn.
    // @param port (required) https://www.terraform.io/docs/providers/aws/r/alb_listener.html#port.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener.html#id.
    // @param protocol (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener.html#protocol.
    // @param ssl_policy (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener.html#ssl_policy.
    // @param certificate_arn (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener.html#certificate_arn.
    aws_alb_listener(rname, load_balancer_arn, port, id=null, protocol=null, ssl_policy=null, certificate_arn=null):: {
      load_balancer_arn: load_balancer_arn,
      port: port,
      [if id != null then id]: id,
      [if protocol != null then protocol]: protocol,
      [if ssl_policy != null then ssl_policy]: ssl_policy,
      [if certificate_arn != null then certificate_arn]: certificate_arn,
      rname:: rname,
      arn:: '${aws_alb_listener.%s.arn}' % rname,
    },
    // aws_ec2_transit_gateway - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#id.
    // @param amazon_side_asn (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#amazon_side_asn.
    // @param auto_accept_shared_attachments (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#auto_accept_shared_attachments.
    // @param default_route_table_association (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#default_route_table_association.
    // @param default_route_table_propagation (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#default_route_table_propagation.
    // @param dns_support (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#dns_support.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#tags.
    // @param vpn_ecmp_support (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#vpn_ecmp_support.
    aws_ec2_transit_gateway(rname, description=null, id=null, amazon_side_asn=null, auto_accept_shared_attachments=null, default_route_table_association=null, default_route_table_propagation=null, dns_support=null, tags=null, vpn_ecmp_support=null):: {
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if amazon_side_asn != null then amazon_side_asn]: amazon_side_asn,
      [if auto_accept_shared_attachments != null then auto_accept_shared_attachments]: auto_accept_shared_attachments,
      [if default_route_table_association != null then default_route_table_association]: default_route_table_association,
      [if default_route_table_propagation != null then default_route_table_propagation]: default_route_table_propagation,
      [if dns_support != null then dns_support]: dns_support,
      [if tags != null then tags]: tags,
      [if vpn_ecmp_support != null then vpn_ecmp_support]: vpn_ecmp_support,
      rname:: rname,
      arn:: '${aws_ec2_transit_gateway.%s.arn}' % rname,
      owner_id:: '${aws_ec2_transit_gateway.%s.owner_id}' % rname,
      propagation_default_route_table_id:: '${aws_ec2_transit_gateway.%s.propagation_default_route_table_id}' % rname,
      association_default_route_table_id:: '${aws_ec2_transit_gateway.%s.association_default_route_table_id}' % rname,
    },
    // aws_iam_account_alias - https://www.terraform.io/docs/providers/aws/r/iam_account_alias.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param account_alias (required) https://www.terraform.io/docs/providers/aws/r/iam_account_alias.html#account_alias.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_alias.html#id.
    aws_iam_account_alias(rname, account_alias, id=null):: {
      account_alias: account_alias,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_instance - https://www.terraform.io/docs/providers/aws/r/instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param ami (required) https://www.terraform.io/docs/providers/aws/r/instance.html#ami.
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/instance.html#instance_type.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#ebs_optimized.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#id.
    // @param instance_initiated_shutdown_behavior (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#instance_initiated_shutdown_behavior.
    // @param user_data (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#user_data.
    // @param monitoring (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#monitoring.
    // @param placement_group (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#placement_group.
    // @param user_data_base64 (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#user_data_base64.
    // @param cpu_core_count (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#cpu_core_count.
    // @param cpu_threads_per_core (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#cpu_threads_per_core.
    // @param disable_api_termination (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#disable_api_termination.
    // @param get_password_data (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#get_password_data.
    // @param iam_instance_profile (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#iam_instance_profile.
    // @param ipv6_addresses (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#ipv6_addresses.
    // @param host_id (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#host_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#tags.
    // @param tenancy (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#tenancy.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#availability_zone.
    // @param ipv6_address_count (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#ipv6_address_count.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#security_groups.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#subnet_id.
    // @param key_name (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#key_name.
    // @param source_dest_check (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#source_dest_check.
    // @param associate_public_ip_address (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#associate_public_ip_address.
    // @param private_ip (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#private_ip.
    // @param volume_tags (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#volume_tags.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#vpc_security_group_ids.
    aws_instance(rname, ami, instance_type, ebs_optimized=null, id=null, instance_initiated_shutdown_behavior=null, user_data=null, monitoring=null, placement_group=null, user_data_base64=null, cpu_core_count=null, cpu_threads_per_core=null, disable_api_termination=null, get_password_data=null, iam_instance_profile=null, ipv6_addresses=null, host_id=null, tags=null, tenancy=null, availability_zone=null, ipv6_address_count=null, security_groups=null, subnet_id=null, key_name=null, source_dest_check=null, associate_public_ip_address=null, private_ip=null, volume_tags=null, vpc_security_group_ids=null):: {
      ami: ami,
      instance_type: instance_type,
      [if ebs_optimized != null then ebs_optimized]: ebs_optimized,
      [if id != null then id]: id,
      [if instance_initiated_shutdown_behavior != null then instance_initiated_shutdown_behavior]: instance_initiated_shutdown_behavior,
      [if user_data != null then user_data]: user_data,
      [if monitoring != null then monitoring]: monitoring,
      [if placement_group != null then placement_group]: placement_group,
      [if user_data_base64 != null then user_data_base64]: user_data_base64,
      [if cpu_core_count != null then cpu_core_count]: cpu_core_count,
      [if cpu_threads_per_core != null then cpu_threads_per_core]: cpu_threads_per_core,
      [if disable_api_termination != null then disable_api_termination]: disable_api_termination,
      [if get_password_data != null then get_password_data]: get_password_data,
      [if iam_instance_profile != null then iam_instance_profile]: iam_instance_profile,
      [if ipv6_addresses != null then ipv6_addresses]: ipv6_addresses,
      [if host_id != null then host_id]: host_id,
      [if tags != null then tags]: tags,
      [if tenancy != null then tenancy]: tenancy,
      [if availability_zone != null then availability_zone]: availability_zone,
      [if ipv6_address_count != null then ipv6_address_count]: ipv6_address_count,
      [if security_groups != null then security_groups]: security_groups,
      [if subnet_id != null then subnet_id]: subnet_id,
      [if key_name != null then key_name]: key_name,
      [if source_dest_check != null then source_dest_check]: source_dest_check,
      [if associate_public_ip_address != null then associate_public_ip_address]: associate_public_ip_address,
      [if private_ip != null then private_ip]: private_ip,
      [if volume_tags != null then volume_tags]: volume_tags,
      [if vpc_security_group_ids != null then vpc_security_group_ids]: vpc_security_group_ids,
      rname:: rname,
      instance_state:: '${aws_instance.%s.instance_state}' % rname,
      arn:: '${aws_instance.%s.arn}' % rname,
      primary_network_interface_id:: '${aws_instance.%s.primary_network_interface_id}' % rname,
      public_ip:: '${aws_instance.%s.public_ip}' % rname,
      password_data:: '${aws_instance.%s.password_data}' % rname,
      private_dns:: '${aws_instance.%s.private_dns}' % rname,
      network_interface_id:: '${aws_instance.%s.network_interface_id}' % rname,
      public_dns:: '${aws_instance.%s.public_dns}' % rname,
    },
    // aws_opsworks_ganglia_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param password (required) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#password.
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#stack_id.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#system_packages.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#auto_assign_elastic_ips.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_deploy_recipes.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_json.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_security_group_ids.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_shutdown_recipes.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#auto_healing.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_instance_profile_arn.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#elastic_load_balancer.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#id.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#install_updates_on_boot.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#instance_shutdown_timeout.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#use_ebs_optimized_instances.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_setup_recipes.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_undeploy_recipes.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#drain_elb_on_shutdown.
    // @param url (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#url.
    // @param username (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#username.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#auto_assign_public_ips.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_configure_recipes.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#name.
    aws_opsworks_ganglia_layer(rname, password, stack_id, system_packages=null, auto_assign_elastic_ips=null, custom_deploy_recipes=null, custom_json=null, custom_security_group_ids=null, custom_shutdown_recipes=null, auto_healing=null, custom_instance_profile_arn=null, elastic_load_balancer=null, id=null, install_updates_on_boot=null, instance_shutdown_timeout=null, use_ebs_optimized_instances=null, custom_setup_recipes=null, custom_undeploy_recipes=null, drain_elb_on_shutdown=null, url=null, username=null, auto_assign_public_ips=null, custom_configure_recipes=null, name=null):: {
      password: password,
      stack_id: stack_id,
      [if system_packages != null then system_packages]: system_packages,
      [if auto_assign_elastic_ips != null then auto_assign_elastic_ips]: auto_assign_elastic_ips,
      [if custom_deploy_recipes != null then custom_deploy_recipes]: custom_deploy_recipes,
      [if custom_json != null then custom_json]: custom_json,
      [if custom_security_group_ids != null then custom_security_group_ids]: custom_security_group_ids,
      [if custom_shutdown_recipes != null then custom_shutdown_recipes]: custom_shutdown_recipes,
      [if auto_healing != null then auto_healing]: auto_healing,
      [if custom_instance_profile_arn != null then custom_instance_profile_arn]: custom_instance_profile_arn,
      [if elastic_load_balancer != null then elastic_load_balancer]: elastic_load_balancer,
      [if id != null then id]: id,
      [if install_updates_on_boot != null then install_updates_on_boot]: install_updates_on_boot,
      [if instance_shutdown_timeout != null then instance_shutdown_timeout]: instance_shutdown_timeout,
      [if use_ebs_optimized_instances != null then use_ebs_optimized_instances]: use_ebs_optimized_instances,
      [if custom_setup_recipes != null then custom_setup_recipes]: custom_setup_recipes,
      [if custom_undeploy_recipes != null then custom_undeploy_recipes]: custom_undeploy_recipes,
      [if drain_elb_on_shutdown != null then drain_elb_on_shutdown]: drain_elb_on_shutdown,
      [if url != null then url]: url,
      [if username != null then username]: username,
      [if auto_assign_public_ips != null then auto_assign_public_ips]: auto_assign_public_ips,
      [if custom_configure_recipes != null then custom_configure_recipes]: custom_configure_recipes,
      [if name != null then name]: name,
      rname:: rname,
    },
    // aws_pinpoint_gcm_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_gcm_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param api_key (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_gcm_channel.html#api_key.
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_gcm_channel.html#application_id.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_gcm_channel.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_gcm_channel.html#id.
    aws_pinpoint_gcm_channel(rname, api_key, application_id, enabled=null, id=null):: {
      api_key: api_key,
      application_id: application_id,
      [if enabled != null then enabled]: enabled,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_datasync_location_efs - https://www.terraform.io/docs/providers/aws/r/datasync_location_efs.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param efs_file_system_arn (required) https://www.terraform.io/docs/providers/aws/r/datasync_location_efs.html#efs_file_system_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_efs.html#id.
    // @param subdirectory (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_efs.html#subdirectory.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_efs.html#tags.
    aws_datasync_location_efs(rname, efs_file_system_arn, id=null, subdirectory=null, tags=null):: {
      efs_file_system_arn: efs_file_system_arn,
      [if id != null then id]: id,
      [if subdirectory != null then subdirectory]: subdirectory,
      [if tags != null then tags]: tags,
      rname:: rname,
      uri:: '${aws_datasync_location_efs.%s.uri}' % rname,
      arn:: '${aws_datasync_location_efs.%s.arn}' % rname,
    },
    // aws_cloudformation_stack_set - https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param administration_role_arn (required) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#administration_role_arn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#id.
    // @param template_url (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#template_url.
    // @param capabilities (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#capabilities.
    // @param execution_role_name (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#execution_role_name.
    // @param parameters (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#parameters.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#tags.
    // @param template_body (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#template_body.
    aws_cloudformation_stack_set(rname, administration_role_arn, name, description=null, id=null, template_url=null, capabilities=null, execution_role_name=null, parameters=null, tags=null, template_body=null):: {
      administration_role_arn: administration_role_arn,
      name: name,
      [if description != null then description]: description,
      [if id != null then id]: id,
      [if template_url != null then template_url]: template_url,
      [if capabilities != null then capabilities]: capabilities,
      [if execution_role_name != null then execution_role_name]: execution_role_name,
      [if parameters != null then parameters]: parameters,
      [if tags != null then tags]: tags,
      [if template_body != null then template_body]: template_body,
      rname:: rname,
      stack_set_id:: '${aws_cloudformation_stack_set.%s.stack_set_id}' % rname,
      arn:: '${aws_cloudformation_stack_set.%s.arn}' % rname,
    },
    // aws_codepipeline_webhook - https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param target_action (required) https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html#target_action.
    // @param target_pipeline (required) https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html#target_pipeline.
    // @param authentication (required) https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html#authentication.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html#tags.
    aws_codepipeline_webhook(rname, target_action, target_pipeline, authentication, name, id=null, tags=null):: {
      target_action: target_action,
      target_pipeline: target_pipeline,
      authentication: authentication,
      name: name,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      rname:: rname,
      url:: '${aws_codepipeline_webhook.%s.url}' % rname,
    },
    // aws_ec2_client_vpn_network_association - https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_network_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param client_vpn_endpoint_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_network_association.html#client_vpn_endpoint_id.
    // @param subnet_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_network_association.html#subnet_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_network_association.html#id.
    aws_ec2_client_vpn_network_association(rname, client_vpn_endpoint_id, subnet_id, id=null):: {
      client_vpn_endpoint_id: client_vpn_endpoint_id,
      subnet_id: subnet_id,
      [if id != null then id]: id,
      rname:: rname,
      security_groups:: '${aws_ec2_client_vpn_network_association.%s.security_groups}' % rname,
      status:: '${aws_ec2_client_vpn_network_association.%s.status}' % rname,
      vpc_id:: '${aws_ec2_client_vpn_network_association.%s.vpc_id}' % rname,
    },
    // aws_elasticache_replication_group - https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param replication_group_id (required) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#replication_group_id.
    // @param replication_group_description (required) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#replication_group_description.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#auto_minor_version_upgrade.
    // @param snapshot_arns (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#snapshot_arns.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#engine.
    // @param parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#parameter_group_name.
    // @param snapshot_name (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#snapshot_name.
    // @param subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#subnet_group_name.
    // @param auth_token (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#auth_token.
    // @param automatic_failover_enabled (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#automatic_failover_enabled.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#availability_zones.
    // @param transit_encryption_enabled (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#transit_encryption_enabled.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#port.
    // @param snapshot_window (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#snapshot_window.
    // @param node_type (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#node_type.
    // @param number_cache_clusters (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#number_cache_clusters.
    // @param security_group_names (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#security_group_names.
    // @param snapshot_retention_limit (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#snapshot_retention_limit.
    // @param notification_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#notification_topic_arn.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#security_group_ids.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#engine_version.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#tags.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#apply_immediately.
    // @param at_rest_encryption_enabled (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#at_rest_encryption_enabled.
    // @param maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#maintenance_window.
    aws_elasticache_replication_group(rname, replication_group_id, replication_group_description, auto_minor_version_upgrade=null, snapshot_arns=null, engine=null, parameter_group_name=null, snapshot_name=null, subnet_group_name=null, auth_token=null, automatic_failover_enabled=null, availability_zones=null, transit_encryption_enabled=null, port=null, snapshot_window=null, node_type=null, number_cache_clusters=null, security_group_names=null, snapshot_retention_limit=null, notification_topic_arn=null, security_group_ids=null, engine_version=null, id=null, tags=null, apply_immediately=null, at_rest_encryption_enabled=null, maintenance_window=null):: {
      replication_group_id: replication_group_id,
      replication_group_description: replication_group_description,
      [if auto_minor_version_upgrade != null then auto_minor_version_upgrade]: auto_minor_version_upgrade,
      [if snapshot_arns != null then snapshot_arns]: snapshot_arns,
      [if engine != null then engine]: engine,
      [if parameter_group_name != null then parameter_group_name]: parameter_group_name,
      [if snapshot_name != null then snapshot_name]: snapshot_name,
      [if subnet_group_name != null then subnet_group_name]: subnet_group_name,
      [if auth_token != null then auth_token]: auth_token,
      [if automatic_failover_enabled != null then automatic_failover_enabled]: automatic_failover_enabled,
      [if availability_zones != null then availability_zones]: availability_zones,
      [if transit_encryption_enabled != null then transit_encryption_enabled]: transit_encryption_enabled,
      [if port != null then port]: port,
      [if snapshot_window != null then snapshot_window]: snapshot_window,
      [if node_type != null then node_type]: node_type,
      [if number_cache_clusters != null then number_cache_clusters]: number_cache_clusters,
      [if security_group_names != null then security_group_names]: security_group_names,
      [if snapshot_retention_limit != null then snapshot_retention_limit]: snapshot_retention_limit,
      [if notification_topic_arn != null then notification_topic_arn]: notification_topic_arn,
      [if security_group_ids != null then security_group_ids]: security_group_ids,
      [if engine_version != null then engine_version]: engine_version,
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if apply_immediately != null then apply_immediately]: apply_immediately,
      [if at_rest_encryption_enabled != null then at_rest_encryption_enabled]: at_rest_encryption_enabled,
      [if maintenance_window != null then maintenance_window]: maintenance_window,
      rname:: rname,
      primary_endpoint_address:: '${aws_elasticache_replication_group.%s.primary_endpoint_address}' % rname,
      configuration_endpoint_address:: '${aws_elasticache_replication_group.%s.configuration_endpoint_address}' % rname,
      member_clusters:: '${aws_elasticache_replication_group.%s.member_clusters}' % rname,
    },
    // aws_iot_thing - https://www.terraform.io/docs/providers/aws/r/iot_thing.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iot_thing.html#name.
    // @param attributes (optional) https://www.terraform.io/docs/providers/aws/r/iot_thing.html#attributes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_thing.html#id.
    // @param thing_type_name (optional) https://www.terraform.io/docs/providers/aws/r/iot_thing.html#thing_type_name.
    aws_iot_thing(rname, name, attributes=null, id=null, thing_type_name=null):: {
      name: name,
      [if attributes != null then attributes]: attributes,
      [if id != null then id]: id,
      [if thing_type_name != null then thing_type_name]: thing_type_name,
      rname:: rname,
      default_client_id:: '${aws_iot_thing.%s.default_client_id}' % rname,
      version:: '${aws_iot_thing.%s.version}' % rname,
      arn:: '${aws_iot_thing.%s.arn}' % rname,
    },
    // aws_iot_topic_rule - https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param enabled (required) https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html#enabled.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html#name.
    // @param sql (required) https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html#sql.
    // @param sql_version (required) https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html#sql_version.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html#id.
    aws_iot_topic_rule(rname, enabled, name, sql, sql_version, description=null, id=null):: {
      enabled: enabled,
      name: name,
      sql: sql,
      sql_version: sql_version,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_iot_topic_rule.%s.arn}' % rname,
    },
    // aws_route53_record - https://www.terraform.io/docs/providers/aws/r/route53_record.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/route53_record.html#type.
    // @param zone_id (required) https://www.terraform.io/docs/providers/aws/r/route53_record.html#zone_id.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/route53_record.html#name.
    // @param ttl (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#ttl.
    // @param allow_overwrite (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#allow_overwrite.
    // @param health_check_id (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#health_check_id.
    // @param multivalue_answer_routing_policy (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#multivalue_answer_routing_policy.
    // @param set_identifier (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#set_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#id.
    // @param records (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#records.
    aws_route53_record(rname, type, zone_id, name, ttl=null, allow_overwrite=null, health_check_id=null, multivalue_answer_routing_policy=null, set_identifier=null, id=null, records=null):: {
      type: type,
      zone_id: zone_id,
      name: name,
      [if ttl != null then ttl]: ttl,
      [if allow_overwrite != null then allow_overwrite]: allow_overwrite,
      [if health_check_id != null then health_check_id]: health_check_id,
      [if multivalue_answer_routing_policy != null then multivalue_answer_routing_policy]: multivalue_answer_routing_policy,
      [if set_identifier != null then set_identifier]: set_identifier,
      [if id != null then id]: id,
      [if records != null then records]: records,
      rname:: rname,
      fqdn:: '${aws_route53_record.%s.fqdn}' % rname,
    },
    // aws_appautoscaling_policy - https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#name.
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#resource_id.
    // @param service_namespace (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#service_namespace.
    // @param scalable_dimension (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#scalable_dimension.
    // @param metric_aggregation_type (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#metric_aggregation_type.
    // @param min_adjustment_magnitude (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#min_adjustment_magnitude.
    // @param adjustment_type (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#adjustment_type.
    // @param alarms (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#alarms.
    // @param cooldown (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#cooldown.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#id.
    // @param policy_type (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#policy_type.
    aws_appautoscaling_policy(rname, name, resource_id, service_namespace, scalable_dimension, metric_aggregation_type=null, min_adjustment_magnitude=null, adjustment_type=null, alarms=null, cooldown=null, id=null, policy_type=null):: {
      name: name,
      resource_id: resource_id,
      service_namespace: service_namespace,
      scalable_dimension: scalable_dimension,
      [if metric_aggregation_type != null then metric_aggregation_type]: metric_aggregation_type,
      [if min_adjustment_magnitude != null then min_adjustment_magnitude]: min_adjustment_magnitude,
      [if adjustment_type != null then adjustment_type]: adjustment_type,
      [if alarms != null then alarms]: alarms,
      [if cooldown != null then cooldown]: cooldown,
      [if id != null then id]: id,
      [if policy_type != null then policy_type]: policy_type,
      rname:: rname,
      arn:: '${aws_appautoscaling_policy.%s.arn}' % rname,
    },
    // aws_vpn_connection_route - https://www.terraform.io/docs/providers/aws/r/vpn_connection_route.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param destination_cidr_block (required) https://www.terraform.io/docs/providers/aws/r/vpn_connection_route.html#destination_cidr_block.
    // @param vpn_connection_id (required) https://www.terraform.io/docs/providers/aws/r/vpn_connection_route.html#vpn_connection_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection_route.html#id.
    aws_vpn_connection_route(rname, destination_cidr_block, vpn_connection_id, id=null):: {
      destination_cidr_block: destination_cidr_block,
      vpn_connection_id: vpn_connection_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_iam_user_ssh_key - https://www.terraform.io/docs/providers/aws/r/iam_user_ssh_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param username (required) https://www.terraform.io/docs/providers/aws/r/iam_user_ssh_key.html#username.
    // @param encoding (required) https://www.terraform.io/docs/providers/aws/r/iam_user_ssh_key.html#encoding.
    // @param public_key (required) https://www.terraform.io/docs/providers/aws/r/iam_user_ssh_key.html#public_key.
    // @param status (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_ssh_key.html#status.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_ssh_key.html#id.
    aws_iam_user_ssh_key(rname, username, encoding, public_key, status=null, id=null):: {
      username: username,
      encoding: encoding,
      public_key: public_key,
      [if status != null then status]: status,
      [if id != null then id]: id,
      rname:: rname,
      ssh_public_key_id:: '${aws_iam_user_ssh_key.%s.ssh_public_key_id}' % rname,
      fingerprint:: '${aws_iam_user_ssh_key.%s.fingerprint}' % rname,
    },
    // aws_iot_policy - https://www.terraform.io/docs/providers/aws/r/iot_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iot_policy.html#name.
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/iot_policy.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_policy.html#id.
    aws_iot_policy(rname, name, policy, id=null):: {
      name: name,
      policy: policy,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_iot_policy.%s.arn}' % rname,
      default_version_id:: '${aws_iot_policy.%s.default_version_id}' % rname,
    },
    // aws_organizations_organization - https://www.terraform.io/docs/providers/aws/r/organizations_organization.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param aws_service_access_principals (optional) https://www.terraform.io/docs/providers/aws/r/organizations_organization.html#aws_service_access_principals.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/organizations_organization.html#id.
    // @param enabled_policy_types (optional) https://www.terraform.io/docs/providers/aws/r/organizations_organization.html#enabled_policy_types.
    // @param feature_set (optional) https://www.terraform.io/docs/providers/aws/r/organizations_organization.html#feature_set.
    aws_organizations_organization(rname, aws_service_access_principals=null, id=null, enabled_policy_types=null, feature_set=null):: {
      [if aws_service_access_principals != null then aws_service_access_principals]: aws_service_access_principals,
      [if id != null then id]: id,
      [if enabled_policy_types != null then enabled_policy_types]: enabled_policy_types,
      [if feature_set != null then feature_set]: feature_set,
      rname:: rname,
      roots:: '${aws_organizations_organization.%s.roots}' % rname,
      arn:: '${aws_organizations_organization.%s.arn}' % rname,
      master_account_arn:: '${aws_organizations_organization.%s.master_account_arn}' % rname,
      master_account_id:: '${aws_organizations_organization.%s.master_account_id}' % rname,
      non_master_accounts:: '${aws_organizations_organization.%s.non_master_accounts}' % rname,
      accounts:: '${aws_organizations_organization.%s.accounts}' % rname,
      master_account_email:: '${aws_organizations_organization.%s.master_account_email}' % rname,
    },
    // aws_route - https://www.terraform.io/docs/providers/aws/r/route.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param route_table_id (required) https://www.terraform.io/docs/providers/aws/r/route.html#route_table_id.
    // @param egress_only_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#egress_only_gateway_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#id.
    // @param transit_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#transit_gateway_id.
    // @param destination_ipv6_cidr_block (optional) https://www.terraform.io/docs/providers/aws/r/route.html#destination_ipv6_cidr_block.
    // @param gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#gateway_id.
    // @param instance_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#instance_id.
    // @param nat_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#nat_gateway_id.
    // @param destination_cidr_block (optional) https://www.terraform.io/docs/providers/aws/r/route.html#destination_cidr_block.
    // @param network_interface_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#network_interface_id.
    // @param vpc_peering_connection_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#vpc_peering_connection_id.
    aws_route(rname, route_table_id, egress_only_gateway_id=null, id=null, transit_gateway_id=null, destination_ipv6_cidr_block=null, gateway_id=null, instance_id=null, nat_gateway_id=null, destination_cidr_block=null, network_interface_id=null, vpc_peering_connection_id=null):: {
      route_table_id: route_table_id,
      [if egress_only_gateway_id != null then egress_only_gateway_id]: egress_only_gateway_id,
      [if id != null then id]: id,
      [if transit_gateway_id != null then transit_gateway_id]: transit_gateway_id,
      [if destination_ipv6_cidr_block != null then destination_ipv6_cidr_block]: destination_ipv6_cidr_block,
      [if gateway_id != null then gateway_id]: gateway_id,
      [if instance_id != null then instance_id]: instance_id,
      [if nat_gateway_id != null then nat_gateway_id]: nat_gateway_id,
      [if destination_cidr_block != null then destination_cidr_block]: destination_cidr_block,
      [if network_interface_id != null then network_interface_id]: network_interface_id,
      [if vpc_peering_connection_id != null then vpc_peering_connection_id]: vpc_peering_connection_id,
      rname:: rname,
      state:: '${aws_route.%s.state}' % rname,
      destination_prefix_list_id:: '${aws_route.%s.destination_prefix_list_id}' % rname,
      origin:: '${aws_route.%s.origin}' % rname,
      instance_owner_id:: '${aws_route.%s.instance_owner_id}' % rname,
    },
    // aws_cloudwatch_log_destination_policy - https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_destination_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param access_policy (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_destination_policy.html#access_policy.
    // @param destination_name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_destination_policy.html#destination_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_destination_policy.html#id.
    aws_cloudwatch_log_destination_policy(rname, access_policy, destination_name, id=null):: {
      access_policy: access_policy,
      destination_name: destination_name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_iam_group_policy - https://www.terraform.io/docs/providers/aws/r/iam_group_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param group (required) https://www.terraform.io/docs/providers/aws/r/iam_group_policy.html#group.
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/iam_group_policy.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_group_policy.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/iam_group_policy.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/iam_group_policy.html#name_prefix.
    aws_iam_group_policy(rname, group, policy, id=null, name=null, name_prefix=null):: {
      group: group,
      policy: policy,
      [if id != null then id]: id,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      rname:: rname,
    },
    // aws_neptune_subnet_group - https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html#subnet_ids.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html#id.
    aws_neptune_subnet_group(rname, subnet_ids, name=null, name_prefix=null, tags=null, description=null, id=null):: {
      subnet_ids: subnet_ids,
      [if name != null then name]: name,
      [if name_prefix != null then name_prefix]: name_prefix,
      [if tags != null then tags]: tags,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
      arn:: '${aws_neptune_subnet_group.%s.arn}' % rname,
    },
    // aws_organizations_policy_attachment - https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy_id (required) https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html#policy_id.
    // @param target_id (required) https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html#target_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html#id.
    aws_organizations_policy_attachment(rname, policy_id, target_id, id=null):: {
      policy_id: policy_id,
      target_id: target_id,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_globalaccelerator_endpoint_group - https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param listener_arn (required) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#listener_arn.
    // @param traffic_dial_percentage (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#traffic_dial_percentage.
    // @param endpoint_group_region (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#endpoint_group_region.
    // @param health_check_port (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#health_check_port.
    // @param health_check_protocol (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#health_check_protocol.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#id.
    // @param threshold_count (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#threshold_count.
    // @param health_check_interval_seconds (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#health_check_interval_seconds.
    // @param health_check_path (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#health_check_path.
    aws_globalaccelerator_endpoint_group(rname, listener_arn, traffic_dial_percentage=null, endpoint_group_region=null, health_check_port=null, health_check_protocol=null, id=null, threshold_count=null, health_check_interval_seconds=null, health_check_path=null):: {
      listener_arn: listener_arn,
      [if traffic_dial_percentage != null then traffic_dial_percentage]: traffic_dial_percentage,
      [if endpoint_group_region != null then endpoint_group_region]: endpoint_group_region,
      [if health_check_port != null then health_check_port]: health_check_port,
      [if health_check_protocol != null then health_check_protocol]: health_check_protocol,
      [if id != null then id]: id,
      [if threshold_count != null then threshold_count]: threshold_count,
      [if health_check_interval_seconds != null then health_check_interval_seconds]: health_check_interval_seconds,
      [if health_check_path != null then health_check_path]: health_check_path,
      rname:: rname,
    },
    // aws_glue_classifier - https://www.terraform.io/docs/providers/aws/r/glue_classifier.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_classifier.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_classifier.html#id.
    aws_glue_classifier(rname, name, id=null):: {
      name: name,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_internet_gateway - https://www.terraform.io/docs/providers/aws/r/internet_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/internet_gateway.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/internet_gateway.html#tags.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/internet_gateway.html#vpc_id.
    aws_internet_gateway(rname, id=null, tags=null, vpc_id=null):: {
      [if id != null then id]: id,
      [if tags != null then tags]: tags,
      [if vpc_id != null then vpc_id]: vpc_id,
      rname:: rname,
      owner_id:: '${aws_internet_gateway.%s.owner_id}' % rname,
    },
    // aws_opsworks_custom_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#stack_id.
    // @param short_name (required) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#short_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#name.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#auto_assign_public_ips.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#auto_healing.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_json.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#elastic_load_balancer.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#use_ebs_optimized_instances.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_security_group_ids.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#drain_elb_on_shutdown.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#install_updates_on_boot.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#auto_assign_elastic_ips.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_deploy_recipes.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_instance_profile_arn.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_setup_recipes.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_shutdown_recipes.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_undeploy_recipes.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_configure_recipes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#id.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#instance_shutdown_timeout.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#system_packages.
    aws_opsworks_custom_layer(rname, stack_id, short_name, name, auto_assign_public_ips=null, auto_healing=null, custom_json=null, elastic_load_balancer=null, use_ebs_optimized_instances=null, custom_security_group_ids=null, drain_elb_on_shutdown=null, install_updates_on_boot=null, auto_assign_elastic_ips=null, custom_deploy_recipes=null, custom_instance_profile_arn=null, custom_setup_recipes=null, custom_shutdown_recipes=null, custom_undeploy_recipes=null, custom_configure_recipes=null, id=null, instance_shutdown_timeout=null, system_packages=null):: {
      stack_id: stack_id,
      short_name: short_name,
      name: name,
      [if auto_assign_public_ips != null then auto_assign_public_ips]: auto_assign_public_ips,
      [if auto_healing != null then auto_healing]: auto_healing,
      [if custom_json != null then custom_json]: custom_json,
      [if elastic_load_balancer != null then elastic_load_balancer]: elastic_load_balancer,
      [if use_ebs_optimized_instances != null then use_ebs_optimized_instances]: use_ebs_optimized_instances,
      [if custom_security_group_ids != null then custom_security_group_ids]: custom_security_group_ids,
      [if drain_elb_on_shutdown != null then drain_elb_on_shutdown]: drain_elb_on_shutdown,
      [if install_updates_on_boot != null then install_updates_on_boot]: install_updates_on_boot,
      [if auto_assign_elastic_ips != null then auto_assign_elastic_ips]: auto_assign_elastic_ips,
      [if custom_deploy_recipes != null then custom_deploy_recipes]: custom_deploy_recipes,
      [if custom_instance_profile_arn != null then custom_instance_profile_arn]: custom_instance_profile_arn,
      [if custom_setup_recipes != null then custom_setup_recipes]: custom_setup_recipes,
      [if custom_shutdown_recipes != null then custom_shutdown_recipes]: custom_shutdown_recipes,
      [if custom_undeploy_recipes != null then custom_undeploy_recipes]: custom_undeploy_recipes,
      [if custom_configure_recipes != null then custom_configure_recipes]: custom_configure_recipes,
      [if id != null then id]: id,
      [if instance_shutdown_timeout != null then instance_shutdown_timeout]: instance_shutdown_timeout,
      [if system_packages != null then system_packages]: system_packages,
      rname:: rname,
    },
    // aws_ssm_maintenance_window - https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#name.
    // @param cutoff (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#cutoff.
    // @param schedule (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#schedule.
    // @param duration (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#duration.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#enabled.
    // @param end_date (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#end_date.
    // @param schedule_timezone (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#schedule_timezone.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#tags.
    // @param allow_unassociated_targets (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#allow_unassociated_targets.
    // @param start_date (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#start_date.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#id.
    aws_ssm_maintenance_window(rname, name, cutoff, schedule, duration, enabled=null, end_date=null, schedule_timezone=null, tags=null, allow_unassociated_targets=null, start_date=null, id=null):: {
      name: name,
      cutoff: cutoff,
      schedule: schedule,
      duration: duration,
      [if enabled != null then enabled]: enabled,
      [if end_date != null then end_date]: end_date,
      [if schedule_timezone != null then schedule_timezone]: schedule_timezone,
      [if tags != null then tags]: tags,
      [if allow_unassociated_targets != null then allow_unassociated_targets]: allow_unassociated_targets,
      [if start_date != null then start_date]: start_date,
      [if id != null then id]: id,
      rname:: rname,
    },
    // aws_athena_named_query - https://www.terraform.io/docs/providers/aws/r/athena_named_query.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param query (required) https://www.terraform.io/docs/providers/aws/r/athena_named_query.html#query.
    // @param database (required) https://www.terraform.io/docs/providers/aws/r/athena_named_query.html#database.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/athena_named_query.html#name.
    // @param workgroup (optional) https://www.terraform.io/docs/providers/aws/r/athena_named_query.html#workgroup.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/athena_named_query.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/athena_named_query.html#id.
    aws_athena_named_query(rname, query, database, name, workgroup=null, description=null, id=null):: {
      query: query,
      database: database,
      name: name,
      [if workgroup != null then workgroup]: workgroup,
      [if description != null then description]: description,
      [if id != null then id]: id,
      rname:: rname,
    },
  },
}