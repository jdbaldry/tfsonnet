{
  aws:: {
    // aws_opsworks_mysql_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#stack_id.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#auto_assign_elastic_ips.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_deploy_recipes.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#drain_elb_on_shutdown.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#system_packages.
    // @param root_password_on_all_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#root_password_on_all_instances.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#auto_assign_public_ips.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#auto_healing.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_configure_recipes.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_setup_recipes.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_shutdown_recipes.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#name.
    // @param root_password (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#root_password.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#use_ebs_optimized_instances.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_instance_profile_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#id.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#install_updates_on_boot.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#instance_shutdown_timeout.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_json.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_security_group_ids.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#custom_undeploy_recipes.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_mysql_layer.html#elastic_load_balancer.
    // @param ebs_volume (optional) ebs_volume block.
    aws_opsworks_mysql_layer(rname, stack_id, auto_assign_elastic_ips=null, custom_deploy_recipes=null, drain_elb_on_shutdown=null, system_packages=null, root_password_on_all_instances=null, auto_assign_public_ips=null, auto_healing=null, custom_configure_recipes=null, custom_setup_recipes=null, custom_shutdown_recipes=null, name=null, root_password=null, use_ebs_optimized_instances=null, custom_instance_profile_arn=null, id=null, install_updates_on_boot=null, instance_shutdown_timeout=null, custom_json=null, custom_security_group_ids=null, custom_undeploy_recipes=null, elastic_load_balancer=null, ebs_volume={}):: {
      stack_id: stack_id,
      [if auto_assign_elastic_ips != null then 'auto_assign_elastic_ips']: auto_assign_elastic_ips,
      [if custom_deploy_recipes != null then 'custom_deploy_recipes']: custom_deploy_recipes,
      [if drain_elb_on_shutdown != null then 'drain_elb_on_shutdown']: drain_elb_on_shutdown,
      [if system_packages != null then 'system_packages']: system_packages,
      [if root_password_on_all_instances != null then 'root_password_on_all_instances']: root_password_on_all_instances,
      [if auto_assign_public_ips != null then 'auto_assign_public_ips']: auto_assign_public_ips,
      [if auto_healing != null then 'auto_healing']: auto_healing,
      [if custom_configure_recipes != null then 'custom_configure_recipes']: custom_configure_recipes,
      [if custom_setup_recipes != null then 'custom_setup_recipes']: custom_setup_recipes,
      [if custom_shutdown_recipes != null then 'custom_shutdown_recipes']: custom_shutdown_recipes,
      [if name != null then 'name']: name,
      [if root_password != null then 'root_password']: root_password,
      [if use_ebs_optimized_instances != null then 'use_ebs_optimized_instances']: use_ebs_optimized_instances,
      [if custom_instance_profile_arn != null then 'custom_instance_profile_arn']: custom_instance_profile_arn,
      [if id != null then 'id']: id,
      [if install_updates_on_boot != null then 'install_updates_on_boot']: install_updates_on_boot,
      [if instance_shutdown_timeout != null then 'instance_shutdown_timeout']: instance_shutdown_timeout,
      [if custom_json != null then 'custom_json']: custom_json,
      [if custom_security_group_ids != null then 'custom_security_group_ids']: custom_security_group_ids,
      [if custom_undeploy_recipes != null then 'custom_undeploy_recipes']: custom_undeploy_recipes,
      [if elastic_load_balancer != null then 'elastic_load_balancer']: elastic_load_balancer,
      [if ebs_volume != null then 'ebs_volume']: ebs_volume,
      rname:: rname,
    },
    // aws_cognito_identity_pool - https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param identity_pool_name (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#identity_pool_name.
    // @param developer_provider_name (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#developer_provider_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#id.
    // @param openid_connect_provider_arns (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#openid_connect_provider_arns.
    // @param saml_provider_arns (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#saml_provider_arns.
    // @param allow_unauthenticated_identities (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#allow_unauthenticated_identities.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#tags.
    // @param supported_login_providers (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool.html#supported_login_providers.
    // @param cognito_identity_providers (optional) cognito_identity_providers block.
    aws_cognito_identity_pool(rname, identity_pool_name, developer_provider_name=null, id=null, openid_connect_provider_arns=null, saml_provider_arns=null, allow_unauthenticated_identities=null, tags=null, supported_login_providers=null, cognito_identity_providers={}):: {
      identity_pool_name: identity_pool_name,
      [if developer_provider_name != null then 'developer_provider_name']: developer_provider_name,
      [if id != null then 'id']: id,
      [if openid_connect_provider_arns != null then 'openid_connect_provider_arns']: openid_connect_provider_arns,
      [if saml_provider_arns != null then 'saml_provider_arns']: saml_provider_arns,
      [if allow_unauthenticated_identities != null then 'allow_unauthenticated_identities']: allow_unauthenticated_identities,
      [if tags != null then 'tags']: tags,
      [if supported_login_providers != null then 'supported_login_providers']: supported_login_providers,
      [if cognito_identity_providers != null then 'cognito_identity_providers']: cognito_identity_providers,
      rname:: rname,
      arn:: '${aws_cognito_identity_pool.%s.arn}' % rname,
    },
    // aws_elb_attachment - https://www.terraform.io/docs/providers/aws/r/elb_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param elb (required) https://www.terraform.io/docs/providers/aws/r/elb_attachment.html#elb.
    // @param instance (required) https://www.terraform.io/docs/providers/aws/r/elb_attachment.html#instance.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elb_attachment.html#id.
    aws_elb_attachment(rname, elb, instance, id=null):: {
      elb: elb,
      instance: instance,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_resourcegroups_group - https://www.terraform.io/docs/providers/aws/r/resourcegroups_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/resourcegroups_group.html#name.
    // @param resource_query (required) resource_query block.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/resourcegroups_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/resourcegroups_group.html#id.
    aws_resourcegroups_group(rname, name, resource_query, description=null, id=null):: {
      name: name,
      resource_query: resource_query,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_resourcegroups_group.%s.arn}' % rname,
    },
    // aws_sns_topic_policy - https://www.terraform.io/docs/providers/aws/r/sns_topic_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param arn (required) https://www.terraform.io/docs/providers/aws/r/sns_topic_policy.html#arn.
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/sns_topic_policy.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_policy.html#id.
    aws_sns_topic_policy(rname, arn, policy, id=null):: {
      arn: arn,
      policy: policy,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_spot_datafeed_subscription - https://www.terraform.io/docs/providers/aws/r/spot_datafeed_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/spot_datafeed_subscription.html#bucket.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/spot_datafeed_subscription.html#id.
    // @param prefix (optional) https://www.terraform.io/docs/providers/aws/r/spot_datafeed_subscription.html#prefix.
    aws_spot_datafeed_subscription(rname, bucket, id=null, prefix=null):: {
      bucket: bucket,
      [if id != null then 'id']: id,
      [if prefix != null then 'prefix']: prefix,
      rname:: rname,
    },
    // aws_wafregional_size_constraint_set - https://www.terraform.io/docs/providers/aws/r/wafregional_size_constraint_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_size_constraint_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_size_constraint_set.html#id.
    // @param size_constraints (optional) size_constraints block.
    aws_wafregional_size_constraint_set(rname, name, id=null, size_constraints={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if size_constraints != null then 'size_constraints']: size_constraints,
      rname:: rname,
    },
    // aws_athena_database - https://www.terraform.io/docs/providers/aws/r/athena_database.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/athena_database.html#bucket.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/athena_database.html#name.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/athena_database.html#force_destroy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/athena_database.html#id.
    // @param encryption_configuration (optional) encryption_configuration block.
    aws_athena_database(rname, bucket, name, force_destroy=null, id=null, encryption_configuration={}):: {
      bucket: bucket,
      name: name,
      [if force_destroy != null then 'force_destroy']: force_destroy,
      [if id != null then 'id']: id,
      [if encryption_configuration != null then 'encryption_configuration']: encryption_configuration,
      rname:: rname,
    },
    // aws_ec2_transit_gateway_vpc_attachment_accepter - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment_accepter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param transit_gateway_attachment_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment_accepter.html#transit_gateway_attachment_id.
    // @param transit_gateway_default_route_table_association (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment_accepter.html#transit_gateway_default_route_table_association.
    // @param transit_gateway_default_route_table_propagation (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment_accepter.html#transit_gateway_default_route_table_propagation.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment_accepter.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment_accepter.html#tags.
    aws_ec2_transit_gateway_vpc_attachment_accepter(rname, transit_gateway_attachment_id, transit_gateway_default_route_table_association=null, transit_gateway_default_route_table_propagation=null, id=null, tags=null):: {
      transit_gateway_attachment_id: transit_gateway_attachment_id,
      [if transit_gateway_default_route_table_association != null then 'transit_gateway_default_route_table_association']: transit_gateway_default_route_table_association,
      [if transit_gateway_default_route_table_propagation != null then 'transit_gateway_default_route_table_propagation']: transit_gateway_default_route_table_propagation,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      subnet_ids:: '${aws_ec2_transit_gateway_vpc_attachment_accepter.%s.subnet_ids}' % rname,
      transit_gateway_id:: '${aws_ec2_transit_gateway_vpc_attachment_accepter.%s.transit_gateway_id}' % rname,
      ipv6_support:: '${aws_ec2_transit_gateway_vpc_attachment_accepter.%s.ipv6_support}' % rname,
      vpc_id:: '${aws_ec2_transit_gateway_vpc_attachment_accepter.%s.vpc_id}' % rname,
      vpc_owner_id:: '${aws_ec2_transit_gateway_vpc_attachment_accepter.%s.vpc_owner_id}' % rname,
      dns_support:: '${aws_ec2_transit_gateway_vpc_attachment_accepter.%s.dns_support}' % rname,
    },
    // aws_guardduty_invite_accepter - https://www.terraform.io/docs/providers/aws/r/guardduty_invite_accepter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param detector_id (required) https://www.terraform.io/docs/providers/aws/r/guardduty_invite_accepter.html#detector_id.
    // @param master_account_id (required) https://www.terraform.io/docs/providers/aws/r/guardduty_invite_accepter.html#master_account_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_invite_accepter.html#id.
    // @param timeouts (optional) timeouts block.
    aws_guardduty_invite_accepter(rname, detector_id, master_account_id, id=null, timeouts={}):: {
      detector_id: detector_id,
      master_account_id: master_account_id,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
    },
    // aws_organizations_policy_attachment - https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy_id (required) https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html#policy_id.
    // @param target_id (required) https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html#target_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/organizations_policy_attachment.html#id.
    aws_organizations_policy_attachment(rname, policy_id, target_id, id=null):: {
      policy_id: policy_id,
      target_id: target_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_sagemaker_notebook_instance - https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#name.
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#instance_type.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#role_arn.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#security_groups.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#tags.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#kms_key_id.
    // @param lifecycle_config_name (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#lifecycle_config_name.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#subnet_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance.html#id.
    aws_sagemaker_notebook_instance(rname, name, instance_type, role_arn, security_groups=null, tags=null, kms_key_id=null, lifecycle_config_name=null, subnet_id=null, id=null):: {
      name: name,
      instance_type: instance_type,
      role_arn: role_arn,
      [if security_groups != null then 'security_groups']: security_groups,
      [if tags != null then 'tags']: tags,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if lifecycle_config_name != null then 'lifecycle_config_name']: lifecycle_config_name,
      [if subnet_id != null then 'subnet_id']: subnet_id,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_sagemaker_notebook_instance.%s.arn}' % rname,
    },
    // aws_codecommit_trigger - https://www.terraform.io/docs/providers/aws/r/codecommit_trigger.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param repository_name (required) https://www.terraform.io/docs/providers/aws/r/codecommit_trigger.html#repository_name.
    // @param trigger (required) trigger block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codecommit_trigger.html#id.
    aws_codecommit_trigger(rname, repository_name, trigger, id=null):: {
      repository_name: repository_name,
      trigger: trigger,
      [if id != null then 'id']: id,
      rname:: rname,
      configuration_id:: '${aws_codecommit_trigger.%s.configuration_id}' % rname,
    },
    // aws_datasync_agent - https://www.terraform.io/docs/providers/aws/r/datasync_agent.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/datasync_agent.html#id.
    // @param ip_address (optional) https://www.terraform.io/docs/providers/aws/r/datasync_agent.html#ip_address.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/datasync_agent.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/datasync_agent.html#tags.
    // @param activation_key (optional) https://www.terraform.io/docs/providers/aws/r/datasync_agent.html#activation_key.
    // @param timeouts (optional) timeouts block.
    aws_datasync_agent(rname, id=null, ip_address=null, name=null, tags=null, activation_key=null, timeouts={}):: {
      [if id != null then 'id']: id,
      [if ip_address != null then 'ip_address']: ip_address,
      [if name != null then 'name']: name,
      [if tags != null then 'tags']: tags,
      [if activation_key != null then 'activation_key']: activation_key,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_datasync_agent.%s.arn}' % rname,
    },
    // aws_ec2_fleet - https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param launch_template_config (required) launch_template_config block.
    // @param target_capacity_specification (required) target_capacity_specification block.
    // @param excess_capacity_termination_policy (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#excess_capacity_termination_policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#id.
    // @param replace_unhealthy_instances (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#replace_unhealthy_instances.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#tags.
    // @param terminate_instances (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#terminate_instances.
    // @param terminate_instances_with_expiration (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#terminate_instances_with_expiration.
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/ec2_fleet.html#type.
    // @param on_demand_options (optional) on_demand_options block.
    // @param spot_options (optional) spot_options block.
    // @param timeouts (optional) timeouts block.
    aws_ec2_fleet(rname, launch_template_config, target_capacity_specification, excess_capacity_termination_policy=null, id=null, replace_unhealthy_instances=null, tags=null, terminate_instances=null, terminate_instances_with_expiration=null, type=null, on_demand_options={}, spot_options={}, timeouts={}):: {
      launch_template_config: launch_template_config,
      target_capacity_specification: target_capacity_specification,
      [if excess_capacity_termination_policy != null then 'excess_capacity_termination_policy']: excess_capacity_termination_policy,
      [if id != null then 'id']: id,
      [if replace_unhealthy_instances != null then 'replace_unhealthy_instances']: replace_unhealthy_instances,
      [if tags != null then 'tags']: tags,
      [if terminate_instances != null then 'terminate_instances']: terminate_instances,
      [if terminate_instances_with_expiration != null then 'terminate_instances_with_expiration']: terminate_instances_with_expiration,
      [if type != null then 'type']: type,
      [if on_demand_options != null then 'on_demand_options']: on_demand_options,
      [if spot_options != null then 'spot_options']: spot_options,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
    },
    // aws_rds_global_cluster - https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param global_cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#global_cluster_identifier.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#engine.
    // @param database_name (optional) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#database_name.
    // @param deletion_protection (optional) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#deletion_protection.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#engine_version.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#id.
    // @param storage_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/rds_global_cluster.html#storage_encrypted.
    aws_rds_global_cluster(rname, global_cluster_identifier, engine=null, database_name=null, deletion_protection=null, engine_version=null, id=null, storage_encrypted=null):: {
      global_cluster_identifier: global_cluster_identifier,
      [if engine != null then 'engine']: engine,
      [if database_name != null then 'database_name']: database_name,
      [if deletion_protection != null then 'deletion_protection']: deletion_protection,
      [if engine_version != null then 'engine_version']: engine_version,
      [if id != null then 'id']: id,
      [if storage_encrypted != null then 'storage_encrypted']: storage_encrypted,
      rname:: rname,
      arn:: '${aws_rds_global_cluster.%s.arn}' % rname,
      global_cluster_resource_id:: '${aws_rds_global_cluster.%s.global_cluster_resource_id}' % rname,
    },
    // aws_service_discovery_service - https://www.terraform.io/docs/providers/aws/r/service_discovery_service.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/service_discovery_service.html#name.
    // @param namespace_id (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_service.html#namespace_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_service.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_service.html#id.
    // @param health_check_custom_config (optional) health_check_custom_config block.
    // @param dns_config (optional) dns_config block.
    // @param health_check_config (optional) health_check_config block.
    aws_service_discovery_service(rname, name, namespace_id=null, description=null, id=null, health_check_custom_config={}, dns_config={}, health_check_config={}):: {
      name: name,
      [if namespace_id != null then 'namespace_id']: namespace_id,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if health_check_custom_config != null then 'health_check_custom_config']: health_check_custom_config,
      [if dns_config != null then 'dns_config']: dns_config,
      [if health_check_config != null then 'health_check_config']: health_check_config,
      rname:: rname,
      arn:: '${aws_service_discovery_service.%s.arn}' % rname,
    },
    // aws_autoscaling_attachment - https://www.terraform.io/docs/providers/aws/r/autoscaling_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param autoscaling_group_name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_attachment.html#autoscaling_group_name.
    // @param elb (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_attachment.html#elb.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_attachment.html#id.
    // @param alb_target_group_arn (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_attachment.html#alb_target_group_arn.
    aws_autoscaling_attachment(rname, autoscaling_group_name, elb=null, id=null, alb_target_group_arn=null):: {
      autoscaling_group_name: autoscaling_group_name,
      [if elb != null then 'elb']: elb,
      [if id != null then 'id']: id,
      [if alb_target_group_arn != null then 'alb_target_group_arn']: alb_target_group_arn,
      rname:: rname,
    },
    // aws_codedeploy_app - https://www.terraform.io/docs/providers/aws/r/codedeploy_app.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/codedeploy_app.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_app.html#id.
    // @param unique_id (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_app.html#unique_id.
    // @param compute_platform (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_app.html#compute_platform.
    aws_codedeploy_app(rname, name, id=null, unique_id=null, compute_platform=null):: {
      name: name,
      [if id != null then 'id']: id,
      [if unique_id != null then 'unique_id']: unique_id,
      [if compute_platform != null then 'compute_platform']: compute_platform,
      rname:: rname,
    },
    // aws_dx_gateway - https://www.terraform.io/docs/providers/aws/r/dx_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param amazon_side_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_gateway.html#amazon_side_asn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_gateway.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway.html#id.
    // @param timeouts (optional) timeouts block.
    aws_dx_gateway(rname, amazon_side_asn, name, id=null, timeouts={}):: {
      amazon_side_asn: amazon_side_asn,
      name: name,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      owner_account_id:: '${aws_dx_gateway.%s.owner_account_id}' % rname,
    },
    // aws_fms_admin_account - https://www.terraform.io/docs/providers/aws/r/fms_admin_account.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param account_id (optional) https://www.terraform.io/docs/providers/aws/r/fms_admin_account.html#account_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/fms_admin_account.html#id.
    aws_fms_admin_account(rname, account_id=null, id=null):: {
      [if account_id != null then 'account_id']: account_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_iam_saml_provider - https://www.terraform.io/docs/providers/aws/r/iam_saml_provider.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param saml_metadata_document (required) https://www.terraform.io/docs/providers/aws/r/iam_saml_provider.html#saml_metadata_document.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iam_saml_provider.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_saml_provider.html#id.
    aws_iam_saml_provider(rname, saml_metadata_document, name, id=null):: {
      saml_metadata_document: saml_metadata_document,
      name: name,
      [if id != null then 'id']: id,
      rname:: rname,
      valid_until:: '${aws_iam_saml_provider.%s.valid_until}' % rname,
      arn:: '${aws_iam_saml_provider.%s.arn}' % rname,
    },
    // aws_lightsail_key_pair - https://www.terraform.io/docs/providers/aws/r/lightsail_key_pair.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_key_pair.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_key_pair.html#name.
    // @param pgp_key (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_key_pair.html#pgp_key.
    // @param public_key (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_key_pair.html#public_key.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_key_pair.html#name_prefix.
    aws_lightsail_key_pair(rname, id=null, name=null, pgp_key=null, public_key=null, name_prefix=null):: {
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if pgp_key != null then 'pgp_key']: pgp_key,
      [if public_key != null then 'public_key']: public_key,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      rname:: rname,
      encrypted_private_key:: '${aws_lightsail_key_pair.%s.encrypted_private_key}' % rname,
      arn:: '${aws_lightsail_key_pair.%s.arn}' % rname,
      encrypted_fingerprint:: '${aws_lightsail_key_pair.%s.encrypted_fingerprint}' % rname,
      private_key:: '${aws_lightsail_key_pair.%s.private_key}' % rname,
      fingerprint:: '${aws_lightsail_key_pair.%s.fingerprint}' % rname,
    },
    // aws_lightsail_static_ip_attachment - https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_name (required) https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip_attachment.html#instance_name.
    // @param static_ip_name (required) https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip_attachment.html#static_ip_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip_attachment.html#id.
    aws_lightsail_static_ip_attachment(rname, instance_name, static_ip_name, id=null):: {
      instance_name: instance_name,
      static_ip_name: static_ip_name,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_backup_selection - https://www.terraform.io/docs/providers/aws/r/backup_selection.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param iam_role_arn (required) https://www.terraform.io/docs/providers/aws/r/backup_selection.html#iam_role_arn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/backup_selection.html#name.
    // @param plan_id (required) https://www.terraform.io/docs/providers/aws/r/backup_selection.html#plan_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/backup_selection.html#id.
    // @param resources (optional) https://www.terraform.io/docs/providers/aws/r/backup_selection.html#resources.
    // @param selection_tag (optional) selection_tag block.
    aws_backup_selection(rname, iam_role_arn, name, plan_id, id=null, resources=null, selection_tag={}):: {
      iam_role_arn: iam_role_arn,
      name: name,
      plan_id: plan_id,
      [if id != null then 'id']: id,
      [if resources != null then 'resources']: resources,
      [if selection_tag != null then 'selection_tag']: selection_tag,
      rname:: rname,
    },
    // aws_cur_report_definition - https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param compression (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#compression.
    // @param format (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#format.
    // @param additional_schema_elements (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#additional_schema_elements.
    // @param report_name (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#report_name.
    // @param s3_bucket (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#s3_bucket.
    // @param s3_region (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#s3_region.
    // @param time_unit (required) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#time_unit.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#id.
    // @param s3_prefix (optional) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#s3_prefix.
    // @param additional_artifacts (optional) https://www.terraform.io/docs/providers/aws/r/cur_report_definition.html#additional_artifacts.
    aws_cur_report_definition(rname, compression, format, additional_schema_elements, report_name, s3_bucket, s3_region, time_unit, id=null, s3_prefix=null, additional_artifacts=null):: {
      compression: compression,
      format: format,
      additional_schema_elements: additional_schema_elements,
      report_name: report_name,
      s3_bucket: s3_bucket,
      s3_region: s3_region,
      time_unit: time_unit,
      [if id != null then 'id']: id,
      [if s3_prefix != null then 's3_prefix']: s3_prefix,
      [if additional_artifacts != null then 'additional_artifacts']: additional_artifacts,
      rname:: rname,
    },
    // aws_dms_replication_task - https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param replication_task_id (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#replication_task_id.
    // @param source_endpoint_arn (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#source_endpoint_arn.
    // @param table_mappings (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#table_mappings.
    // @param replication_instance_arn (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#replication_instance_arn.
    // @param target_endpoint_arn (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#target_endpoint_arn.
    // @param migration_type (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#migration_type.
    // @param replication_task_settings (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#replication_task_settings.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#tags.
    // @param cdc_start_time (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_task.html#cdc_start_time.
    aws_dms_replication_task(rname, replication_task_id, source_endpoint_arn, table_mappings, replication_instance_arn, target_endpoint_arn, migration_type, replication_task_settings=null, id=null, tags=null, cdc_start_time=null):: {
      replication_task_id: replication_task_id,
      source_endpoint_arn: source_endpoint_arn,
      table_mappings: table_mappings,
      replication_instance_arn: replication_instance_arn,
      target_endpoint_arn: target_endpoint_arn,
      migration_type: migration_type,
      [if replication_task_settings != null then 'replication_task_settings']: replication_task_settings,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if cdc_start_time != null then 'cdc_start_time']: cdc_start_time,
      rname:: rname,
      replication_task_arn:: '${aws_dms_replication_task.%s.replication_task_arn}' % rname,
    },
    // aws_ssm_association - https://www.terraform.io/docs/providers/aws/r/ssm_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#name.
    // @param association_name (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#association_name.
    // @param compliance_severity (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#compliance_severity.
    // @param document_version (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#document_version.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#id.
    // @param instance_id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#instance_id.
    // @param max_errors (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#max_errors.
    // @param parameters (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#parameters.
    // @param max_concurrency (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#max_concurrency.
    // @param schedule_expression (optional) https://www.terraform.io/docs/providers/aws/r/ssm_association.html#schedule_expression.
    // @param output_location (optional) output_location block.
    // @param targets (optional) targets block.
    aws_ssm_association(rname, name, association_name=null, compliance_severity=null, document_version=null, id=null, instance_id=null, max_errors=null, parameters=null, max_concurrency=null, schedule_expression=null, output_location={}, targets={}):: {
      name: name,
      [if association_name != null then 'association_name']: association_name,
      [if compliance_severity != null then 'compliance_severity']: compliance_severity,
      [if document_version != null then 'document_version']: document_version,
      [if id != null then 'id']: id,
      [if instance_id != null then 'instance_id']: instance_id,
      [if max_errors != null then 'max_errors']: max_errors,
      [if parameters != null then 'parameters']: parameters,
      [if max_concurrency != null then 'max_concurrency']: max_concurrency,
      [if schedule_expression != null then 'schedule_expression']: schedule_expression,
      [if output_location != null then 'output_location']: output_location,
      [if targets != null then 'targets']: targets,
      rname:: rname,
      association_id:: '${aws_ssm_association.%s.association_id}' % rname,
    },
    // aws_api_gateway_deployment - https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html#rest_api_id.
    // @param variables (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html#variables.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html#id.
    // @param stage_name (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html#stage_name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html#description.
    // @param stage_description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_deployment.html#stage_description.
    aws_api_gateway_deployment(rname, rest_api_id, variables=null, id=null, stage_name=null, description=null, stage_description=null):: {
      rest_api_id: rest_api_id,
      [if variables != null then 'variables']: variables,
      [if id != null then 'id']: id,
      [if stage_name != null then 'stage_name']: stage_name,
      [if description != null then 'description']: description,
      [if stage_description != null then 'stage_description']: stage_description,
      rname:: rname,
      created_date:: '${aws_api_gateway_deployment.%s.created_date}' % rname,
      execution_arn:: '${aws_api_gateway_deployment.%s.execution_arn}' % rname,
      invoke_url:: '${aws_api_gateway_deployment.%s.invoke_url}' % rname,
    },
    // aws_config_configuration_recorder - https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder.html#role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder.html#name.
    // @param recording_group (optional) recording_group block.
    aws_config_configuration_recorder(rname, role_arn, id=null, name=null, recording_group={}):: {
      role_arn: role_arn,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if recording_group != null then 'recording_group']: recording_group,
      rname:: rname,
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
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_dlm_lifecycle_policy - https://www.terraform.io/docs/providers/aws/r/dlm_lifecycle_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param description (required) https://www.terraform.io/docs/providers/aws/r/dlm_lifecycle_policy.html#description.
    // @param execution_role_arn (required) https://www.terraform.io/docs/providers/aws/r/dlm_lifecycle_policy.html#execution_role_arn.
    // @param policy_details (required) policy_details block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dlm_lifecycle_policy.html#id.
    // @param state (optional) https://www.terraform.io/docs/providers/aws/r/dlm_lifecycle_policy.html#state.
    aws_dlm_lifecycle_policy(rname, description, execution_role_arn, policy_details, id=null, state=null):: {
      description: description,
      execution_role_arn: execution_role_arn,
      policy_details: policy_details,
      [if id != null then 'id']: id,
      [if state != null then 'state']: state,
      rname:: rname,
    },
    // aws_emr_instance_group - https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#instance_type.
    // @param cluster_id (required) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#cluster_id.
    // @param autoscaling_policy (optional) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#autoscaling_policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#name.
    // @param bid_price (optional) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#bid_price.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#ebs_optimized.
    // @param instance_count (optional) https://www.terraform.io/docs/providers/aws/r/emr_instance_group.html#instance_count.
    // @param ebs_config (optional) ebs_config block.
    aws_emr_instance_group(rname, instance_type, cluster_id, autoscaling_policy=null, id=null, name=null, bid_price=null, ebs_optimized=null, instance_count=null, ebs_config={}):: {
      instance_type: instance_type,
      cluster_id: cluster_id,
      [if autoscaling_policy != null then 'autoscaling_policy']: autoscaling_policy,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if bid_price != null then 'bid_price']: bid_price,
      [if ebs_optimized != null then 'ebs_optimized']: ebs_optimized,
      [if instance_count != null then 'instance_count']: instance_count,
      [if ebs_config != null then 'ebs_config']: ebs_config,
      rname:: rname,
      status:: '${aws_emr_instance_group.%s.status}' % rname,
      running_instance_count:: '${aws_emr_instance_group.%s.running_instance_count}' % rname,
    },
    // aws_servicequotas_service_quota - https://www.terraform.io/docs/providers/aws/r/servicequotas_service_quota.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param value (required) https://www.terraform.io/docs/providers/aws/r/servicequotas_service_quota.html#value.
    // @param quota_code (required) https://www.terraform.io/docs/providers/aws/r/servicequotas_service_quota.html#quota_code.
    // @param service_code (required) https://www.terraform.io/docs/providers/aws/r/servicequotas_service_quota.html#service_code.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/servicequotas_service_quota.html#id.
    aws_servicequotas_service_quota(rname, value, quota_code, service_code, id=null):: {
      value: value,
      quota_code: quota_code,
      service_code: service_code,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_servicequotas_service_quota.%s.arn}' % rname,
      default_value:: '${aws_servicequotas_service_quota.%s.default_value}' % rname,
      quota_name:: '${aws_servicequotas_service_quota.%s.quota_name}' % rname,
      adjustable:: '${aws_servicequotas_service_quota.%s.adjustable}' % rname,
      request_id:: '${aws_servicequotas_service_quota.%s.request_id}' % rname,
      request_status:: '${aws_servicequotas_service_quota.%s.request_status}' % rname,
      service_name:: '${aws_servicequotas_service_quota.%s.service_name}' % rname,
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
      [if id != null then 'id']: id,
      rname:: rname,
      status:: '${aws_network_interface_attachment.%s.status}' % rname,
      attachment_id:: '${aws_network_interface_attachment.%s.attachment_id}' % rname,
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
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      creation_date:: '${aws_sfn_state_machine.%s.creation_date}' % rname,
      status:: '${aws_sfn_state_machine.%s.status}' % rname,
    },
    // aws_storagegateway_smb_file_share - https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param location_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#location_arn.
    // @param gateway_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#gateway_arn.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#role_arn.
    // @param read_only (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#read_only.
    // @param requester_pays (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#requester_pays.
    // @param invalid_user_list (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#invalid_user_list.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#kms_key_arn.
    // @param object_acl (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#object_acl.
    // @param default_storage_class (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#default_storage_class.
    // @param guess_mime_type_enabled (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#guess_mime_type_enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#id.
    // @param kms_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#kms_encrypted.
    // @param valid_user_list (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#valid_user_list.
    // @param authentication (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_smb_file_share.html#authentication.
    // @param timeouts (optional) timeouts block.
    aws_storagegateway_smb_file_share(rname, location_arn, gateway_arn, role_arn, read_only=null, requester_pays=null, invalid_user_list=null, kms_key_arn=null, object_acl=null, default_storage_class=null, guess_mime_type_enabled=null, id=null, kms_encrypted=null, valid_user_list=null, authentication=null, timeouts={}):: {
      location_arn: location_arn,
      gateway_arn: gateway_arn,
      role_arn: role_arn,
      [if read_only != null then 'read_only']: read_only,
      [if requester_pays != null then 'requester_pays']: requester_pays,
      [if invalid_user_list != null then 'invalid_user_list']: invalid_user_list,
      [if kms_key_arn != null then 'kms_key_arn']: kms_key_arn,
      [if object_acl != null then 'object_acl']: object_acl,
      [if default_storage_class != null then 'default_storage_class']: default_storage_class,
      [if guess_mime_type_enabled != null then 'guess_mime_type_enabled']: guess_mime_type_enabled,
      [if id != null then 'id']: id,
      [if kms_encrypted != null then 'kms_encrypted']: kms_encrypted,
      [if valid_user_list != null then 'valid_user_list']: valid_user_list,
      [if authentication != null then 'authentication']: authentication,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_storagegateway_smb_file_share.%s.arn}' % rname,
      fileshare_id:: '${aws_storagegateway_smb_file_share.%s.fileshare_id}' % rname,
    },
    // aws_vpc_peering_connection_accepter - https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_accepter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_peering_connection_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_accepter.html#vpc_peering_connection_id.
    // @param auto_accept (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_accepter.html#auto_accept.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_accepter.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_accepter.html#id.
    // @param accepter (optional) accepter block.
    // @param requester (optional) requester block.
    aws_vpc_peering_connection_accepter(rname, vpc_peering_connection_id, auto_accept=null, tags=null, id=null, accepter={}, requester={}):: {
      vpc_peering_connection_id: vpc_peering_connection_id,
      [if auto_accept != null then 'auto_accept']: auto_accept,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if accepter != null then 'accepter']: accepter,
      [if requester != null then 'requester']: requester,
      rname:: rname,
      vpc_id:: '${aws_vpc_peering_connection_accepter.%s.vpc_id}' % rname,
      peer_owner_id:: '${aws_vpc_peering_connection_accepter.%s.peer_owner_id}' % rname,
      peer_region:: '${aws_vpc_peering_connection_accepter.%s.peer_region}' % rname,
      peer_vpc_id:: '${aws_vpc_peering_connection_accepter.%s.peer_vpc_id}' % rname,
      accept_status:: '${aws_vpc_peering_connection_accepter.%s.accept_status}' % rname,
    },
    // aws_api_gateway_method_response - https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#rest_api_id.
    // @param status_code (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#status_code.
    // @param http_method (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#http_method.
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#resource_id.
    // @param response_parameters_in_json (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#response_parameters_in_json.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#id.
    // @param response_models (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#response_models.
    // @param response_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_response.html#response_parameters.
    aws_api_gateway_method_response(rname, rest_api_id, status_code, http_method, resource_id, response_parameters_in_json=null, id=null, response_models=null, response_parameters=null):: {
      rest_api_id: rest_api_id,
      status_code: status_code,
      http_method: http_method,
      resource_id: resource_id,
      [if response_parameters_in_json != null then 'response_parameters_in_json']: response_parameters_in_json,
      [if id != null then 'id']: id,
      [if response_models != null then 'response_models']: response_models,
      [if response_parameters != null then 'response_parameters']: response_parameters,
      rname:: rname,
    },
    // aws_licensemanager_association - https://www.terraform.io/docs/providers/aws/r/licensemanager_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param license_configuration_arn (required) https://www.terraform.io/docs/providers/aws/r/licensemanager_association.html#license_configuration_arn.
    // @param resource_arn (required) https://www.terraform.io/docs/providers/aws/r/licensemanager_association.html#resource_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_association.html#id.
    aws_licensemanager_association(rname, license_configuration_arn, resource_arn, id=null):: {
      license_configuration_arn: license_configuration_arn,
      resource_arn: resource_arn,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_network_interface - https://www.terraform.io/docs/providers/aws/r/network_interface.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_id (required) https://www.terraform.io/docs/providers/aws/r/network_interface.html#subnet_id.
    // @param private_ips (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#private_ips.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#security_groups.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#id.
    // @param private_ip (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#private_ip.
    // @param private_ips_count (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#private_ips_count.
    // @param source_dest_check (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#source_dest_check.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/network_interface.html#description.
    // @param attachment (optional) attachment block.
    aws_network_interface(rname, subnet_id, private_ips=null, security_groups=null, id=null, private_ip=null, private_ips_count=null, source_dest_check=null, tags=null, description=null, attachment={}):: {
      subnet_id: subnet_id,
      [if private_ips != null then 'private_ips']: private_ips,
      [if security_groups != null then 'security_groups']: security_groups,
      [if id != null then 'id']: id,
      [if private_ip != null then 'private_ip']: private_ip,
      [if private_ips_count != null then 'private_ips_count']: private_ips_count,
      [if source_dest_check != null then 'source_dest_check']: source_dest_check,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if attachment != null then 'attachment']: attachment,
      rname:: rname,
      private_dns_name:: '${aws_network_interface.%s.private_dns_name}' % rname,
    },
    // aws_datasync_location_efs - https://www.terraform.io/docs/providers/aws/r/datasync_location_efs.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param efs_file_system_arn (required) https://www.terraform.io/docs/providers/aws/r/datasync_location_efs.html#efs_file_system_arn.
    // @param ec2_config (required) ec2_config block.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_efs.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_efs.html#id.
    // @param subdirectory (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_efs.html#subdirectory.
    aws_datasync_location_efs(rname, efs_file_system_arn, ec2_config, tags=null, id=null, subdirectory=null):: {
      efs_file_system_arn: efs_file_system_arn,
      ec2_config: ec2_config,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if subdirectory != null then 'subdirectory']: subdirectory,
      rname:: rname,
      uri:: '${aws_datasync_location_efs.%s.uri}' % rname,
      arn:: '${aws_datasync_location_efs.%s.arn}' % rname,
    },
    // aws_lb_ssl_negotiation_policy - https://www.terraform.io/docs/providers/aws/r/lb_ssl_negotiation_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param load_balancer (required) https://www.terraform.io/docs/providers/aws/r/lb_ssl_negotiation_policy.html#load_balancer.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/lb_ssl_negotiation_policy.html#name.
    // @param lb_port (required) https://www.terraform.io/docs/providers/aws/r/lb_ssl_negotiation_policy.html#lb_port.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb_ssl_negotiation_policy.html#id.
    // @param attribute (optional) attribute block.
    aws_lb_ssl_negotiation_policy(rname, load_balancer, name, lb_port, id=null, attribute={}):: {
      load_balancer: load_balancer,
      name: name,
      lb_port: lb_port,
      [if id != null then 'id']: id,
      [if attribute != null then 'attribute']: attribute,
      rname:: rname,
    },
    // aws_ssm_document - https://www.terraform.io/docs/providers/aws/r/ssm_document.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#name.
    // @param document_type (required) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#document_type.
    // @param content (required) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#content.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#id.
    // @param document_format (optional) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#document_format.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#tags.
    // @param permissions (optional) https://www.terraform.io/docs/providers/aws/r/ssm_document.html#permissions.
    aws_ssm_document(rname, name, document_type, content, id=null, document_format=null, tags=null, permissions=null):: {
      name: name,
      document_type: document_type,
      content: content,
      [if id != null then 'id']: id,
      [if document_format != null then 'document_format']: document_format,
      [if tags != null then 'tags']: tags,
      [if permissions != null then 'permissions']: permissions,
      rname:: rname,
      status:: '${aws_ssm_document.%s.status}' % rname,
      default_version:: '${aws_ssm_document.%s.default_version}' % rname,
      hash_type:: '${aws_ssm_document.%s.hash_type}' % rname,
      latest_version:: '${aws_ssm_document.%s.latest_version}' % rname,
      owner:: '${aws_ssm_document.%s.owner}' % rname,
      parameter:: '${aws_ssm_document.%s.parameter}' % rname,
      platform_types:: '${aws_ssm_document.%s.platform_types}' % rname,
      schema_version:: '${aws_ssm_document.%s.schema_version}' % rname,
      description:: '${aws_ssm_document.%s.description}' % rname,
      hash:: '${aws_ssm_document.%s.hash}' % rname,
      arn:: '${aws_ssm_document.%s.arn}' % rname,
      created_date:: '${aws_ssm_document.%s.created_date}' % rname,
    },
    // aws_appautoscaling_scheduled_action - https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#name.
    // @param service_namespace (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#service_namespace.
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#resource_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#id.
    // @param scalable_dimension (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#scalable_dimension.
    // @param end_time (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#end_time.
    // @param schedule (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#schedule.
    // @param start_time (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_scheduled_action.html#start_time.
    // @param scalable_target_action (optional) scalable_target_action block.
    aws_appautoscaling_scheduled_action(rname, name, service_namespace, resource_id, id=null, scalable_dimension=null, end_time=null, schedule=null, start_time=null, scalable_target_action={}):: {
      name: name,
      service_namespace: service_namespace,
      resource_id: resource_id,
      [if id != null then 'id']: id,
      [if scalable_dimension != null then 'scalable_dimension']: scalable_dimension,
      [if end_time != null then 'end_time']: end_time,
      [if schedule != null then 'schedule']: schedule,
      [if start_time != null then 'start_time']: start_time,
      [if scalable_target_action != null then 'scalable_target_action']: scalable_target_action,
      rname:: rname,
      arn:: '${aws_appautoscaling_scheduled_action.%s.arn}' % rname,
    },
    // aws_appmesh_virtual_node - https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_node.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param mesh_name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_node.html#mesh_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_node.html#name.
    // @param spec (required) spec block.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_node.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_node.html#id.
    aws_appmesh_virtual_node(rname, mesh_name, name, spec, tags=null, id=null):: {
      mesh_name: mesh_name,
      name: name,
      spec: spec,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      rname:: rname,
      last_updated_date:: '${aws_appmesh_virtual_node.%s.last_updated_date}' % rname,
      arn:: '${aws_appmesh_virtual_node.%s.arn}' % rname,
      created_date:: '${aws_appmesh_virtual_node.%s.created_date}' % rname,
    },
    // aws_config_organization_managed_rule - https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rule_identifier (required) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#rule_identifier.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#name.
    // @param input_parameters (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#input_parameters.
    // @param resource_types_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#resource_types_scope.
    // @param tag_key_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#tag_key_scope.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#description.
    // @param excluded_accounts (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#excluded_accounts.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#id.
    // @param maximum_execution_frequency (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#maximum_execution_frequency.
    // @param resource_id_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#resource_id_scope.
    // @param tag_value_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_managed_rule.html#tag_value_scope.
    // @param timeouts (optional) timeouts block.
    aws_config_organization_managed_rule(rname, rule_identifier, name, input_parameters=null, resource_types_scope=null, tag_key_scope=null, description=null, excluded_accounts=null, id=null, maximum_execution_frequency=null, resource_id_scope=null, tag_value_scope=null, timeouts={}):: {
      rule_identifier: rule_identifier,
      name: name,
      [if input_parameters != null then 'input_parameters']: input_parameters,
      [if resource_types_scope != null then 'resource_types_scope']: resource_types_scope,
      [if tag_key_scope != null then 'tag_key_scope']: tag_key_scope,
      [if description != null then 'description']: description,
      [if excluded_accounts != null then 'excluded_accounts']: excluded_accounts,
      [if id != null then 'id']: id,
      [if maximum_execution_frequency != null then 'maximum_execution_frequency']: maximum_execution_frequency,
      [if resource_id_scope != null then 'resource_id_scope']: resource_id_scope,
      [if tag_value_scope != null then 'tag_value_scope']: tag_value_scope,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_config_organization_managed_rule.%s.arn}' % rname,
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
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      rname:: rname,
      network_interface_id:: '${aws_nat_gateway.%s.network_interface_id}' % rname,
      private_ip:: '${aws_nat_gateway.%s.private_ip}' % rname,
      public_ip:: '${aws_nat_gateway.%s.public_ip}' % rname,
    },
    // aws_network_acl - https://www.terraform.io/docs/providers/aws/r/network_acl.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/network_acl.html#vpc_id.
    // @param egress (optional) https://www.terraform.io/docs/providers/aws/r/network_acl.html#egress.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/network_acl.html#id.
    // @param ingress (optional) https://www.terraform.io/docs/providers/aws/r/network_acl.html#ingress.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/network_acl.html#subnet_id.
    // @param subnet_ids (optional) https://www.terraform.io/docs/providers/aws/r/network_acl.html#subnet_ids.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/network_acl.html#tags.
    aws_network_acl(rname, vpc_id, egress=null, id=null, ingress=null, subnet_id=null, subnet_ids=null, tags=null):: {
      vpc_id: vpc_id,
      [if egress != null then 'egress']: egress,
      [if id != null then 'id']: id,
      [if ingress != null then 'ingress']: ingress,
      [if subnet_id != null then 'subnet_id']: subnet_id,
      [if subnet_ids != null then 'subnet_ids']: subnet_ids,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      owner_id:: '${aws_network_acl.%s.owner_id}' % rname,
    },
    // aws_sns_topic_subscription - https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param protocol (required) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#protocol.
    // @param endpoint (required) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#endpoint.
    // @param topic_arn (required) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#topic_arn.
    // @param raw_message_delivery (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#raw_message_delivery.
    // @param confirmation_timeout_in_minutes (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#confirmation_timeout_in_minutes.
    // @param filter_policy (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#filter_policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#id.
    // @param delivery_policy (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#delivery_policy.
    // @param endpoint_auto_confirms (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic_subscription.html#endpoint_auto_confirms.
    aws_sns_topic_subscription(rname, protocol, endpoint, topic_arn, raw_message_delivery=null, confirmation_timeout_in_minutes=null, filter_policy=null, id=null, delivery_policy=null, endpoint_auto_confirms=null):: {
      protocol: protocol,
      endpoint: endpoint,
      topic_arn: topic_arn,
      [if raw_message_delivery != null then 'raw_message_delivery']: raw_message_delivery,
      [if confirmation_timeout_in_minutes != null then 'confirmation_timeout_in_minutes']: confirmation_timeout_in_minutes,
      [if filter_policy != null then 'filter_policy']: filter_policy,
      [if id != null then 'id']: id,
      [if delivery_policy != null then 'delivery_policy']: delivery_policy,
      [if endpoint_auto_confirms != null then 'endpoint_auto_confirms']: endpoint_auto_confirms,
      rname:: rname,
      arn:: '${aws_sns_topic_subscription.%s.arn}' % rname,
    },
    // aws_docdb_cluster_parameter_group - https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html#family.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_parameter_group.html#tags.
    // @param parameter (optional) parameter block.
    aws_docdb_cluster_parameter_group(rname, family, description=null, id=null, name=null, name_prefix=null, tags=null, parameter={}):: {
      family: family,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if tags != null then 'tags']: tags,
      [if parameter != null then 'parameter']: parameter,
      rname:: rname,
      arn:: '${aws_docdb_cluster_parameter_group.%s.arn}' % rname,
    },
    // aws_dx_hosted_private_virtual_interface - https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param connection_id (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#connection_id.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#name.
    // @param vlan (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#vlan.
    // @param address_family (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#address_family.
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#bgp_asn.
    // @param owner_account_id (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#owner_account_id.
    // @param customer_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#customer_address.
    // @param amazon_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#amazon_address.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#id.
    // @param bgp_auth_key (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#bgp_auth_key.
    // @param mtu (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface.html#mtu.
    // @param timeouts (optional) timeouts block.
    aws_dx_hosted_private_virtual_interface(rname, connection_id, name, vlan, address_family, bgp_asn, owner_account_id, customer_address=null, amazon_address=null, id=null, bgp_auth_key=null, mtu=null, timeouts={}):: {
      connection_id: connection_id,
      name: name,
      vlan: vlan,
      address_family: address_family,
      bgp_asn: bgp_asn,
      owner_account_id: owner_account_id,
      [if customer_address != null then 'customer_address']: customer_address,
      [if amazon_address != null then 'amazon_address']: amazon_address,
      [if id != null then 'id']: id,
      [if bgp_auth_key != null then 'bgp_auth_key']: bgp_auth_key,
      [if mtu != null then 'mtu']: mtu,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_dx_hosted_private_virtual_interface.%s.arn}' % rname,
      aws_device:: '${aws_dx_hosted_private_virtual_interface.%s.aws_device}' % rname,
      jumbo_frame_capable:: '${aws_dx_hosted_private_virtual_interface.%s.jumbo_frame_capable}' % rname,
    },
    // aws_fsx_windows_file_system - https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param storage_capacity (required) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#storage_capacity.
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#subnet_ids.
    // @param throughput_capacity (required) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#throughput_capacity.
    // @param weekly_maintenance_start_time (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#weekly_maintenance_start_time.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#id.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#security_group_ids.
    // @param active_directory_id (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#active_directory_id.
    // @param automatic_backup_retention_days (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#automatic_backup_retention_days.
    // @param copy_tags_to_backups (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#copy_tags_to_backups.
    // @param skip_final_backup (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#skip_final_backup.
    // @param daily_automatic_backup_start_time (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#daily_automatic_backup_start_time.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#kms_key_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/fsx_windows_file_system.html#tags.
    // @param self_managed_active_directory (optional) self_managed_active_directory block.
    // @param timeouts (optional) timeouts block.
    aws_fsx_windows_file_system(rname, storage_capacity, subnet_ids, throughput_capacity, weekly_maintenance_start_time=null, id=null, security_group_ids=null, active_directory_id=null, automatic_backup_retention_days=null, copy_tags_to_backups=null, skip_final_backup=null, daily_automatic_backup_start_time=null, kms_key_id=null, tags=null, self_managed_active_directory={}, timeouts={}):: {
      storage_capacity: storage_capacity,
      subnet_ids: subnet_ids,
      throughput_capacity: throughput_capacity,
      [if weekly_maintenance_start_time != null then 'weekly_maintenance_start_time']: weekly_maintenance_start_time,
      [if id != null then 'id']: id,
      [if security_group_ids != null then 'security_group_ids']: security_group_ids,
      [if active_directory_id != null then 'active_directory_id']: active_directory_id,
      [if automatic_backup_retention_days != null then 'automatic_backup_retention_days']: automatic_backup_retention_days,
      [if copy_tags_to_backups != null then 'copy_tags_to_backups']: copy_tags_to_backups,
      [if skip_final_backup != null then 'skip_final_backup']: skip_final_backup,
      [if daily_automatic_backup_start_time != null then 'daily_automatic_backup_start_time']: daily_automatic_backup_start_time,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if tags != null then 'tags']: tags,
      [if self_managed_active_directory != null then 'self_managed_active_directory']: self_managed_active_directory,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      network_interface_ids:: '${aws_fsx_windows_file_system.%s.network_interface_ids}' % rname,
      owner_id:: '${aws_fsx_windows_file_system.%s.owner_id}' % rname,
      vpc_id:: '${aws_fsx_windows_file_system.%s.vpc_id}' % rname,
      arn:: '${aws_fsx_windows_file_system.%s.arn}' % rname,
      dns_name:: '${aws_fsx_windows_file_system.%s.dns_name}' % rname,
    },
    // aws_eks_cluster - https://www.terraform.io/docs/providers/aws/r/eks_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/eks_cluster.html#name.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/eks_cluster.html#role_arn.
    // @param vpc_config (required) vpc_config block.
    // @param version (optional) https://www.terraform.io/docs/providers/aws/r/eks_cluster.html#version.
    // @param enabled_cluster_log_types (optional) https://www.terraform.io/docs/providers/aws/r/eks_cluster.html#enabled_cluster_log_types.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/eks_cluster.html#id.
    // @param timeouts (optional) timeouts block.
    aws_eks_cluster(rname, name, role_arn, vpc_config, version=null, enabled_cluster_log_types=null, id=null, timeouts={}):: {
      name: name,
      role_arn: role_arn,
      vpc_config: vpc_config,
      [if version != null then 'version']: version,
      [if enabled_cluster_log_types != null then 'enabled_cluster_log_types']: enabled_cluster_log_types,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_eks_cluster.%s.arn}' % rname,
      certificate_authority:: '${aws_eks_cluster.%s.certificate_authority}' % rname,
      created_at:: '${aws_eks_cluster.%s.created_at}' % rname,
      endpoint:: '${aws_eks_cluster.%s.endpoint}' % rname,
      platform_version:: '${aws_eks_cluster.%s.platform_version}' % rname,
      status:: '${aws_eks_cluster.%s.status}' % rname,
    },
    // aws_iam_account_password_policy - https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param allow_users_to_change_password (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#allow_users_to_change_password.
    // @param hard_expiry (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#hard_expiry.
    // @param max_password_age (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#max_password_age.
    // @param require_lowercase_characters (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#require_lowercase_characters.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#id.
    // @param minimum_password_length (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#minimum_password_length.
    // @param password_reuse_prevention (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#password_reuse_prevention.
    // @param require_numbers (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#require_numbers.
    // @param require_symbols (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#require_symbols.
    // @param require_uppercase_characters (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html#require_uppercase_characters.
    aws_iam_account_password_policy(rname, allow_users_to_change_password=null, hard_expiry=null, max_password_age=null, require_lowercase_characters=null, id=null, minimum_password_length=null, password_reuse_prevention=null, require_numbers=null, require_symbols=null, require_uppercase_characters=null):: {
      [if allow_users_to_change_password != null then 'allow_users_to_change_password']: allow_users_to_change_password,
      [if hard_expiry != null then 'hard_expiry']: hard_expiry,
      [if max_password_age != null then 'max_password_age']: max_password_age,
      [if require_lowercase_characters != null then 'require_lowercase_characters']: require_lowercase_characters,
      [if id != null then 'id']: id,
      [if minimum_password_length != null then 'minimum_password_length']: minimum_password_length,
      [if password_reuse_prevention != null then 'password_reuse_prevention']: password_reuse_prevention,
      [if require_numbers != null then 'require_numbers']: require_numbers,
      [if require_symbols != null then 'require_symbols']: require_symbols,
      [if require_uppercase_characters != null then 'require_uppercase_characters']: require_uppercase_characters,
      rname:: rname,
      expire_passwords:: '${aws_iam_account_password_policy.%s.expire_passwords}' % rname,
    },
    // aws_ram_principal_association - https://www.terraform.io/docs/providers/aws/r/ram_principal_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param resource_share_arn (required) https://www.terraform.io/docs/providers/aws/r/ram_principal_association.html#resource_share_arn.
    // @param principal (required) https://www.terraform.io/docs/providers/aws/r/ram_principal_association.html#principal.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ram_principal_association.html#id.
    aws_ram_principal_association(rname, resource_share_arn, principal, id=null):: {
      resource_share_arn: resource_share_arn,
      principal: principal,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_autoscaling_group - https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param min_size (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#min_size.
    // @param max_size (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#max_size.
    // @param termination_policies (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#termination_policies.
    // @param default_cooldown (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#default_cooldown.
    // @param min_elb_capacity (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#min_elb_capacity.
    // @param suspended_processes (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#suspended_processes.
    // @param desired_capacity (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#desired_capacity.
    // @param enabled_metrics (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#enabled_metrics.
    // @param vpc_zone_identifier (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#vpc_zone_identifier.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#name_prefix.
    // @param protect_from_scale_in (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#protect_from_scale_in.
    // @param service_linked_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#service_linked_role_arn.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#availability_zones.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#tags.
    // @param wait_for_capacity_timeout (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#wait_for_capacity_timeout.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#id.
    // @param metrics_granularity (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#metrics_granularity.
    // @param load_balancers (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#load_balancers.
    // @param wait_for_elb_capacity (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#wait_for_elb_capacity.
    // @param placement_group (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#placement_group.
    // @param force_delete (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#force_delete.
    // @param health_check_grace_period (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#health_check_grace_period.
    // @param health_check_type (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#health_check_type.
    // @param launch_configuration (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#launch_configuration.
    // @param target_group_arns (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_group.html#target_group_arns.
    // @param initial_lifecycle_hook (optional) initial_lifecycle_hook block.
    // @param launch_template (optional) launch_template block.
    // @param mixed_instances_policy (optional) mixed_instances_policy block.
    // @param tag (optional) tag block.
    // @param timeouts (optional) timeouts block.
    aws_autoscaling_group(rname, min_size, max_size, termination_policies=null, default_cooldown=null, min_elb_capacity=null, suspended_processes=null, desired_capacity=null, enabled_metrics=null, vpc_zone_identifier=null, name_prefix=null, protect_from_scale_in=null, service_linked_role_arn=null, availability_zones=null, name=null, tags=null, wait_for_capacity_timeout=null, id=null, metrics_granularity=null, load_balancers=null, wait_for_elb_capacity=null, placement_group=null, force_delete=null, health_check_grace_period=null, health_check_type=null, launch_configuration=null, target_group_arns=null, initial_lifecycle_hook={}, launch_template={}, mixed_instances_policy={}, tag={}, timeouts={}):: {
      min_size: min_size,
      max_size: max_size,
      [if termination_policies != null then 'termination_policies']: termination_policies,
      [if default_cooldown != null then 'default_cooldown']: default_cooldown,
      [if min_elb_capacity != null then 'min_elb_capacity']: min_elb_capacity,
      [if suspended_processes != null then 'suspended_processes']: suspended_processes,
      [if desired_capacity != null then 'desired_capacity']: desired_capacity,
      [if enabled_metrics != null then 'enabled_metrics']: enabled_metrics,
      [if vpc_zone_identifier != null then 'vpc_zone_identifier']: vpc_zone_identifier,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if protect_from_scale_in != null then 'protect_from_scale_in']: protect_from_scale_in,
      [if service_linked_role_arn != null then 'service_linked_role_arn']: service_linked_role_arn,
      [if availability_zones != null then 'availability_zones']: availability_zones,
      [if name != null then 'name']: name,
      [if tags != null then 'tags']: tags,
      [if wait_for_capacity_timeout != null then 'wait_for_capacity_timeout']: wait_for_capacity_timeout,
      [if id != null then 'id']: id,
      [if metrics_granularity != null then 'metrics_granularity']: metrics_granularity,
      [if load_balancers != null then 'load_balancers']: load_balancers,
      [if wait_for_elb_capacity != null then 'wait_for_elb_capacity']: wait_for_elb_capacity,
      [if placement_group != null then 'placement_group']: placement_group,
      [if force_delete != null then 'force_delete']: force_delete,
      [if health_check_grace_period != null then 'health_check_grace_period']: health_check_grace_period,
      [if health_check_type != null then 'health_check_type']: health_check_type,
      [if launch_configuration != null then 'launch_configuration']: launch_configuration,
      [if target_group_arns != null then 'target_group_arns']: target_group_arns,
      [if initial_lifecycle_hook != null then 'initial_lifecycle_hook']: initial_lifecycle_hook,
      [if launch_template != null then 'launch_template']: launch_template,
      [if mixed_instances_policy != null then 'mixed_instances_policy']: mixed_instances_policy,
      [if tag != null then 'tag']: tag,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_autoscaling_group.%s.arn}' % rname,
    },
    // aws_cognito_user_group - https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html#name.
    // @param user_pool_id (required) https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html#user_pool_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html#id.
    // @param precedence (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html#precedence.
    // @param role_arn (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_group.html#role_arn.
    aws_cognito_user_group(rname, name, user_pool_id, description=null, id=null, precedence=null, role_arn=null):: {
      name: name,
      user_pool_id: user_pool_id,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if precedence != null then 'precedence']: precedence,
      [if role_arn != null then 'role_arn']: role_arn,
      rname:: rname,
    },
    // aws_cloudhsm_v2_hsm - https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_hsm.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_id (required) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_hsm.html#cluster_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_hsm.html#id.
    // @param ip_address (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_hsm.html#ip_address.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_hsm.html#subnet_id.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_hsm.html#availability_zone.
    // @param timeouts (optional) timeouts block.
    aws_cloudhsm_v2_hsm(rname, cluster_id, id=null, ip_address=null, subnet_id=null, availability_zone=null, timeouts={}):: {
      cluster_id: cluster_id,
      [if id != null then 'id']: id,
      [if ip_address != null then 'ip_address']: ip_address,
      [if subnet_id != null then 'subnet_id']: subnet_id,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      hsm_id:: '${aws_cloudhsm_v2_hsm.%s.hsm_id}' % rname,
      hsm_state:: '${aws_cloudhsm_v2_hsm.%s.hsm_state}' % rname,
      hsm_eni_id:: '${aws_cloudhsm_v2_hsm.%s.hsm_eni_id}' % rname,
    },
    // aws_cloudwatch_event_target - https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param arn (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#arn.
    // @param rule (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#rule.
    // @param target_id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#target_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#id.
    // @param input (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#input.
    // @param input_path (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#input_path.
    // @param role_arn (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_target.html#role_arn.
    // @param batch_target (optional) batch_target block.
    // @param ecs_target (optional) ecs_target block.
    // @param input_transformer (optional) input_transformer block.
    // @param kinesis_target (optional) kinesis_target block.
    // @param run_command_targets (optional) run_command_targets block.
    // @param sqs_target (optional) sqs_target block.
    aws_cloudwatch_event_target(rname, arn, rule, target_id=null, id=null, input=null, input_path=null, role_arn=null, batch_target={}, ecs_target={}, input_transformer={}, kinesis_target={}, run_command_targets={}, sqs_target={}):: {
      arn: arn,
      rule: rule,
      [if target_id != null then 'target_id']: target_id,
      [if id != null then 'id']: id,
      [if input != null then 'input']: input,
      [if input_path != null then 'input_path']: input_path,
      [if role_arn != null then 'role_arn']: role_arn,
      [if batch_target != null then 'batch_target']: batch_target,
      [if ecs_target != null then 'ecs_target']: ecs_target,
      [if input_transformer != null then 'input_transformer']: input_transformer,
      [if kinesis_target != null then 'kinesis_target']: kinesis_target,
      [if run_command_targets != null then 'run_command_targets']: run_command_targets,
      [if sqs_target != null then 'sqs_target']: sqs_target,
      rname:: rname,
    },
    // aws_opsworks_custom_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#name.
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#stack_id.
    // @param short_name (required) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#short_name.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#auto_healing.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_configure_recipes.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_json.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_shutdown_recipes.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#elastic_load_balancer.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#id.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#auto_assign_public_ips.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_instance_profile_arn.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#instance_shutdown_timeout.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#system_packages.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_deploy_recipes.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_undeploy_recipes.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#use_ebs_optimized_instances.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#auto_assign_elastic_ips.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_setup_recipes.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#drain_elb_on_shutdown.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#install_updates_on_boot.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_custom_layer.html#custom_security_group_ids.
    // @param ebs_volume (optional) ebs_volume block.
    aws_opsworks_custom_layer(rname, name, stack_id, short_name, auto_healing=null, custom_configure_recipes=null, custom_json=null, custom_shutdown_recipes=null, elastic_load_balancer=null, id=null, auto_assign_public_ips=null, custom_instance_profile_arn=null, instance_shutdown_timeout=null, system_packages=null, custom_deploy_recipes=null, custom_undeploy_recipes=null, use_ebs_optimized_instances=null, auto_assign_elastic_ips=null, custom_setup_recipes=null, drain_elb_on_shutdown=null, install_updates_on_boot=null, custom_security_group_ids=null, ebs_volume={}):: {
      name: name,
      stack_id: stack_id,
      short_name: short_name,
      [if auto_healing != null then 'auto_healing']: auto_healing,
      [if custom_configure_recipes != null then 'custom_configure_recipes']: custom_configure_recipes,
      [if custom_json != null then 'custom_json']: custom_json,
      [if custom_shutdown_recipes != null then 'custom_shutdown_recipes']: custom_shutdown_recipes,
      [if elastic_load_balancer != null then 'elastic_load_balancer']: elastic_load_balancer,
      [if id != null then 'id']: id,
      [if auto_assign_public_ips != null then 'auto_assign_public_ips']: auto_assign_public_ips,
      [if custom_instance_profile_arn != null then 'custom_instance_profile_arn']: custom_instance_profile_arn,
      [if instance_shutdown_timeout != null then 'instance_shutdown_timeout']: instance_shutdown_timeout,
      [if system_packages != null then 'system_packages']: system_packages,
      [if custom_deploy_recipes != null then 'custom_deploy_recipes']: custom_deploy_recipes,
      [if custom_undeploy_recipes != null then 'custom_undeploy_recipes']: custom_undeploy_recipes,
      [if use_ebs_optimized_instances != null then 'use_ebs_optimized_instances']: use_ebs_optimized_instances,
      [if auto_assign_elastic_ips != null then 'auto_assign_elastic_ips']: auto_assign_elastic_ips,
      [if custom_setup_recipes != null then 'custom_setup_recipes']: custom_setup_recipes,
      [if drain_elb_on_shutdown != null then 'drain_elb_on_shutdown']: drain_elb_on_shutdown,
      [if install_updates_on_boot != null then 'install_updates_on_boot']: install_updates_on_boot,
      [if custom_security_group_ids != null then 'custom_security_group_ids']: custom_security_group_ids,
      [if ebs_volume != null then 'ebs_volume']: ebs_volume,
      rname:: rname,
    },
    // aws_organizations_organization - https://www.terraform.io/docs/providers/aws/r/organizations_organization.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param aws_service_access_principals (optional) https://www.terraform.io/docs/providers/aws/r/organizations_organization.html#aws_service_access_principals.
    // @param enabled_policy_types (optional) https://www.terraform.io/docs/providers/aws/r/organizations_organization.html#enabled_policy_types.
    // @param feature_set (optional) https://www.terraform.io/docs/providers/aws/r/organizations_organization.html#feature_set.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/organizations_organization.html#id.
    aws_organizations_organization(rname, aws_service_access_principals=null, enabled_policy_types=null, feature_set=null, id=null):: {
      [if aws_service_access_principals != null then 'aws_service_access_principals']: aws_service_access_principals,
      [if enabled_policy_types != null then 'enabled_policy_types']: enabled_policy_types,
      [if feature_set != null then 'feature_set']: feature_set,
      [if id != null then 'id']: id,
      rname:: rname,
      master_account_arn:: '${aws_organizations_organization.%s.master_account_arn}' % rname,
      master_account_email:: '${aws_organizations_organization.%s.master_account_email}' % rname,
      non_master_accounts:: '${aws_organizations_organization.%s.non_master_accounts}' % rname,
      roots:: '${aws_organizations_organization.%s.roots}' % rname,
      accounts:: '${aws_organizations_organization.%s.accounts}' % rname,
      arn:: '${aws_organizations_organization.%s.arn}' % rname,
      master_account_id:: '${aws_organizations_organization.%s.master_account_id}' % rname,
    },
    // aws_vpc_endpoint_subnet_association - https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_subnet_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_subnet_association.html#subnet_id.
    // @param vpc_endpoint_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_subnet_association.html#vpc_endpoint_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_subnet_association.html#id.
    // @param timeouts (optional) timeouts block.
    aws_vpc_endpoint_subnet_association(rname, subnet_id, vpc_endpoint_id, id=null, timeouts={}):: {
      subnet_id: subnet_id,
      vpc_endpoint_id: vpc_endpoint_id,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
    },
    // aws_wafregional_sql_injection_match_set - https://www.terraform.io/docs/providers/aws/r/wafregional_sql_injection_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_sql_injection_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_sql_injection_match_set.html#id.
    // @param sql_injection_match_tuple (optional) sql_injection_match_tuple block.
    aws_wafregional_sql_injection_match_set(rname, name, id=null, sql_injection_match_tuple={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if sql_injection_match_tuple != null then 'sql_injection_match_tuple']: sql_injection_match_tuple,
      rname:: rname,
    },
    // aws_appsync_api_key - https://www.terraform.io/docs/providers/aws/r/appsync_api_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param api_id (required) https://www.terraform.io/docs/providers/aws/r/appsync_api_key.html#api_id.
    // @param expires (optional) https://www.terraform.io/docs/providers/aws/r/appsync_api_key.html#expires.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appsync_api_key.html#id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/appsync_api_key.html#description.
    aws_appsync_api_key(rname, api_id, expires=null, id=null, description=null):: {
      api_id: api_id,
      [if expires != null then 'expires']: expires,
      [if id != null then 'id']: id,
      [if description != null then 'description']: description,
      rname:: rname,
      key:: '${aws_appsync_api_key.%s.key}' % rname,
    },
    // aws_iot_thing_type - https://www.terraform.io/docs/providers/aws/r/iot_thing_type.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iot_thing_type.html#name.
    // @param deprecated (optional) https://www.terraform.io/docs/providers/aws/r/iot_thing_type.html#deprecated.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_thing_type.html#id.
    // @param properties (optional) properties block.
    aws_iot_thing_type(rname, name, deprecated=null, id=null, properties={}):: {
      name: name,
      [if deprecated != null then 'deprecated']: deprecated,
      [if id != null then 'id']: id,
      [if properties != null then 'properties']: properties,
      rname:: rname,
      arn:: '${aws_iot_thing_type.%s.arn}' % rname,
    },
    // aws_lambda_permission - https://www.terraform.io/docs/providers/aws/r/lambda_permission.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param action (required) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#action.
    // @param function_name (required) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#function_name.
    // @param principal (required) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#principal.
    // @param statement_id_prefix (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#statement_id_prefix.
    // @param event_source_token (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#event_source_token.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#id.
    // @param statement_id (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#statement_id.
    // @param qualifier (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#qualifier.
    // @param source_account (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#source_account.
    // @param source_arn (optional) https://www.terraform.io/docs/providers/aws/r/lambda_permission.html#source_arn.
    aws_lambda_permission(rname, action, function_name, principal, statement_id_prefix=null, event_source_token=null, id=null, statement_id=null, qualifier=null, source_account=null, source_arn=null):: {
      action: action,
      function_name: function_name,
      principal: principal,
      [if statement_id_prefix != null then 'statement_id_prefix']: statement_id_prefix,
      [if event_source_token != null then 'event_source_token']: event_source_token,
      [if id != null then 'id']: id,
      [if statement_id != null then 'statement_id']: statement_id,
      [if qualifier != null then 'qualifier']: qualifier,
      [if source_account != null then 'source_account']: source_account,
      [if source_arn != null then 'source_arn']: source_arn,
      rname:: rname,
    },
    // aws_ecs_cluster - https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ecs_cluster.html#tags.
    // @param setting (optional) setting block.
    aws_ecs_cluster(rname, name, id=null, tags=null, setting={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if setting != null then 'setting']: setting,
      rname:: rname,
      arn:: '${aws_ecs_cluster.%s.arn}' % rname,
    },
    // aws_ssm_maintenance_window - https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#name.
    // @param cutoff (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#cutoff.
    // @param duration (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#duration.
    // @param schedule (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#schedule.
    // @param end_date (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#end_date.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#id.
    // @param schedule_timezone (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#schedule_timezone.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#tags.
    // @param allow_unassociated_targets (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#allow_unassociated_targets.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#enabled.
    // @param start_date (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window.html#start_date.
    aws_ssm_maintenance_window(rname, name, cutoff, duration, schedule, end_date=null, id=null, schedule_timezone=null, tags=null, allow_unassociated_targets=null, enabled=null, start_date=null):: {
      name: name,
      cutoff: cutoff,
      duration: duration,
      schedule: schedule,
      [if end_date != null then 'end_date']: end_date,
      [if id != null then 'id']: id,
      [if schedule_timezone != null then 'schedule_timezone']: schedule_timezone,
      [if tags != null then 'tags']: tags,
      [if allow_unassociated_targets != null then 'allow_unassociated_targets']: allow_unassociated_targets,
      [if enabled != null then 'enabled']: enabled,
      [if start_date != null then 'start_date']: start_date,
      rname:: rname,
    },
    // aws_xray_sampling_rule - https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param reservoir_size (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#reservoir_size.
    // @param resource_arn (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#resource_arn.
    // @param service_name (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#service_name.
    // @param url_path (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#url_path.
    // @param host (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#host.
    // @param http_method (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#http_method.
    // @param version (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#version.
    // @param fixed_rate (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#fixed_rate.
    // @param priority (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#priority.
    // @param service_type (required) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#service_type.
    // @param rule_name (optional) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#rule_name.
    // @param attributes (optional) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#attributes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/xray_sampling_rule.html#id.
    aws_xray_sampling_rule(rname, reservoir_size, resource_arn, service_name, url_path, host, http_method, version, fixed_rate, priority, service_type, rule_name=null, attributes=null, id=null):: {
      reservoir_size: reservoir_size,
      resource_arn: resource_arn,
      service_name: service_name,
      url_path: url_path,
      host: host,
      http_method: http_method,
      version: version,
      fixed_rate: fixed_rate,
      priority: priority,
      service_type: service_type,
      [if rule_name != null then 'rule_name']: rule_name,
      [if attributes != null then 'attributes']: attributes,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_xray_sampling_rule.%s.arn}' % rname,
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
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      rname:: rname,
    },
    // aws_redshift_snapshot_schedule_association - https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param schedule_identifier (required) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule_association.html#schedule_identifier.
    // @param cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule_association.html#cluster_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule_association.html#id.
    aws_redshift_snapshot_schedule_association(rname, schedule_identifier, cluster_identifier, id=null):: {
      schedule_identifier: schedule_identifier,
      cluster_identifier: cluster_identifier,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_service_discovery_private_dns_namespace - https://www.terraform.io/docs/providers/aws/r/service_discovery_private_dns_namespace.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/service_discovery_private_dns_namespace.html#name.
    // @param vpc (required) https://www.terraform.io/docs/providers/aws/r/service_discovery_private_dns_namespace.html#vpc.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_private_dns_namespace.html#id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_private_dns_namespace.html#description.
    aws_service_discovery_private_dns_namespace(rname, name, vpc, id=null, description=null):: {
      name: name,
      vpc: vpc,
      [if id != null then 'id']: id,
      [if description != null then 'description']: description,
      rname:: rname,
      hosted_zone:: '${aws_service_discovery_private_dns_namespace.%s.hosted_zone}' % rname,
      arn:: '${aws_service_discovery_private_dns_namespace.%s.arn}' % rname,
    },
    // aws_ses_domain_identity - https://www.terraform.io/docs/providers/aws/r/ses_domain_identity.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain (required) https://www.terraform.io/docs/providers/aws/r/ses_domain_identity.html#domain.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_domain_identity.html#id.
    aws_ses_domain_identity(rname, domain, id=null):: {
      domain: domain,
      [if id != null then 'id']: id,
      rname:: rname,
      verification_token:: '${aws_ses_domain_identity.%s.verification_token}' % rname,
      arn:: '${aws_ses_domain_identity.%s.arn}' % rname,
    },
    // aws_devicefarm_project - https://www.terraform.io/docs/providers/aws/r/devicefarm_project.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/devicefarm_project.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/devicefarm_project.html#id.
    aws_devicefarm_project(rname, name, id=null):: {
      name: name,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_devicefarm_project.%s.arn}' % rname,
    },
    // aws_ec2_transit_gateway_route_table_association - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param transit_gateway_attachment_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_association.html#transit_gateway_attachment_id.
    // @param transit_gateway_route_table_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_association.html#transit_gateway_route_table_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_association.html#id.
    aws_ec2_transit_gateway_route_table_association(rname, transit_gateway_attachment_id, transit_gateway_route_table_id, id=null):: {
      transit_gateway_attachment_id: transit_gateway_attachment_id,
      transit_gateway_route_table_id: transit_gateway_route_table_id,
      [if id != null then 'id']: id,
      rname:: rname,
      resource_id:: '${aws_ec2_transit_gateway_route_table_association.%s.resource_id}' % rname,
      resource_type:: '${aws_ec2_transit_gateway_route_table_association.%s.resource_type}' % rname,
    },
    // aws_gamelift_fleet - https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#name.
    // @param build_id (required) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#build_id.
    // @param ec2_instance_type (required) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#ec2_instance_type.
    // @param new_game_session_protection_policy (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#new_game_session_protection_policy.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#id.
    // @param metric_groups (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_fleet.html#metric_groups.
    // @param ec2_inbound_permission (optional) ec2_inbound_permission block.
    // @param resource_creation_limit_policy (optional) resource_creation_limit_policy block.
    // @param runtime_configuration (optional) runtime_configuration block.
    // @param timeouts (optional) timeouts block.
    aws_gamelift_fleet(rname, name, build_id, ec2_instance_type, new_game_session_protection_policy=null, description=null, id=null, metric_groups=null, ec2_inbound_permission={}, resource_creation_limit_policy={}, runtime_configuration={}, timeouts={}):: {
      name: name,
      build_id: build_id,
      ec2_instance_type: ec2_instance_type,
      [if new_game_session_protection_policy != null then 'new_game_session_protection_policy']: new_game_session_protection_policy,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if metric_groups != null then 'metric_groups']: metric_groups,
      [if ec2_inbound_permission != null then 'ec2_inbound_permission']: ec2_inbound_permission,
      [if resource_creation_limit_policy != null then 'resource_creation_limit_policy']: resource_creation_limit_policy,
      [if runtime_configuration != null then 'runtime_configuration']: runtime_configuration,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_gamelift_fleet.%s.arn}' % rname,
      log_paths:: '${aws_gamelift_fleet.%s.log_paths}' % rname,
      operating_system:: '${aws_gamelift_fleet.%s.operating_system}' % rname,
    },
    // aws_neptune_cluster_snapshot - https://www.terraform.io/docs/providers/aws/r/neptune_cluster_snapshot.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param db_cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_snapshot.html#db_cluster_identifier.
    // @param db_cluster_snapshot_identifier (required) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_snapshot.html#db_cluster_snapshot_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_snapshot.html#id.
    // @param timeouts (optional) timeouts block.
    aws_neptune_cluster_snapshot(rname, db_cluster_identifier, db_cluster_snapshot_identifier, id=null, timeouts={}):: {
      db_cluster_identifier: db_cluster_identifier,
      db_cluster_snapshot_identifier: db_cluster_snapshot_identifier,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      allocated_storage:: '${aws_neptune_cluster_snapshot.%s.allocated_storage}' % rname,
      availability_zones:: '${aws_neptune_cluster_snapshot.%s.availability_zones}' % rname,
      status:: '${aws_neptune_cluster_snapshot.%s.status}' % rname,
      vpc_id:: '${aws_neptune_cluster_snapshot.%s.vpc_id}' % rname,
      engine:: '${aws_neptune_cluster_snapshot.%s.engine}' % rname,
      storage_encrypted:: '${aws_neptune_cluster_snapshot.%s.storage_encrypted}' % rname,
      db_cluster_snapshot_arn:: '${aws_neptune_cluster_snapshot.%s.db_cluster_snapshot_arn}' % rname,
      port:: '${aws_neptune_cluster_snapshot.%s.port}' % rname,
      source_db_cluster_snapshot_arn:: '${aws_neptune_cluster_snapshot.%s.source_db_cluster_snapshot_arn}' % rname,
      engine_version:: '${aws_neptune_cluster_snapshot.%s.engine_version}' % rname,
      kms_key_id:: '${aws_neptune_cluster_snapshot.%s.kms_key_id}' % rname,
      license_model:: '${aws_neptune_cluster_snapshot.%s.license_model}' % rname,
      snapshot_type:: '${aws_neptune_cluster_snapshot.%s.snapshot_type}' % rname,
    },
    // aws_opsworks_java_app_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#stack_id.
    // @param app_server (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#app_server.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#auto_assign_public_ips.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_deploy_recipes.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_json.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_security_group_ids.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_setup_recipes.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_undeploy_recipes.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#auto_assign_elastic_ips.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_instance_profile_arn.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_shutdown_recipes.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#drain_elb_on_shutdown.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#instance_shutdown_timeout.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#system_packages.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#auto_healing.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#elastic_load_balancer.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#use_ebs_optimized_instances.
    // @param app_server_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#app_server_version.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#custom_configure_recipes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#id.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#install_updates_on_boot.
    // @param jvm_options (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#jvm_options.
    // @param jvm_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#jvm_type.
    // @param jvm_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#jvm_version.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_java_app_layer.html#name.
    // @param ebs_volume (optional) ebs_volume block.
    aws_opsworks_java_app_layer(rname, stack_id, app_server=null, auto_assign_public_ips=null, custom_deploy_recipes=null, custom_json=null, custom_security_group_ids=null, custom_setup_recipes=null, custom_undeploy_recipes=null, auto_assign_elastic_ips=null, custom_instance_profile_arn=null, custom_shutdown_recipes=null, drain_elb_on_shutdown=null, instance_shutdown_timeout=null, system_packages=null, auto_healing=null, elastic_load_balancer=null, use_ebs_optimized_instances=null, app_server_version=null, custom_configure_recipes=null, id=null, install_updates_on_boot=null, jvm_options=null, jvm_type=null, jvm_version=null, name=null, ebs_volume={}):: {
      stack_id: stack_id,
      [if app_server != null then 'app_server']: app_server,
      [if auto_assign_public_ips != null then 'auto_assign_public_ips']: auto_assign_public_ips,
      [if custom_deploy_recipes != null then 'custom_deploy_recipes']: custom_deploy_recipes,
      [if custom_json != null then 'custom_json']: custom_json,
      [if custom_security_group_ids != null then 'custom_security_group_ids']: custom_security_group_ids,
      [if custom_setup_recipes != null then 'custom_setup_recipes']: custom_setup_recipes,
      [if custom_undeploy_recipes != null then 'custom_undeploy_recipes']: custom_undeploy_recipes,
      [if auto_assign_elastic_ips != null then 'auto_assign_elastic_ips']: auto_assign_elastic_ips,
      [if custom_instance_profile_arn != null then 'custom_instance_profile_arn']: custom_instance_profile_arn,
      [if custom_shutdown_recipes != null then 'custom_shutdown_recipes']: custom_shutdown_recipes,
      [if drain_elb_on_shutdown != null then 'drain_elb_on_shutdown']: drain_elb_on_shutdown,
      [if instance_shutdown_timeout != null then 'instance_shutdown_timeout']: instance_shutdown_timeout,
      [if system_packages != null then 'system_packages']: system_packages,
      [if auto_healing != null then 'auto_healing']: auto_healing,
      [if elastic_load_balancer != null then 'elastic_load_balancer']: elastic_load_balancer,
      [if use_ebs_optimized_instances != null then 'use_ebs_optimized_instances']: use_ebs_optimized_instances,
      [if app_server_version != null then 'app_server_version']: app_server_version,
      [if custom_configure_recipes != null then 'custom_configure_recipes']: custom_configure_recipes,
      [if id != null then 'id']: id,
      [if install_updates_on_boot != null then 'install_updates_on_boot']: install_updates_on_boot,
      [if jvm_options != null then 'jvm_options']: jvm_options,
      [if jvm_type != null then 'jvm_type']: jvm_type,
      [if jvm_version != null then 'jvm_version']: jvm_version,
      [if name != null then 'name']: name,
      [if ebs_volume != null then 'ebs_volume']: ebs_volume,
      rname:: rname,
    },
    // aws_waf_regex_match_set - https://www.terraform.io/docs/providers/aws/r/waf_regex_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_regex_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_regex_match_set.html#id.
    // @param regex_match_tuple (optional) regex_match_tuple block.
    aws_waf_regex_match_set(rname, name, id=null, regex_match_tuple={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if regex_match_tuple != null then 'regex_match_tuple']: regex_match_tuple,
      rname:: rname,
    },
    // aws_acm_certificate - https://www.terraform.io/docs/providers/aws/r/acm_certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate_authority_arn (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#certificate_authority_arn.
    // @param certificate_body (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#certificate_body.
    // @param certificate_chain (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#certificate_chain.
    // @param private_key (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#private_key.
    // @param subject_alternative_names (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#subject_alternative_names.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#tags.
    // @param domain_name (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#domain_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#id.
    // @param validation_method (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate.html#validation_method.
    // @param options (optional) options block.
    aws_acm_certificate(rname, certificate_authority_arn=null, certificate_body=null, certificate_chain=null, private_key=null, subject_alternative_names=null, tags=null, domain_name=null, id=null, validation_method=null, options={}):: {
      [if certificate_authority_arn != null then 'certificate_authority_arn']: certificate_authority_arn,
      [if certificate_body != null then 'certificate_body']: certificate_body,
      [if certificate_chain != null then 'certificate_chain']: certificate_chain,
      [if private_key != null then 'private_key']: private_key,
      [if subject_alternative_names != null then 'subject_alternative_names']: subject_alternative_names,
      [if tags != null then 'tags']: tags,
      [if domain_name != null then 'domain_name']: domain_name,
      [if id != null then 'id']: id,
      [if validation_method != null then 'validation_method']: validation_method,
      [if options != null then 'options']: options,
      rname:: rname,
      domain_validation_options:: '${aws_acm_certificate.%s.domain_validation_options}' % rname,
      validation_emails:: '${aws_acm_certificate.%s.validation_emails}' % rname,
      arn:: '${aws_acm_certificate.%s.arn}' % rname,
    },
    // aws_elasticsearch_domain - https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain_name (required) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html#domain_name.
    // @param elasticsearch_version (optional) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html#elasticsearch_version.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html#tags.
    // @param access_policies (optional) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html#access_policies.
    // @param advanced_options (optional) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html#advanced_options.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain.html#id.
    // @param cluster_config (optional) cluster_config block.
    // @param cognito_options (optional) cognito_options block.
    // @param ebs_options (optional) ebs_options block.
    // @param encrypt_at_rest (optional) encrypt_at_rest block.
    // @param log_publishing_options (optional) log_publishing_options block.
    // @param node_to_node_encryption (optional) node_to_node_encryption block.
    // @param snapshot_options (optional) snapshot_options block.
    // @param vpc_options (optional) vpc_options block.
    aws_elasticsearch_domain(rname, domain_name, elasticsearch_version=null, tags=null, access_policies=null, advanced_options=null, id=null, cluster_config={}, cognito_options={}, ebs_options={}, encrypt_at_rest={}, log_publishing_options={}, node_to_node_encryption={}, snapshot_options={}, vpc_options={}):: {
      domain_name: domain_name,
      [if elasticsearch_version != null then 'elasticsearch_version']: elasticsearch_version,
      [if tags != null then 'tags']: tags,
      [if access_policies != null then 'access_policies']: access_policies,
      [if advanced_options != null then 'advanced_options']: advanced_options,
      [if id != null then 'id']: id,
      [if cluster_config != null then 'cluster_config']: cluster_config,
      [if cognito_options != null then 'cognito_options']: cognito_options,
      [if ebs_options != null then 'ebs_options']: ebs_options,
      [if encrypt_at_rest != null then 'encrypt_at_rest']: encrypt_at_rest,
      [if log_publishing_options != null then 'log_publishing_options']: log_publishing_options,
      [if node_to_node_encryption != null then 'node_to_node_encryption']: node_to_node_encryption,
      [if snapshot_options != null then 'snapshot_options']: snapshot_options,
      [if vpc_options != null then 'vpc_options']: vpc_options,
      rname:: rname,
      endpoint:: '${aws_elasticsearch_domain.%s.endpoint}' % rname,
      domain_id:: '${aws_elasticsearch_domain.%s.domain_id}' % rname,
      kibana_endpoint:: '${aws_elasticsearch_domain.%s.kibana_endpoint}' % rname,
      arn:: '${aws_elasticsearch_domain.%s.arn}' % rname,
    },
    // aws_guardduty_member - https://www.terraform.io/docs/providers/aws/r/guardduty_member.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param email (required) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#email.
    // @param account_id (required) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#account_id.
    // @param detector_id (required) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#detector_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#id.
    // @param invitation_message (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#invitation_message.
    // @param invite (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#invite.
    // @param disable_email_notification (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_member.html#disable_email_notification.
    // @param timeouts (optional) timeouts block.
    aws_guardduty_member(rname, email, account_id, detector_id, id=null, invitation_message=null, invite=null, disable_email_notification=null, timeouts={}):: {
      email: email,
      account_id: account_id,
      detector_id: detector_id,
      [if id != null then 'id']: id,
      [if invitation_message != null then 'invitation_message']: invitation_message,
      [if invite != null then 'invite']: invite,
      [if disable_email_notification != null then 'disable_email_notification']: disable_email_notification,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      relationship_status:: '${aws_guardduty_member.%s.relationship_status}' % rname,
    },
    // aws_dx_lag - https://www.terraform.io/docs/providers/aws/r/dx_lag.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param location (required) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#location.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#name.
    // @param connections_bandwidth (required) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#connections_bandwidth.
    // @param number_of_connections (optional) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#number_of_connections.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#tags.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#force_destroy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_lag.html#id.
    aws_dx_lag(rname, location, name, connections_bandwidth, number_of_connections=null, tags=null, force_destroy=null, id=null):: {
      location: location,
      name: name,
      connections_bandwidth: connections_bandwidth,
      [if number_of_connections != null then 'number_of_connections']: number_of_connections,
      [if tags != null then 'tags']: tags,
      [if force_destroy != null then 'force_destroy']: force_destroy,
      [if id != null then 'id']: id,
      rname:: rname,
      has_logical_redundancy:: '${aws_dx_lag.%s.has_logical_redundancy}' % rname,
      jumbo_frame_capable:: '${aws_dx_lag.%s.jumbo_frame_capable}' % rname,
      arn:: '${aws_dx_lag.%s.arn}' % rname,
    },
    // aws_pinpoint_app - https://www.terraform.io/docs/providers/aws/r/pinpoint_app.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_app.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_app.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_app.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_app.html#id.
    // @param campaign_hook (optional) campaign_hook block.
    // @param limits (optional) limits block.
    // @param quiet_time (optional) quiet_time block.
    aws_pinpoint_app(rname, name=null, name_prefix=null, tags=null, id=null, campaign_hook={}, limits={}, quiet_time={}):: {
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if campaign_hook != null then 'campaign_hook']: campaign_hook,
      [if limits != null then 'limits']: limits,
      [if quiet_time != null then 'quiet_time']: quiet_time,
      rname:: rname,
      application_id:: '${aws_pinpoint_app.%s.application_id}' % rname,
      arn:: '${aws_pinpoint_app.%s.arn}' % rname,
    },
    // aws_s3_bucket_policy - https://www.terraform.io/docs/providers/aws/r/s3_bucket_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_policy.html#bucket.
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_policy.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_policy.html#id.
    aws_s3_bucket_policy(rname, bucket, policy, id=null):: {
      bucket: bucket,
      policy: policy,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_shield_protection - https://www.terraform.io/docs/providers/aws/r/shield_protection.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/shield_protection.html#name.
    // @param resource_arn (required) https://www.terraform.io/docs/providers/aws/r/shield_protection.html#resource_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/shield_protection.html#id.
    aws_shield_protection(rname, name, resource_arn, id=null):: {
      name: name,
      resource_arn: resource_arn,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_api_gateway_request_validator - https://www.terraform.io/docs/providers/aws/r/api_gateway_request_validator.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_request_validator.html#name.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_request_validator.html#rest_api_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_request_validator.html#id.
    // @param validate_request_body (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_request_validator.html#validate_request_body.
    // @param validate_request_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_request_validator.html#validate_request_parameters.
    aws_api_gateway_request_validator(rname, name, rest_api_id, id=null, validate_request_body=null, validate_request_parameters=null):: {
      name: name,
      rest_api_id: rest_api_id,
      [if id != null then 'id']: id,
      [if validate_request_body != null then 'validate_request_body']: validate_request_body,
      [if validate_request_parameters != null then 'validate_request_parameters']: validate_request_parameters,
      rname:: rname,
    },
    // aws_appsync_datasource - https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html#type.
    // @param api_id (required) https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html#api_id.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html#name.
    // @param service_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html#service_role_arn.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appsync_datasource.html#id.
    // @param dynamodb_config (optional) dynamodb_config block.
    // @param elasticsearch_config (optional) elasticsearch_config block.
    // @param http_config (optional) http_config block.
    // @param lambda_config (optional) lambda_config block.
    aws_appsync_datasource(rname, type, api_id, name, service_role_arn=null, description=null, id=null, dynamodb_config={}, elasticsearch_config={}, http_config={}, lambda_config={}):: {
      type: type,
      api_id: api_id,
      name: name,
      [if service_role_arn != null then 'service_role_arn']: service_role_arn,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if dynamodb_config != null then 'dynamodb_config']: dynamodb_config,
      [if elasticsearch_config != null then 'elasticsearch_config']: elasticsearch_config,
      [if http_config != null then 'http_config']: http_config,
      [if lambda_config != null then 'lambda_config']: lambda_config,
      rname:: rname,
      arn:: '${aws_appsync_datasource.%s.arn}' % rname,
    },
    // aws_route53_zone - https://www.terraform.io/docs/providers/aws/r/route53_zone.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#tags.
    // @param vpc_region (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#vpc_region.
    // @param comment (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#comment.
    // @param delegation_set_id (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#delegation_set_id.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#force_destroy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#id.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/route53_zone.html#vpc_id.
    // @param vpc (optional) vpc block.
    aws_route53_zone(rname, name, tags=null, vpc_region=null, comment=null, delegation_set_id=null, force_destroy=null, id=null, vpc_id=null, vpc={}):: {
      name: name,
      [if tags != null then 'tags']: tags,
      [if vpc_region != null then 'vpc_region']: vpc_region,
      [if comment != null then 'comment']: comment,
      [if delegation_set_id != null then 'delegation_set_id']: delegation_set_id,
      [if force_destroy != null then 'force_destroy']: force_destroy,
      [if id != null then 'id']: id,
      [if vpc_id != null then 'vpc_id']: vpc_id,
      [if vpc != null then 'vpc']: vpc,
      rname:: rname,
      name_servers:: '${aws_route53_zone.%s.name_servers}' % rname,
      zone_id:: '${aws_route53_zone.%s.zone_id}' % rname,
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
    // @param smb_active_directory_settings (optional) smb_active_directory_settings block.
    // @param timeouts (optional) timeouts block.
    aws_storagegateway_gateway(rname, gateway_timezone, gateway_name, id=null, medium_changer_type=null, smb_guest_password=null, activation_key=null, gateway_ip_address=null, gateway_type=null, tape_drive_type=null, smb_active_directory_settings={}, timeouts={}):: {
      gateway_timezone: gateway_timezone,
      gateway_name: gateway_name,
      [if id != null then 'id']: id,
      [if medium_changer_type != null then 'medium_changer_type']: medium_changer_type,
      [if smb_guest_password != null then 'smb_guest_password']: smb_guest_password,
      [if activation_key != null then 'activation_key']: activation_key,
      [if gateway_ip_address != null then 'gateway_ip_address']: gateway_ip_address,
      [if gateway_type != null then 'gateway_type']: gateway_type,
      [if tape_drive_type != null then 'tape_drive_type']: tape_drive_type,
      [if smb_active_directory_settings != null then 'smb_active_directory_settings']: smb_active_directory_settings,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_storagegateway_gateway.%s.arn}' % rname,
      gateway_id:: '${aws_storagegateway_gateway.%s.gateway_id}' % rname,
    },
    // aws_vpc_endpoint_service_allowed_principal - https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service_allowed_principal.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param principal_arn (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service_allowed_principal.html#principal_arn.
    // @param vpc_endpoint_service_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service_allowed_principal.html#vpc_endpoint_service_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service_allowed_principal.html#id.
    aws_vpc_endpoint_service_allowed_principal(rname, principal_arn, vpc_endpoint_service_id, id=null):: {
      principal_arn: principal_arn,
      vpc_endpoint_service_id: vpc_endpoint_service_id,
      [if id != null then 'id']: id,
      rname:: rname,
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
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_dx_gateway_association - https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param dx_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#dx_gateway_id.
    // @param allowed_prefixes (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#allowed_prefixes.
    // @param associated_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#associated_gateway_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#id.
    // @param associated_gateway_owner_account_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#associated_gateway_owner_account_id.
    // @param proposal_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#proposal_id.
    // @param vpn_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association.html#vpn_gateway_id.
    // @param timeouts (optional) timeouts block.
    aws_dx_gateway_association(rname, dx_gateway_id, allowed_prefixes=null, associated_gateway_id=null, id=null, associated_gateway_owner_account_id=null, proposal_id=null, vpn_gateway_id=null, timeouts={}):: {
      dx_gateway_id: dx_gateway_id,
      [if allowed_prefixes != null then 'allowed_prefixes']: allowed_prefixes,
      [if associated_gateway_id != null then 'associated_gateway_id']: associated_gateway_id,
      [if id != null then 'id']: id,
      [if associated_gateway_owner_account_id != null then 'associated_gateway_owner_account_id']: associated_gateway_owner_account_id,
      [if proposal_id != null then 'proposal_id']: proposal_id,
      [if vpn_gateway_id != null then 'vpn_gateway_id']: vpn_gateway_id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      associated_gateway_type:: '${aws_dx_gateway_association.%s.associated_gateway_type}' % rname,
      dx_gateway_owner_account_id:: '${aws_dx_gateway_association.%s.dx_gateway_owner_account_id}' % rname,
      dx_gateway_association_id:: '${aws_dx_gateway_association.%s.dx_gateway_association_id}' % rname,
    },
    // aws_iot_role_alias - https://www.terraform.io/docs/providers/aws/r/iot_role_alias.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param alias (required) https://www.terraform.io/docs/providers/aws/r/iot_role_alias.html#alias.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/iot_role_alias.html#role_arn.
    // @param credential_duration (optional) https://www.terraform.io/docs/providers/aws/r/iot_role_alias.html#credential_duration.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_role_alias.html#id.
    aws_iot_role_alias(rname, alias, role_arn, credential_duration=null, id=null):: {
      alias: alias,
      role_arn: role_arn,
      [if credential_duration != null then 'credential_duration']: credential_duration,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_iot_role_alias.%s.arn}' % rname,
    },
    // aws_iot_certificate - https://www.terraform.io/docs/providers/aws/r/iot_certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param active (required) https://www.terraform.io/docs/providers/aws/r/iot_certificate.html#active.
    // @param csr (optional) https://www.terraform.io/docs/providers/aws/r/iot_certificate.html#csr.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_certificate.html#id.
    aws_iot_certificate(rname, active, csr=null, id=null):: {
      active: active,
      [if csr != null then 'csr']: csr,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_iot_certificate.%s.arn}' % rname,
      certificate_pem:: '${aws_iot_certificate.%s.certificate_pem}' % rname,
      private_key:: '${aws_iot_certificate.%s.private_key}' % rname,
      public_key:: '${aws_iot_certificate.%s.public_key}' % rname,
    },
    // aws_ram_resource_share_accepter - https://www.terraform.io/docs/providers/aws/r/ram_resource_share_accepter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param share_arn (required) https://www.terraform.io/docs/providers/aws/r/ram_resource_share_accepter.html#share_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ram_resource_share_accepter.html#id.
    // @param timeouts (optional) timeouts block.
    aws_ram_resource_share_accepter(rname, share_arn, id=null, timeouts={}):: {
      share_arn: share_arn,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      receiver_account_id:: '${aws_ram_resource_share_accepter.%s.receiver_account_id}' % rname,
      resources:: '${aws_ram_resource_share_accepter.%s.resources}' % rname,
      sender_account_id:: '${aws_ram_resource_share_accepter.%s.sender_account_id}' % rname,
      share_id:: '${aws_ram_resource_share_accepter.%s.share_id}' % rname,
      share_name:: '${aws_ram_resource_share_accepter.%s.share_name}' % rname,
      status:: '${aws_ram_resource_share_accepter.%s.status}' % rname,
      invitation_arn:: '${aws_ram_resource_share_accepter.%s.invitation_arn}' % rname,
    },
    // aws_waf_regex_pattern_set - https://www.terraform.io/docs/providers/aws/r/waf_regex_pattern_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_regex_pattern_set.html#name.
    // @param regex_pattern_strings (optional) https://www.terraform.io/docs/providers/aws/r/waf_regex_pattern_set.html#regex_pattern_strings.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_regex_pattern_set.html#id.
    aws_waf_regex_pattern_set(rname, name, regex_pattern_strings=null, id=null):: {
      name: name,
      [if regex_pattern_strings != null then 'regex_pattern_strings']: regex_pattern_strings,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_dx_public_virtual_interface - https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param address_family (required) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#address_family.
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#bgp_asn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#name.
    // @param vlan (required) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#vlan.
    // @param route_filter_prefixes (required) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#route_filter_prefixes.
    // @param connection_id (required) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#connection_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#tags.
    // @param amazon_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#amazon_address.
    // @param bgp_auth_key (optional) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#bgp_auth_key.
    // @param customer_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#customer_address.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_public_virtual_interface.html#id.
    // @param timeouts (optional) timeouts block.
    aws_dx_public_virtual_interface(rname, address_family, bgp_asn, name, vlan, route_filter_prefixes, connection_id, tags=null, amazon_address=null, bgp_auth_key=null, customer_address=null, id=null, timeouts={}):: {
      address_family: address_family,
      bgp_asn: bgp_asn,
      name: name,
      vlan: vlan,
      route_filter_prefixes: route_filter_prefixes,
      connection_id: connection_id,
      [if tags != null then 'tags']: tags,
      [if amazon_address != null then 'amazon_address']: amazon_address,
      [if bgp_auth_key != null then 'bgp_auth_key']: bgp_auth_key,
      [if customer_address != null then 'customer_address']: customer_address,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_dx_public_virtual_interface.%s.arn}' % rname,
      aws_device:: '${aws_dx_public_virtual_interface.%s.aws_device}' % rname,
    },
    // aws_emr_cluster - https://www.terraform.io/docs/providers/aws/r/emr_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param service_role (required) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#service_role.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#name.
    // @param release_label (required) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#release_label.
    // @param step (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#step.
    // @param visible_to_all_users (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#visible_to_all_users.
    // @param ebs_root_volume_size (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#ebs_root_volume_size.
    // @param security_configuration (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#security_configuration.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#tags.
    // @param keep_job_flow_alive_when_no_steps (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#keep_job_flow_alive_when_no_steps.
    // @param log_uri (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#log_uri.
    // @param core_instance_count (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#core_instance_count.
    // @param custom_ami_id (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#custom_ami_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#id.
    // @param master_instance_type (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#master_instance_type.
    // @param additional_info (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#additional_info.
    // @param applications (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#applications.
    // @param configurations (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#configurations.
    // @param termination_protection (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#termination_protection.
    // @param scale_down_behavior (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#scale_down_behavior.
    // @param autoscaling_role (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#autoscaling_role.
    // @param configurations_json (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#configurations_json.
    // @param core_instance_type (optional) https://www.terraform.io/docs/providers/aws/r/emr_cluster.html#core_instance_type.
    // @param bootstrap_action (optional) bootstrap_action block.
    // @param core_instance_group (optional) core_instance_group block.
    // @param ec2_attributes (optional) ec2_attributes block.
    // @param instance_group (optional) instance_group block.
    // @param kerberos_attributes (optional) kerberos_attributes block.
    // @param master_instance_group (optional) master_instance_group block.
    aws_emr_cluster(rname, service_role, name, release_label, step=null, visible_to_all_users=null, ebs_root_volume_size=null, security_configuration=null, tags=null, keep_job_flow_alive_when_no_steps=null, log_uri=null, core_instance_count=null, custom_ami_id=null, id=null, master_instance_type=null, additional_info=null, applications=null, configurations=null, termination_protection=null, scale_down_behavior=null, autoscaling_role=null, configurations_json=null, core_instance_type=null, bootstrap_action={}, core_instance_group={}, ec2_attributes={}, instance_group={}, kerberos_attributes={}, master_instance_group={}):: {
      service_role: service_role,
      name: name,
      release_label: release_label,
      [if step != null then 'step']: step,
      [if visible_to_all_users != null then 'visible_to_all_users']: visible_to_all_users,
      [if ebs_root_volume_size != null then 'ebs_root_volume_size']: ebs_root_volume_size,
      [if security_configuration != null then 'security_configuration']: security_configuration,
      [if tags != null then 'tags']: tags,
      [if keep_job_flow_alive_when_no_steps != null then 'keep_job_flow_alive_when_no_steps']: keep_job_flow_alive_when_no_steps,
      [if log_uri != null then 'log_uri']: log_uri,
      [if core_instance_count != null then 'core_instance_count']: core_instance_count,
      [if custom_ami_id != null then 'custom_ami_id']: custom_ami_id,
      [if id != null then 'id']: id,
      [if master_instance_type != null then 'master_instance_type']: master_instance_type,
      [if additional_info != null then 'additional_info']: additional_info,
      [if applications != null then 'applications']: applications,
      [if configurations != null then 'configurations']: configurations,
      [if termination_protection != null then 'termination_protection']: termination_protection,
      [if scale_down_behavior != null then 'scale_down_behavior']: scale_down_behavior,
      [if autoscaling_role != null then 'autoscaling_role']: autoscaling_role,
      [if configurations_json != null then 'configurations_json']: configurations_json,
      [if core_instance_type != null then 'core_instance_type']: core_instance_type,
      [if bootstrap_action != null then 'bootstrap_action']: bootstrap_action,
      [if core_instance_group != null then 'core_instance_group']: core_instance_group,
      [if ec2_attributes != null then 'ec2_attributes']: ec2_attributes,
      [if instance_group != null then 'instance_group']: instance_group,
      [if kerberos_attributes != null then 'kerberos_attributes']: kerberos_attributes,
      [if master_instance_group != null then 'master_instance_group']: master_instance_group,
      rname:: rname,
      cluster_state:: '${aws_emr_cluster.%s.cluster_state}' % rname,
      master_public_dns:: '${aws_emr_cluster.%s.master_public_dns}' % rname,
    },
    // aws_service_discovery_public_dns_namespace - https://www.terraform.io/docs/providers/aws/r/service_discovery_public_dns_namespace.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/service_discovery_public_dns_namespace.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_public_dns_namespace.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_public_dns_namespace.html#id.
    aws_service_discovery_public_dns_namespace(rname, name, description=null, id=null):: {
      name: name,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_service_discovery_public_dns_namespace.%s.arn}' % rname,
      hosted_zone:: '${aws_service_discovery_public_dns_namespace.%s.hosted_zone}' % rname,
    },
    // aws_kms_alias - https://www.terraform.io/docs/providers/aws/r/kms_alias.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param target_key_id (required) https://www.terraform.io/docs/providers/aws/r/kms_alias.html#target_key_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kms_alias.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/kms_alias.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/kms_alias.html#name_prefix.
    aws_kms_alias(rname, target_key_id, id=null, name=null, name_prefix=null):: {
      target_key_id: target_key_id,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      rname:: rname,
      arn:: '${aws_kms_alias.%s.arn}' % rname,
      target_key_arn:: '${aws_kms_alias.%s.target_key_arn}' % rname,
    },
    // aws_redshift_parameter_group - https://www.terraform.io/docs/providers/aws/r/redshift_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/redshift_parameter_group.html#family.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/redshift_parameter_group.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/redshift_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_parameter_group.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/redshift_parameter_group.html#tags.
    // @param parameter (optional) parameter block.
    aws_redshift_parameter_group(rname, family, name, description=null, id=null, tags=null, parameter={}):: {
      family: family,
      name: name,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if parameter != null then 'parameter']: parameter,
      rname:: rname,
      arn:: '${aws_redshift_parameter_group.%s.arn}' % rname,
    },
    // aws_sagemaker_model - https://www.terraform.io/docs/providers/aws/r/sagemaker_model.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param execution_role_arn (required) https://www.terraform.io/docs/providers/aws/r/sagemaker_model.html#execution_role_arn.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_model.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_model.html#tags.
    // @param enable_network_isolation (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_model.html#enable_network_isolation.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_model.html#id.
    // @param container (optional) container block.
    // @param primary_container (optional) primary_container block.
    // @param vpc_config (optional) vpc_config block.
    aws_sagemaker_model(rname, execution_role_arn, name=null, tags=null, enable_network_isolation=null, id=null, container={}, primary_container={}, vpc_config={}):: {
      execution_role_arn: execution_role_arn,
      [if name != null then 'name']: name,
      [if tags != null then 'tags']: tags,
      [if enable_network_isolation != null then 'enable_network_isolation']: enable_network_isolation,
      [if id != null then 'id']: id,
      [if container != null then 'container']: container,
      [if primary_container != null then 'primary_container']: primary_container,
      [if vpc_config != null then 'vpc_config']: vpc_config,
      rname:: rname,
      arn:: '${aws_sagemaker_model.%s.arn}' % rname,
    },
    // aws_acm_certificate_validation - https://www.terraform.io/docs/providers/aws/r/acm_certificate_validation.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate_arn (required) https://www.terraform.io/docs/providers/aws/r/acm_certificate_validation.html#certificate_arn.
    // @param validation_record_fqdns (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate_validation.html#validation_record_fqdns.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/acm_certificate_validation.html#id.
    // @param timeouts (optional) timeouts block.
    aws_acm_certificate_validation(rname, certificate_arn, validation_record_fqdns=null, id=null, timeouts={}):: {
      certificate_arn: certificate_arn,
      [if validation_record_fqdns != null then 'validation_record_fqdns']: validation_record_fqdns,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
    },
    // aws_eip_association - https://www.terraform.io/docs/providers/aws/r/eip_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param private_ip_address (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#private_ip_address.
    // @param public_ip (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#public_ip.
    // @param allocation_id (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#allocation_id.
    // @param allow_reassociation (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#allow_reassociation.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#id.
    // @param instance_id (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#instance_id.
    // @param network_interface_id (optional) https://www.terraform.io/docs/providers/aws/r/eip_association.html#network_interface_id.
    aws_eip_association(rname, private_ip_address=null, public_ip=null, allocation_id=null, allow_reassociation=null, id=null, instance_id=null, network_interface_id=null):: {
      [if private_ip_address != null then 'private_ip_address']: private_ip_address,
      [if public_ip != null then 'public_ip']: public_ip,
      [if allocation_id != null then 'allocation_id']: allocation_id,
      [if allow_reassociation != null then 'allow_reassociation']: allow_reassociation,
      [if id != null then 'id']: id,
      [if instance_id != null then 'instance_id']: instance_id,
      [if network_interface_id != null then 'network_interface_id']: network_interface_id,
      rname:: rname,
    },
    // aws_glue_catalog_table - https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#name.
    // @param database_name (required) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#database_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#id.
    // @param parameters (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#parameters.
    // @param owner (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#owner.
    // @param retention (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#retention.
    // @param table_type (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#table_type.
    // @param view_expanded_text (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#view_expanded_text.
    // @param view_original_text (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#view_original_text.
    // @param catalog_id (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#catalog_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/glue_catalog_table.html#description.
    // @param partition_keys (optional) partition_keys block.
    // @param storage_descriptor (optional) storage_descriptor block.
    aws_glue_catalog_table(rname, name, database_name, id=null, parameters=null, owner=null, retention=null, table_type=null, view_expanded_text=null, view_original_text=null, catalog_id=null, description=null, partition_keys={}, storage_descriptor={}):: {
      name: name,
      database_name: database_name,
      [if id != null then 'id']: id,
      [if parameters != null then 'parameters']: parameters,
      [if owner != null then 'owner']: owner,
      [if retention != null then 'retention']: retention,
      [if table_type != null then 'table_type']: table_type,
      [if view_expanded_text != null then 'view_expanded_text']: view_expanded_text,
      [if view_original_text != null then 'view_original_text']: view_original_text,
      [if catalog_id != null then 'catalog_id']: catalog_id,
      [if description != null then 'description']: description,
      [if partition_keys != null then 'partition_keys']: partition_keys,
      [if storage_descriptor != null then 'storage_descriptor']: storage_descriptor,
      rname:: rname,
    },
    // aws_datasync_location_nfs - https://www.terraform.io/docs/providers/aws/r/datasync_location_nfs.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param server_hostname (required) https://www.terraform.io/docs/providers/aws/r/datasync_location_nfs.html#server_hostname.
    // @param subdirectory (required) https://www.terraform.io/docs/providers/aws/r/datasync_location_nfs.html#subdirectory.
    // @param on_prem_config (required) on_prem_config block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_nfs.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_nfs.html#tags.
    aws_datasync_location_nfs(rname, server_hostname, subdirectory, on_prem_config, id=null, tags=null):: {
      server_hostname: server_hostname,
      subdirectory: subdirectory,
      on_prem_config: on_prem_config,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      arn:: '${aws_datasync_location_nfs.%s.arn}' % rname,
      uri:: '${aws_datasync_location_nfs.%s.uri}' % rname,
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
      [if display_name != null then 'display_name']: display_name,
      [if id != null then 'id']: id,
      rname:: rname,
      website_ca_id:: '${aws_worklink_website_certificate_authority_association.%s.website_ca_id}' % rname,
    },
    // aws_api_gateway_authorizer - https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#name.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#rest_api_id.
    // @param authorizer_uri (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#authorizer_uri.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#id.
    // @param identity_source (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#identity_source.
    // @param authorizer_credentials (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#authorizer_credentials.
    // @param authorizer_result_ttl_in_seconds (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#authorizer_result_ttl_in_seconds.
    // @param identity_validation_expression (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#identity_validation_expression.
    // @param provider_arns (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#provider_arns.
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_authorizer.html#type.
    aws_api_gateway_authorizer(rname, name, rest_api_id, authorizer_uri=null, id=null, identity_source=null, authorizer_credentials=null, authorizer_result_ttl_in_seconds=null, identity_validation_expression=null, provider_arns=null, type=null):: {
      name: name,
      rest_api_id: rest_api_id,
      [if authorizer_uri != null then 'authorizer_uri']: authorizer_uri,
      [if id != null then 'id']: id,
      [if identity_source != null then 'identity_source']: identity_source,
      [if authorizer_credentials != null then 'authorizer_credentials']: authorizer_credentials,
      [if authorizer_result_ttl_in_seconds != null then 'authorizer_result_ttl_in_seconds']: authorizer_result_ttl_in_seconds,
      [if identity_validation_expression != null then 'identity_validation_expression']: identity_validation_expression,
      [if provider_arns != null then 'provider_arns']: provider_arns,
      [if type != null then 'type']: type,
      rname:: rname,
    },
    // aws_opsworks_rails_app_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#stack_id.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#elastic_load_balancer.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#id.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#instance_shutdown_timeout.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#use_ebs_optimized_instances.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#auto_assign_public_ips.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#auto_healing.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_setup_recipes.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_security_group_ids.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#drain_elb_on_shutdown.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_json.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_shutdown_recipes.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_undeploy_recipes.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#install_updates_on_boot.
    // @param rubygems_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#rubygems_version.
    // @param app_server (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#app_server.
    // @param bundler_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#bundler_version.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_instance_profile_arn.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#system_packages.
    // @param manage_bundler (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#manage_bundler.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#name.
    // @param passenger_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#passenger_version.
    // @param ruby_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#ruby_version.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#auto_assign_elastic_ips.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_configure_recipes.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rails_app_layer.html#custom_deploy_recipes.
    // @param ebs_volume (optional) ebs_volume block.
    aws_opsworks_rails_app_layer(rname, stack_id, elastic_load_balancer=null, id=null, instance_shutdown_timeout=null, use_ebs_optimized_instances=null, auto_assign_public_ips=null, auto_healing=null, custom_setup_recipes=null, custom_security_group_ids=null, drain_elb_on_shutdown=null, custom_json=null, custom_shutdown_recipes=null, custom_undeploy_recipes=null, install_updates_on_boot=null, rubygems_version=null, app_server=null, bundler_version=null, custom_instance_profile_arn=null, system_packages=null, manage_bundler=null, name=null, passenger_version=null, ruby_version=null, auto_assign_elastic_ips=null, custom_configure_recipes=null, custom_deploy_recipes=null, ebs_volume={}):: {
      stack_id: stack_id,
      [if elastic_load_balancer != null then 'elastic_load_balancer']: elastic_load_balancer,
      [if id != null then 'id']: id,
      [if instance_shutdown_timeout != null then 'instance_shutdown_timeout']: instance_shutdown_timeout,
      [if use_ebs_optimized_instances != null then 'use_ebs_optimized_instances']: use_ebs_optimized_instances,
      [if auto_assign_public_ips != null then 'auto_assign_public_ips']: auto_assign_public_ips,
      [if auto_healing != null then 'auto_healing']: auto_healing,
      [if custom_setup_recipes != null then 'custom_setup_recipes']: custom_setup_recipes,
      [if custom_security_group_ids != null then 'custom_security_group_ids']: custom_security_group_ids,
      [if drain_elb_on_shutdown != null then 'drain_elb_on_shutdown']: drain_elb_on_shutdown,
      [if custom_json != null then 'custom_json']: custom_json,
      [if custom_shutdown_recipes != null then 'custom_shutdown_recipes']: custom_shutdown_recipes,
      [if custom_undeploy_recipes != null then 'custom_undeploy_recipes']: custom_undeploy_recipes,
      [if install_updates_on_boot != null then 'install_updates_on_boot']: install_updates_on_boot,
      [if rubygems_version != null then 'rubygems_version']: rubygems_version,
      [if app_server != null then 'app_server']: app_server,
      [if bundler_version != null then 'bundler_version']: bundler_version,
      [if custom_instance_profile_arn != null then 'custom_instance_profile_arn']: custom_instance_profile_arn,
      [if system_packages != null then 'system_packages']: system_packages,
      [if manage_bundler != null then 'manage_bundler']: manage_bundler,
      [if name != null then 'name']: name,
      [if passenger_version != null then 'passenger_version']: passenger_version,
      [if ruby_version != null then 'ruby_version']: ruby_version,
      [if auto_assign_elastic_ips != null then 'auto_assign_elastic_ips']: auto_assign_elastic_ips,
      [if custom_configure_recipes != null then 'custom_configure_recipes']: custom_configure_recipes,
      [if custom_deploy_recipes != null then 'custom_deploy_recipes']: custom_deploy_recipes,
      [if ebs_volume != null then 'ebs_volume']: ebs_volume,
      rname:: rname,
    },
    // aws_spot_fleet_request - https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param target_capacity (required) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#target_capacity.
    // @param iam_fleet_role (required) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#iam_fleet_role.
    // @param launch_specification (required) launch_specification block.
    // @param valid_until (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#valid_until.
    // @param allocation_strategy (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#allocation_strategy.
    // @param instance_interruption_behaviour (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#instance_interruption_behaviour.
    // @param instance_pools_to_use_count (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#instance_pools_to_use_count.
    // @param load_balancers (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#load_balancers.
    // @param fleet_type (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#fleet_type.
    // @param replace_unhealthy_instances (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#replace_unhealthy_instances.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#id.
    // @param wait_for_fulfillment (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#wait_for_fulfillment.
    // @param excess_capacity_termination_policy (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#excess_capacity_termination_policy.
    // @param spot_price (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#spot_price.
    // @param target_group_arns (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#target_group_arns.
    // @param terminate_instances_with_expiration (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#terminate_instances_with_expiration.
    // @param valid_from (optional) https://www.terraform.io/docs/providers/aws/r/spot_fleet_request.html#valid_from.
    // @param timeouts (optional) timeouts block.
    aws_spot_fleet_request(rname, target_capacity, iam_fleet_role, launch_specification, valid_until=null, allocation_strategy=null, instance_interruption_behaviour=null, instance_pools_to_use_count=null, load_balancers=null, fleet_type=null, replace_unhealthy_instances=null, id=null, wait_for_fulfillment=null, excess_capacity_termination_policy=null, spot_price=null, target_group_arns=null, terminate_instances_with_expiration=null, valid_from=null, timeouts={}):: {
      target_capacity: target_capacity,
      iam_fleet_role: iam_fleet_role,
      launch_specification: launch_specification,
      [if valid_until != null then 'valid_until']: valid_until,
      [if allocation_strategy != null then 'allocation_strategy']: allocation_strategy,
      [if instance_interruption_behaviour != null then 'instance_interruption_behaviour']: instance_interruption_behaviour,
      [if instance_pools_to_use_count != null then 'instance_pools_to_use_count']: instance_pools_to_use_count,
      [if load_balancers != null then 'load_balancers']: load_balancers,
      [if fleet_type != null then 'fleet_type']: fleet_type,
      [if replace_unhealthy_instances != null then 'replace_unhealthy_instances']: replace_unhealthy_instances,
      [if id != null then 'id']: id,
      [if wait_for_fulfillment != null then 'wait_for_fulfillment']: wait_for_fulfillment,
      [if excess_capacity_termination_policy != null then 'excess_capacity_termination_policy']: excess_capacity_termination_policy,
      [if spot_price != null then 'spot_price']: spot_price,
      [if target_group_arns != null then 'target_group_arns']: target_group_arns,
      [if terminate_instances_with_expiration != null then 'terminate_instances_with_expiration']: terminate_instances_with_expiration,
      [if valid_from != null then 'valid_from']: valid_from,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      client_token:: '${aws_spot_fleet_request.%s.client_token}' % rname,
      spot_request_state:: '${aws_spot_fleet_request.%s.spot_request_state}' % rname,
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
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if comment != null then 'comment']: comment,
      rname:: rname,
      etag:: '${aws_cloudfront_public_key.%s.etag}' % rname,
      caller_reference:: '${aws_cloudfront_public_key.%s.caller_reference}' % rname,
    },
    // aws_sns_platform_application - https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#name.
    // @param platform (required) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#platform.
    // @param platform_credential (required) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#platform_credential.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#id.
    // @param platform_principal (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#platform_principal.
    // @param success_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#success_feedback_role_arn.
    // @param success_feedback_sample_rate (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#success_feedback_sample_rate.
    // @param failure_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#failure_feedback_role_arn.
    // @param event_delivery_failure_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#event_delivery_failure_topic_arn.
    // @param event_endpoint_created_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#event_endpoint_created_topic_arn.
    // @param event_endpoint_deleted_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#event_endpoint_deleted_topic_arn.
    // @param event_endpoint_updated_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_platform_application.html#event_endpoint_updated_topic_arn.
    aws_sns_platform_application(rname, name, platform, platform_credential, id=null, platform_principal=null, success_feedback_role_arn=null, success_feedback_sample_rate=null, failure_feedback_role_arn=null, event_delivery_failure_topic_arn=null, event_endpoint_created_topic_arn=null, event_endpoint_deleted_topic_arn=null, event_endpoint_updated_topic_arn=null):: {
      name: name,
      platform: platform,
      platform_credential: platform_credential,
      [if id != null then 'id']: id,
      [if platform_principal != null then 'platform_principal']: platform_principal,
      [if success_feedback_role_arn != null then 'success_feedback_role_arn']: success_feedback_role_arn,
      [if success_feedback_sample_rate != null then 'success_feedback_sample_rate']: success_feedback_sample_rate,
      [if failure_feedback_role_arn != null then 'failure_feedback_role_arn']: failure_feedback_role_arn,
      [if event_delivery_failure_topic_arn != null then 'event_delivery_failure_topic_arn']: event_delivery_failure_topic_arn,
      [if event_endpoint_created_topic_arn != null then 'event_endpoint_created_topic_arn']: event_endpoint_created_topic_arn,
      [if event_endpoint_deleted_topic_arn != null then 'event_endpoint_deleted_topic_arn']: event_endpoint_deleted_topic_arn,
      [if event_endpoint_updated_topic_arn != null then 'event_endpoint_updated_topic_arn']: event_endpoint_updated_topic_arn,
      rname:: rname,
      arn:: '${aws_sns_platform_application.%s.arn}' % rname,
    },
    // aws_dx_private_virtual_interface - https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#bgp_asn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#name.
    // @param address_family (required) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#address_family.
    // @param connection_id (required) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#connection_id.
    // @param vlan (required) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#vlan.
    // @param vpn_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#vpn_gateway_id.
    // @param bgp_auth_key (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#bgp_auth_key.
    // @param customer_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#customer_address.
    // @param dx_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#dx_gateway_id.
    // @param amazon_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#amazon_address.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#id.
    // @param mtu (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#mtu.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_private_virtual_interface.html#tags.
    // @param timeouts (optional) timeouts block.
    aws_dx_private_virtual_interface(rname, bgp_asn, name, address_family, connection_id, vlan, vpn_gateway_id=null, bgp_auth_key=null, customer_address=null, dx_gateway_id=null, amazon_address=null, id=null, mtu=null, tags=null, timeouts={}):: {
      bgp_asn: bgp_asn,
      name: name,
      address_family: address_family,
      connection_id: connection_id,
      vlan: vlan,
      [if vpn_gateway_id != null then 'vpn_gateway_id']: vpn_gateway_id,
      [if bgp_auth_key != null then 'bgp_auth_key']: bgp_auth_key,
      [if customer_address != null then 'customer_address']: customer_address,
      [if dx_gateway_id != null then 'dx_gateway_id']: dx_gateway_id,
      [if amazon_address != null then 'amazon_address']: amazon_address,
      [if id != null then 'id']: id,
      [if mtu != null then 'mtu']: mtu,
      [if tags != null then 'tags']: tags,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      aws_device:: '${aws_dx_private_virtual_interface.%s.aws_device}' % rname,
      jumbo_frame_capable:: '${aws_dx_private_virtual_interface.%s.jumbo_frame_capable}' % rname,
      arn:: '${aws_dx_private_virtual_interface.%s.arn}' % rname,
    },
    // aws_ec2_transit_gateway - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param auto_accept_shared_attachments (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#auto_accept_shared_attachments.
    // @param default_route_table_association (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#default_route_table_association.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#description.
    // @param amazon_side_asn (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#amazon_side_asn.
    // @param default_route_table_propagation (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#default_route_table_propagation.
    // @param dns_support (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#dns_support.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#tags.
    // @param vpn_ecmp_support (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway.html#vpn_ecmp_support.
    aws_ec2_transit_gateway(rname, auto_accept_shared_attachments=null, default_route_table_association=null, description=null, amazon_side_asn=null, default_route_table_propagation=null, dns_support=null, id=null, tags=null, vpn_ecmp_support=null):: {
      [if auto_accept_shared_attachments != null then 'auto_accept_shared_attachments']: auto_accept_shared_attachments,
      [if default_route_table_association != null then 'default_route_table_association']: default_route_table_association,
      [if description != null then 'description']: description,
      [if amazon_side_asn != null then 'amazon_side_asn']: amazon_side_asn,
      [if default_route_table_propagation != null then 'default_route_table_propagation']: default_route_table_propagation,
      [if dns_support != null then 'dns_support']: dns_support,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if vpn_ecmp_support != null then 'vpn_ecmp_support']: vpn_ecmp_support,
      rname:: rname,
      arn:: '${aws_ec2_transit_gateway.%s.arn}' % rname,
      association_default_route_table_id:: '${aws_ec2_transit_gateway.%s.association_default_route_table_id}' % rname,
      owner_id:: '${aws_ec2_transit_gateway.%s.owner_id}' % rname,
      propagation_default_route_table_id:: '${aws_ec2_transit_gateway.%s.propagation_default_route_table_id}' % rname,
    },
    // aws_iam_instance_profile - https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html#name_prefix.
    // @param roles (optional) https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html#roles.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html#name.
    // @param path (optional) https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html#path.
    // @param role (optional) https://www.terraform.io/docs/providers/aws/r/iam_instance_profile.html#role.
    aws_iam_instance_profile(rname, name_prefix=null, roles=null, id=null, name=null, path=null, role=null):: {
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if roles != null then 'roles']: roles,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if path != null then 'path']: path,
      [if role != null then 'role']: role,
      rname:: rname,
      arn:: '${aws_iam_instance_profile.%s.arn}' % rname,
      unique_id:: '${aws_iam_instance_profile.%s.unique_id}' % rname,
      create_date:: '${aws_iam_instance_profile.%s.create_date}' % rname,
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
      [if account_id != null then 'account_id']: account_id,
      [if block_public_acls != null then 'block_public_acls']: block_public_acls,
      [if block_public_policy != null then 'block_public_policy']: block_public_policy,
      [if id != null then 'id']: id,
      [if ignore_public_acls != null then 'ignore_public_acls']: ignore_public_acls,
      [if restrict_public_buckets != null then 'restrict_public_buckets']: restrict_public_buckets,
      rname:: rname,
    },
    // aws_config_organization_custom_rule - https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param lambda_function_arn (required) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#lambda_function_arn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#name.
    // @param trigger_types (required) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#trigger_types.
    // @param excluded_accounts (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#excluded_accounts.
    // @param maximum_execution_frequency (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#maximum_execution_frequency.
    // @param resource_id_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#resource_id_scope.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#description.
    // @param resource_types_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#resource_types_scope.
    // @param tag_key_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#tag_key_scope.
    // @param tag_value_scope (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#tag_value_scope.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#id.
    // @param input_parameters (optional) https://www.terraform.io/docs/providers/aws/r/config_organization_custom_rule.html#input_parameters.
    // @param timeouts (optional) timeouts block.
    aws_config_organization_custom_rule(rname, lambda_function_arn, name, trigger_types, excluded_accounts=null, maximum_execution_frequency=null, resource_id_scope=null, description=null, resource_types_scope=null, tag_key_scope=null, tag_value_scope=null, id=null, input_parameters=null, timeouts={}):: {
      lambda_function_arn: lambda_function_arn,
      name: name,
      trigger_types: trigger_types,
      [if excluded_accounts != null then 'excluded_accounts']: excluded_accounts,
      [if maximum_execution_frequency != null then 'maximum_execution_frequency']: maximum_execution_frequency,
      [if resource_id_scope != null then 'resource_id_scope']: resource_id_scope,
      [if description != null then 'description']: description,
      [if resource_types_scope != null then 'resource_types_scope']: resource_types_scope,
      [if tag_key_scope != null then 'tag_key_scope']: tag_key_scope,
      [if tag_value_scope != null then 'tag_value_scope']: tag_value_scope,
      [if id != null then 'id']: id,
      [if input_parameters != null then 'input_parameters']: input_parameters,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_config_organization_custom_rule.%s.arn}' % rname,
    },
    // aws_default_security_group - https://www.terraform.io/docs/providers/aws/r/default_security_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param egress (optional) https://www.terraform.io/docs/providers/aws/r/default_security_group.html#egress.
    // @param ingress (optional) https://www.terraform.io/docs/providers/aws/r/default_security_group.html#ingress.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/default_security_group.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/default_security_group.html#id.
    // @param revoke_rules_on_delete (optional) https://www.terraform.io/docs/providers/aws/r/default_security_group.html#revoke_rules_on_delete.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/default_security_group.html#vpc_id.
    // @param timeouts (optional) timeouts block.
    aws_default_security_group(rname, egress=null, ingress=null, tags=null, id=null, revoke_rules_on_delete=null, vpc_id=null, timeouts={}):: {
      [if egress != null then 'egress']: egress,
      [if ingress != null then 'ingress']: ingress,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if revoke_rules_on_delete != null then 'revoke_rules_on_delete']: revoke_rules_on_delete,
      [if vpc_id != null then 'vpc_id']: vpc_id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      owner_id:: '${aws_default_security_group.%s.owner_id}' % rname,
      arn:: '${aws_default_security_group.%s.arn}' % rname,
      name:: '${aws_default_security_group.%s.name}' % rname,
    },
    // aws_dx_hosted_public_virtual_interface - https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param connection_id (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#connection_id.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#name.
    // @param route_filter_prefixes (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#route_filter_prefixes.
    // @param vlan (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#vlan.
    // @param address_family (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#address_family.
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#bgp_asn.
    // @param owner_account_id (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#owner_account_id.
    // @param bgp_auth_key (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#bgp_auth_key.
    // @param amazon_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#amazon_address.
    // @param customer_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#customer_address.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface.html#id.
    // @param timeouts (optional) timeouts block.
    aws_dx_hosted_public_virtual_interface(rname, connection_id, name, route_filter_prefixes, vlan, address_family, bgp_asn, owner_account_id, bgp_auth_key=null, amazon_address=null, customer_address=null, id=null, timeouts={}):: {
      connection_id: connection_id,
      name: name,
      route_filter_prefixes: route_filter_prefixes,
      vlan: vlan,
      address_family: address_family,
      bgp_asn: bgp_asn,
      owner_account_id: owner_account_id,
      [if bgp_auth_key != null then 'bgp_auth_key']: bgp_auth_key,
      [if amazon_address != null then 'amazon_address']: amazon_address,
      [if customer_address != null then 'customer_address']: customer_address,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_dx_hosted_public_virtual_interface.%s.arn}' % rname,
      aws_device:: '${aws_dx_hosted_public_virtual_interface.%s.aws_device}' % rname,
    },
    // aws_opsworks_ganglia_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param password (required) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#password.
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#stack_id.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#system_packages.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#auto_assign_elastic_ips.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_configure_recipes.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_security_group_ids.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_setup_recipes.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_undeploy_recipes.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_deploy_recipes.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_instance_profile_arn.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_json.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#name.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#use_ebs_optimized_instances.
    // @param username (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#username.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#auto_assign_public_ips.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#custom_shutdown_recipes.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#elastic_load_balancer.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#instance_shutdown_timeout.
    // @param url (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#url.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#auto_healing.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#drain_elb_on_shutdown.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#id.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_ganglia_layer.html#install_updates_on_boot.
    // @param ebs_volume (optional) ebs_volume block.
    aws_opsworks_ganglia_layer(rname, password, stack_id, system_packages=null, auto_assign_elastic_ips=null, custom_configure_recipes=null, custom_security_group_ids=null, custom_setup_recipes=null, custom_undeploy_recipes=null, custom_deploy_recipes=null, custom_instance_profile_arn=null, custom_json=null, name=null, use_ebs_optimized_instances=null, username=null, auto_assign_public_ips=null, custom_shutdown_recipes=null, elastic_load_balancer=null, instance_shutdown_timeout=null, url=null, auto_healing=null, drain_elb_on_shutdown=null, id=null, install_updates_on_boot=null, ebs_volume={}):: {
      password: password,
      stack_id: stack_id,
      [if system_packages != null then 'system_packages']: system_packages,
      [if auto_assign_elastic_ips != null then 'auto_assign_elastic_ips']: auto_assign_elastic_ips,
      [if custom_configure_recipes != null then 'custom_configure_recipes']: custom_configure_recipes,
      [if custom_security_group_ids != null then 'custom_security_group_ids']: custom_security_group_ids,
      [if custom_setup_recipes != null then 'custom_setup_recipes']: custom_setup_recipes,
      [if custom_undeploy_recipes != null then 'custom_undeploy_recipes']: custom_undeploy_recipes,
      [if custom_deploy_recipes != null then 'custom_deploy_recipes']: custom_deploy_recipes,
      [if custom_instance_profile_arn != null then 'custom_instance_profile_arn']: custom_instance_profile_arn,
      [if custom_json != null then 'custom_json']: custom_json,
      [if name != null then 'name']: name,
      [if use_ebs_optimized_instances != null then 'use_ebs_optimized_instances']: use_ebs_optimized_instances,
      [if username != null then 'username']: username,
      [if auto_assign_public_ips != null then 'auto_assign_public_ips']: auto_assign_public_ips,
      [if custom_shutdown_recipes != null then 'custom_shutdown_recipes']: custom_shutdown_recipes,
      [if elastic_load_balancer != null then 'elastic_load_balancer']: elastic_load_balancer,
      [if instance_shutdown_timeout != null then 'instance_shutdown_timeout']: instance_shutdown_timeout,
      [if url != null then 'url']: url,
      [if auto_healing != null then 'auto_healing']: auto_healing,
      [if drain_elb_on_shutdown != null then 'drain_elb_on_shutdown']: drain_elb_on_shutdown,
      [if id != null then 'id']: id,
      [if install_updates_on_boot != null then 'install_updates_on_boot']: install_updates_on_boot,
      [if ebs_volume != null then 'ebs_volume']: ebs_volume,
      rname:: rname,
    },
    // aws_vpc_dhcp_options - https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#tags.
    // @param domain_name (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#domain_name.
    // @param domain_name_servers (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#domain_name_servers.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#id.
    // @param netbios_name_servers (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#netbios_name_servers.
    // @param netbios_node_type (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#netbios_node_type.
    // @param ntp_servers (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options.html#ntp_servers.
    aws_vpc_dhcp_options(rname, tags=null, domain_name=null, domain_name_servers=null, id=null, netbios_name_servers=null, netbios_node_type=null, ntp_servers=null):: {
      [if tags != null then 'tags']: tags,
      [if domain_name != null then 'domain_name']: domain_name,
      [if domain_name_servers != null then 'domain_name_servers']: domain_name_servers,
      [if id != null then 'id']: id,
      [if netbios_name_servers != null then 'netbios_name_servers']: netbios_name_servers,
      [if netbios_node_type != null then 'netbios_node_type']: netbios_node_type,
      [if ntp_servers != null then 'ntp_servers']: ntp_servers,
      rname:: rname,
      owner_id:: '${aws_vpc_dhcp_options.%s.owner_id}' % rname,
    },
    // aws_api_gateway_model - https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param content_type (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html#content_type.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html#name.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html#rest_api_id.
    // @param schema (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html#schema.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_model.html#id.
    aws_api_gateway_model(rname, content_type, name, rest_api_id, schema=null, description=null, id=null):: {
      content_type: content_type,
      name: name,
      rest_api_id: rest_api_id,
      [if schema != null then 'schema']: schema,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_globalaccelerator_accelerator - https://www.terraform.io/docs/providers/aws/r/globalaccelerator_accelerator.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_accelerator.html#name.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_accelerator.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_accelerator.html#id.
    // @param ip_address_type (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_accelerator.html#ip_address_type.
    // @param attributes (optional) attributes block.
    aws_globalaccelerator_accelerator(rname, name, enabled=null, id=null, ip_address_type=null, attributes={}):: {
      name: name,
      [if enabled != null then 'enabled']: enabled,
      [if id != null then 'id']: id,
      [if ip_address_type != null then 'ip_address_type']: ip_address_type,
      [if attributes != null then 'attributes']: attributes,
      rname:: rname,
      ip_sets:: '${aws_globalaccelerator_accelerator.%s.ip_sets}' % rname,
    },
    // aws_glue_trigger - https://www.terraform.io/docs/providers/aws/r/glue_trigger.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_trigger.html#name.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/glue_trigger.html#type.
    // @param actions (required) actions block.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/glue_trigger.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_trigger.html#id.
    // @param schedule (optional) https://www.terraform.io/docs/providers/aws/r/glue_trigger.html#schedule.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/glue_trigger.html#description.
    // @param predicate (optional) predicate block.
    // @param timeouts (optional) timeouts block.
    aws_glue_trigger(rname, name, type, actions, enabled=null, id=null, schedule=null, description=null, predicate={}, timeouts={}):: {
      name: name,
      type: type,
      actions: actions,
      [if enabled != null then 'enabled']: enabled,
      [if id != null then 'id']: id,
      [if schedule != null then 'schedule']: schedule,
      [if description != null then 'description']: description,
      [if predicate != null then 'predicate']: predicate,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
    },
    // aws_opsworks_nodejs_app_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#stack_id.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#auto_assign_elastic_ips.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#drain_elb_on_shutdown.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#instance_shutdown_timeout.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#auto_healing.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_deploy_recipes.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_shutdown_recipes.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_undeploy_recipes.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#install_updates_on_boot.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#system_packages.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#auto_assign_public_ips.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_instance_profile_arn.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_json.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_security_group_ids.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#use_ebs_optimized_instances.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_configure_recipes.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#custom_setup_recipes.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#elastic_load_balancer.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#name.
    // @param nodejs_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_nodejs_app_layer.html#nodejs_version.
    // @param ebs_volume (optional) ebs_volume block.
    aws_opsworks_nodejs_app_layer(rname, stack_id, auto_assign_elastic_ips=null, drain_elb_on_shutdown=null, instance_shutdown_timeout=null, auto_healing=null, custom_deploy_recipes=null, custom_shutdown_recipes=null, custom_undeploy_recipes=null, install_updates_on_boot=null, system_packages=null, auto_assign_public_ips=null, custom_instance_profile_arn=null, custom_json=null, custom_security_group_ids=null, use_ebs_optimized_instances=null, custom_configure_recipes=null, custom_setup_recipes=null, elastic_load_balancer=null, id=null, name=null, nodejs_version=null, ebs_volume={}):: {
      stack_id: stack_id,
      [if auto_assign_elastic_ips != null then 'auto_assign_elastic_ips']: auto_assign_elastic_ips,
      [if drain_elb_on_shutdown != null then 'drain_elb_on_shutdown']: drain_elb_on_shutdown,
      [if instance_shutdown_timeout != null then 'instance_shutdown_timeout']: instance_shutdown_timeout,
      [if auto_healing != null then 'auto_healing']: auto_healing,
      [if custom_deploy_recipes != null then 'custom_deploy_recipes']: custom_deploy_recipes,
      [if custom_shutdown_recipes != null then 'custom_shutdown_recipes']: custom_shutdown_recipes,
      [if custom_undeploy_recipes != null then 'custom_undeploy_recipes']: custom_undeploy_recipes,
      [if install_updates_on_boot != null then 'install_updates_on_boot']: install_updates_on_boot,
      [if system_packages != null then 'system_packages']: system_packages,
      [if auto_assign_public_ips != null then 'auto_assign_public_ips']: auto_assign_public_ips,
      [if custom_instance_profile_arn != null then 'custom_instance_profile_arn']: custom_instance_profile_arn,
      [if custom_json != null then 'custom_json']: custom_json,
      [if custom_security_group_ids != null then 'custom_security_group_ids']: custom_security_group_ids,
      [if use_ebs_optimized_instances != null then 'use_ebs_optimized_instances']: use_ebs_optimized_instances,
      [if custom_configure_recipes != null then 'custom_configure_recipes']: custom_configure_recipes,
      [if custom_setup_recipes != null then 'custom_setup_recipes']: custom_setup_recipes,
      [if elastic_load_balancer != null then 'elastic_load_balancer']: elastic_load_balancer,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if nodejs_version != null then 'nodejs_version']: nodejs_version,
      [if ebs_volume != null then 'ebs_volume']: ebs_volume,
      rname:: rname,
    },
    // aws_alb - https://www.terraform.io/docs/providers/aws/r/alb.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param idle_timeout (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#idle_timeout.
    // @param internal (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#internal.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#security_groups.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#tags.
    // @param enable_deletion_protection (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#enable_deletion_protection.
    // @param enable_http2 (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#enable_http2.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#id.
    // @param enable_cross_zone_load_balancing (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#enable_cross_zone_load_balancing.
    // @param subnets (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#subnets.
    // @param ip_address_type (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#ip_address_type.
    // @param load_balancer_type (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#load_balancer_type.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/alb.html#name_prefix.
    // @param access_logs (optional) access_logs block.
    // @param subnet_mapping (optional) subnet_mapping block.
    // @param timeouts (optional) timeouts block.
    aws_alb(rname, idle_timeout=null, internal=null, security_groups=null, tags=null, enable_deletion_protection=null, enable_http2=null, id=null, enable_cross_zone_load_balancing=null, subnets=null, ip_address_type=null, load_balancer_type=null, name=null, name_prefix=null, access_logs={}, subnet_mapping={}, timeouts={}):: {
      [if idle_timeout != null then 'idle_timeout']: idle_timeout,
      [if internal != null then 'internal']: internal,
      [if security_groups != null then 'security_groups']: security_groups,
      [if tags != null then 'tags']: tags,
      [if enable_deletion_protection != null then 'enable_deletion_protection']: enable_deletion_protection,
      [if enable_http2 != null then 'enable_http2']: enable_http2,
      [if id != null then 'id']: id,
      [if enable_cross_zone_load_balancing != null then 'enable_cross_zone_load_balancing']: enable_cross_zone_load_balancing,
      [if subnets != null then 'subnets']: subnets,
      [if ip_address_type != null then 'ip_address_type']: ip_address_type,
      [if load_balancer_type != null then 'load_balancer_type']: load_balancer_type,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if access_logs != null then 'access_logs']: access_logs,
      [if subnet_mapping != null then 'subnet_mapping']: subnet_mapping,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_alb.%s.arn}' % rname,
      dns_name:: '${aws_alb.%s.dns_name}' % rname,
      zone_id:: '${aws_alb.%s.zone_id}' % rname,
      arn_suffix:: '${aws_alb.%s.arn_suffix}' % rname,
      vpc_id:: '${aws_alb.%s.vpc_id}' % rname,
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
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
      vpc_id:: '${aws_dax_subnet_group.%s.vpc_id}' % rname,
    },
    // aws_dx_bgp_peer - https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param virtual_interface_id (required) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#virtual_interface_id.
    // @param address_family (required) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#address_family.
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#bgp_asn.
    // @param amazon_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#amazon_address.
    // @param bgp_auth_key (optional) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#bgp_auth_key.
    // @param customer_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#customer_address.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_bgp_peer.html#id.
    // @param timeouts (optional) timeouts block.
    aws_dx_bgp_peer(rname, virtual_interface_id, address_family, bgp_asn, amazon_address=null, bgp_auth_key=null, customer_address=null, id=null, timeouts={}):: {
      virtual_interface_id: virtual_interface_id,
      address_family: address_family,
      bgp_asn: bgp_asn,
      [if amazon_address != null then 'amazon_address']: amazon_address,
      [if bgp_auth_key != null then 'bgp_auth_key']: bgp_auth_key,
      [if customer_address != null then 'customer_address']: customer_address,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      bgp_peer_id:: '${aws_dx_bgp_peer.%s.bgp_peer_id}' % rname,
      aws_device:: '${aws_dx_bgp_peer.%s.aws_device}' % rname,
      bgp_status:: '${aws_dx_bgp_peer.%s.bgp_status}' % rname,
    },
    // aws_s3_bucket - https://www.terraform.io/docs/providers/aws/r/s3_bucket.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param hosted_zone_id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#hosted_zone_id.
    // @param region (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#region.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#tags.
    // @param website_endpoint (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#website_endpoint.
    // @param acl (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#acl.
    // @param bucket (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#bucket.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#force_destroy.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#policy.
    // @param acceleration_status (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#acceleration_status.
    // @param arn (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#arn.
    // @param request_payer (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#request_payer.
    // @param bucket_prefix (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#bucket_prefix.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#id.
    // @param website_domain (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket.html#website_domain.
    // @param object_lock_configuration (optional) object_lock_configuration block.
    // @param replication_configuration (optional) replication_configuration block.
    // @param server_side_encryption_configuration (optional) server_side_encryption_configuration block.
    // @param versioning (optional) versioning block.
    // @param website (optional) website block.
    // @param cors_rule (optional) cors_rule block.
    // @param lifecycle_rule (optional) lifecycle_rule block.
    // @param logging (optional) logging block.
    aws_s3_bucket(rname, hosted_zone_id=null, region=null, tags=null, website_endpoint=null, acl=null, bucket=null, force_destroy=null, policy=null, acceleration_status=null, arn=null, request_payer=null, bucket_prefix=null, id=null, website_domain=null, object_lock_configuration={}, replication_configuration={}, server_side_encryption_configuration={}, versioning={}, website={}, cors_rule={}, lifecycle_rule={}, logging={}):: {
      [if hosted_zone_id != null then 'hosted_zone_id']: hosted_zone_id,
      [if region != null then 'region']: region,
      [if tags != null then 'tags']: tags,
      [if website_endpoint != null then 'website_endpoint']: website_endpoint,
      [if acl != null then 'acl']: acl,
      [if bucket != null then 'bucket']: bucket,
      [if force_destroy != null then 'force_destroy']: force_destroy,
      [if policy != null then 'policy']: policy,
      [if acceleration_status != null then 'acceleration_status']: acceleration_status,
      [if arn != null then 'arn']: arn,
      [if request_payer != null then 'request_payer']: request_payer,
      [if bucket_prefix != null then 'bucket_prefix']: bucket_prefix,
      [if id != null then 'id']: id,
      [if website_domain != null then 'website_domain']: website_domain,
      [if object_lock_configuration != null then 'object_lock_configuration']: object_lock_configuration,
      [if replication_configuration != null then 'replication_configuration']: replication_configuration,
      [if server_side_encryption_configuration != null then 'server_side_encryption_configuration']: server_side_encryption_configuration,
      [if versioning != null then 'versioning']: versioning,
      [if website != null then 'website']: website,
      [if cors_rule != null then 'cors_rule']: cors_rule,
      [if lifecycle_rule != null then 'lifecycle_rule']: lifecycle_rule,
      [if logging != null then 'logging']: logging,
      rname:: rname,
      bucket_domain_name:: '${aws_s3_bucket.%s.bucket_domain_name}' % rname,
      bucket_regional_domain_name:: '${aws_s3_bucket.%s.bucket_regional_domain_name}' % rname,
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
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_vpc_ipv4_cidr_block_association - https://www.terraform.io/docs/providers/aws/r/vpc_ipv4_cidr_block_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cidr_block (required) https://www.terraform.io/docs/providers/aws/r/vpc_ipv4_cidr_block_association.html#cidr_block.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_ipv4_cidr_block_association.html#vpc_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_ipv4_cidr_block_association.html#id.
    // @param timeouts (optional) timeouts block.
    aws_vpc_ipv4_cidr_block_association(rname, cidr_block, vpc_id, id=null, timeouts={}):: {
      cidr_block: cidr_block,
      vpc_id: vpc_id,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
    },
    // aws_waf_ipset - https://www.terraform.io/docs/providers/aws/r/waf_ipset.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_ipset.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_ipset.html#id.
    // @param ip_set_descriptors (optional) ip_set_descriptors block.
    aws_waf_ipset(rname, name, id=null, ip_set_descriptors={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if ip_set_descriptors != null then 'ip_set_descriptors']: ip_set_descriptors,
      rname:: rname,
      arn:: '${aws_waf_ipset.%s.arn}' % rname,
    },
    // aws_codepipeline - https://www.terraform.io/docs/providers/aws/r/codepipeline.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/codepipeline.html#role_arn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/codepipeline.html#name.
    // @param stage (required) stage block.
    // @param artifact_store (required) artifact_store block.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/codepipeline.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codepipeline.html#id.
    aws_codepipeline(rname, role_arn, name, stage, artifact_store, tags=null, id=null):: {
      role_arn: role_arn,
      name: name,
      stage: stage,
      artifact_store: artifact_store,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_codepipeline.%s.arn}' % rname,
    },
    // aws_globalaccelerator_listener - https://www.terraform.io/docs/providers/aws/r/globalaccelerator_listener.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param accelerator_arn (required) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_listener.html#accelerator_arn.
    // @param protocol (required) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_listener.html#protocol.
    // @param port_range (required) port_range block.
    // @param client_affinity (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_listener.html#client_affinity.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_listener.html#id.
    aws_globalaccelerator_listener(rname, accelerator_arn, protocol, port_range, client_affinity=null, id=null):: {
      accelerator_arn: accelerator_arn,
      protocol: protocol,
      port_range: port_range,
      [if client_affinity != null then 'client_affinity']: client_affinity,
      [if id != null then 'id']: id,
      rname:: rname,
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
    // @param physical_connection_requirements (optional) physical_connection_requirements block.
    aws_glue_connection(rname, name, connection_properties, id=null, match_criteria=null, catalog_id=null, connection_type=null, description=null, physical_connection_requirements={}):: {
      name: name,
      connection_properties: connection_properties,
      [if id != null then 'id']: id,
      [if match_criteria != null then 'match_criteria']: match_criteria,
      [if catalog_id != null then 'catalog_id']: catalog_id,
      [if connection_type != null then 'connection_type']: connection_type,
      [if description != null then 'description']: description,
      [if physical_connection_requirements != null then 'physical_connection_requirements']: physical_connection_requirements,
      rname:: rname,
    },
    // aws_securityhub_standards_subscription - https://www.terraform.io/docs/providers/aws/r/securityhub_standards_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param standards_arn (required) https://www.terraform.io/docs/providers/aws/r/securityhub_standards_subscription.html#standards_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/securityhub_standards_subscription.html#id.
    aws_securityhub_standards_subscription(rname, standards_arn, id=null):: {
      standards_arn: standards_arn,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_service_discovery_http_namespace - https://www.terraform.io/docs/providers/aws/r/service_discovery_http_namespace.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/service_discovery_http_namespace.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_http_namespace.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/service_discovery_http_namespace.html#id.
    aws_service_discovery_http_namespace(rname, name, description=null, id=null):: {
      name: name,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_service_discovery_http_namespace.%s.arn}' % rname,
    },
    // aws_storagegateway_cache - https://www.terraform.io/docs/providers/aws/r/storagegateway_cache.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param disk_id (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_cache.html#disk_id.
    // @param gateway_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_cache.html#gateway_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_cache.html#id.
    aws_storagegateway_cache(rname, disk_id, gateway_arn, id=null):: {
      disk_id: disk_id,
      gateway_arn: gateway_arn,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_appsync_resolver - https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param field (required) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#field.
    // @param request_template (required) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#request_template.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#type.
    // @param api_id (required) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#api_id.
    // @param response_template (required) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#response_template.
    // @param kind (optional) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#kind.
    // @param data_source (optional) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#data_source.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appsync_resolver.html#id.
    // @param pipeline_config (optional) pipeline_config block.
    aws_appsync_resolver(rname, field, request_template, type, api_id, response_template, kind=null, data_source=null, id=null, pipeline_config={}):: {
      field: field,
      request_template: request_template,
      type: type,
      api_id: api_id,
      response_template: response_template,
      [if kind != null then 'kind']: kind,
      [if data_source != null then 'data_source']: data_source,
      [if id != null then 'id']: id,
      [if pipeline_config != null then 'pipeline_config']: pipeline_config,
      rname:: rname,
      arn:: '${aws_appsync_resolver.%s.arn}' % rname,
    },
    // aws_cognito_resource_server - https://www.terraform.io/docs/providers/aws/r/cognito_resource_server.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param user_pool_id (required) https://www.terraform.io/docs/providers/aws/r/cognito_resource_server.html#user_pool_id.
    // @param identifier (required) https://www.terraform.io/docs/providers/aws/r/cognito_resource_server.html#identifier.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cognito_resource_server.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_resource_server.html#id.
    // @param scope (optional) scope block.
    aws_cognito_resource_server(rname, user_pool_id, identifier, name, id=null, scope={}):: {
      user_pool_id: user_pool_id,
      identifier: identifier,
      name: name,
      [if id != null then 'id']: id,
      [if scope != null then 'scope']: scope,
      rname:: rname,
      scope_identifiers:: '${aws_cognito_resource_server.%s.scope_identifiers}' % rname,
    },
    // aws_datasync_location_s3 - https://www.terraform.io/docs/providers/aws/r/datasync_location_s3.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param s3_bucket_arn (required) https://www.terraform.io/docs/providers/aws/r/datasync_location_s3.html#s3_bucket_arn.
    // @param subdirectory (required) https://www.terraform.io/docs/providers/aws/r/datasync_location_s3.html#subdirectory.
    // @param s3_config (required) s3_config block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_s3.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/datasync_location_s3.html#tags.
    aws_datasync_location_s3(rname, s3_bucket_arn, subdirectory, s3_config, id=null, tags=null):: {
      s3_bucket_arn: s3_bucket_arn,
      subdirectory: subdirectory,
      s3_config: s3_config,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      uri:: '${aws_datasync_location_s3.%s.uri}' % rname,
      arn:: '${aws_datasync_location_s3.%s.arn}' % rname,
    },
    // aws_neptune_cluster_instance - https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_class (required) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#instance_class.
    // @param cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#cluster_identifier.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#engine_version.
    // @param identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#identifier_prefix.
    // @param preferred_backup_window (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#preferred_backup_window.
    // @param publicly_accessible (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#publicly_accessible.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#engine.
    // @param neptune_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#neptune_subnet_group_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#tags.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#auto_minor_version_upgrade.
    // @param neptune_parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#neptune_parameter_group_name.
    // @param promotion_tier (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#promotion_tier.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#apply_immediately.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#availability_zone.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#id.
    // @param identifier (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#identifier.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#preferred_maintenance_window.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_instance.html#port.
    // @param timeouts (optional) timeouts block.
    aws_neptune_cluster_instance(rname, instance_class, cluster_identifier, engine_version=null, identifier_prefix=null, preferred_backup_window=null, publicly_accessible=null, engine=null, neptune_subnet_group_name=null, tags=null, auto_minor_version_upgrade=null, neptune_parameter_group_name=null, promotion_tier=null, apply_immediately=null, availability_zone=null, id=null, identifier=null, preferred_maintenance_window=null, port=null, timeouts={}):: {
      instance_class: instance_class,
      cluster_identifier: cluster_identifier,
      [if engine_version != null then 'engine_version']: engine_version,
      [if identifier_prefix != null then 'identifier_prefix']: identifier_prefix,
      [if preferred_backup_window != null then 'preferred_backup_window']: preferred_backup_window,
      [if publicly_accessible != null then 'publicly_accessible']: publicly_accessible,
      [if engine != null then 'engine']: engine,
      [if neptune_subnet_group_name != null then 'neptune_subnet_group_name']: neptune_subnet_group_name,
      [if tags != null then 'tags']: tags,
      [if auto_minor_version_upgrade != null then 'auto_minor_version_upgrade']: auto_minor_version_upgrade,
      [if neptune_parameter_group_name != null then 'neptune_parameter_group_name']: neptune_parameter_group_name,
      [if promotion_tier != null then 'promotion_tier']: promotion_tier,
      [if apply_immediately != null then 'apply_immediately']: apply_immediately,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if id != null then 'id']: id,
      [if identifier != null then 'identifier']: identifier,
      [if preferred_maintenance_window != null then 'preferred_maintenance_window']: preferred_maintenance_window,
      [if port != null then 'port']: port,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      writer:: '${aws_neptune_cluster_instance.%s.writer}' % rname,
      arn:: '${aws_neptune_cluster_instance.%s.arn}' % rname,
      dbi_resource_id:: '${aws_neptune_cluster_instance.%s.dbi_resource_id}' % rname,
      storage_encrypted:: '${aws_neptune_cluster_instance.%s.storage_encrypted}' % rname,
      address:: '${aws_neptune_cluster_instance.%s.address}' % rname,
      endpoint:: '${aws_neptune_cluster_instance.%s.endpoint}' % rname,
      kms_key_arn:: '${aws_neptune_cluster_instance.%s.kms_key_arn}' % rname,
    },
    // aws_cloudwatch_log_group - https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param retention_in_days (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html#retention_in_days.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html#id.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html#kms_key_id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_group.html#name_prefix.
    aws_cloudwatch_log_group(rname, retention_in_days=null, tags=null, id=null, kms_key_id=null, name=null, name_prefix=null):: {
      [if retention_in_days != null then 'retention_in_days']: retention_in_days,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      rname:: rname,
      arn:: '${aws_cloudwatch_log_group.%s.arn}' % rname,
    },
    // aws_datapipeline_pipeline - https://www.terraform.io/docs/providers/aws/r/datapipeline_pipeline.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/datapipeline_pipeline.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/datapipeline_pipeline.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/datapipeline_pipeline.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/datapipeline_pipeline.html#tags.
    aws_datapipeline_pipeline(rname, name, description=null, id=null, tags=null):: {
      name: name,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
    },
    // aws_ec2_transit_gateway_route_table_propagation - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_propagation.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param transit_gateway_attachment_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_propagation.html#transit_gateway_attachment_id.
    // @param transit_gateway_route_table_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_propagation.html#transit_gateway_route_table_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table_propagation.html#id.
    aws_ec2_transit_gateway_route_table_propagation(rname, transit_gateway_attachment_id, transit_gateway_route_table_id, id=null):: {
      transit_gateway_attachment_id: transit_gateway_attachment_id,
      transit_gateway_route_table_id: transit_gateway_route_table_id,
      [if id != null then 'id']: id,
      rname:: rname,
      resource_id:: '${aws_ec2_transit_gateway_route_table_propagation.%s.resource_id}' % rname,
      resource_type:: '${aws_ec2_transit_gateway_route_table_propagation.%s.resource_type}' % rname,
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
      [if id != null then 'id']: id,
      [if vpc_region != null then 'vpc_region']: vpc_region,
      rname:: rname,
    },
    // aws_wafregional_rate_based_rule - https://www.terraform.io/docs/providers/aws/r/wafregional_rate_based_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rate_key (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rate_based_rule.html#rate_key.
    // @param rate_limit (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rate_based_rule.html#rate_limit.
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rate_based_rule.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rate_based_rule.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_rate_based_rule.html#id.
    // @param predicate (optional) predicate block.
    aws_wafregional_rate_based_rule(rname, rate_key, rate_limit, metric_name, name, id=null, predicate={}):: {
      rate_key: rate_key,
      rate_limit: rate_limit,
      metric_name: metric_name,
      name: name,
      [if id != null then 'id']: id,
      [if predicate != null then 'predicate']: predicate,
      rname:: rname,
    },
    // aws_api_gateway_usage_plan - https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan.html#id.
    // @param product_code (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan.html#product_code.
    // @param api_stages (optional) api_stages block.
    // @param quota_settings (optional) quota_settings block.
    // @param throttle_settings (optional) throttle_settings block.
    aws_api_gateway_usage_plan(rname, name, description=null, id=null, product_code=null, api_stages={}, quota_settings={}, throttle_settings={}):: {
      name: name,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if product_code != null then 'product_code']: product_code,
      [if api_stages != null then 'api_stages']: api_stages,
      [if quota_settings != null then 'quota_settings']: quota_settings,
      [if throttle_settings != null then 'throttle_settings']: throttle_settings,
      rname:: rname,
    },
    // aws_codedeploy_deployment_group - https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param deployment_group_name (required) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html#deployment_group_name.
    // @param service_role_arn (required) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html#service_role_arn.
    // @param app_name (required) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html#app_name.
    // @param autoscaling_groups (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html#autoscaling_groups.
    // @param deployment_config_name (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html#deployment_config_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_group.html#id.
    // @param alarm_configuration (optional) alarm_configuration block.
    // @param ec2_tag_filter (optional) ec2_tag_filter block.
    // @param load_balancer_info (optional) load_balancer_info block.
    // @param trigger_configuration (optional) trigger_configuration block.
    // @param auto_rollback_configuration (optional) auto_rollback_configuration block.
    // @param blue_green_deployment_config (optional) blue_green_deployment_config block.
    // @param deployment_style (optional) deployment_style block.
    // @param ec2_tag_set (optional) ec2_tag_set block.
    // @param ecs_service (optional) ecs_service block.
    // @param on_premises_instance_tag_filter (optional) on_premises_instance_tag_filter block.
    aws_codedeploy_deployment_group(rname, deployment_group_name, service_role_arn, app_name, autoscaling_groups=null, deployment_config_name=null, id=null, alarm_configuration={}, ec2_tag_filter={}, load_balancer_info={}, trigger_configuration={}, auto_rollback_configuration={}, blue_green_deployment_config={}, deployment_style={}, ec2_tag_set={}, ecs_service={}, on_premises_instance_tag_filter={}):: {
      deployment_group_name: deployment_group_name,
      service_role_arn: service_role_arn,
      app_name: app_name,
      [if autoscaling_groups != null then 'autoscaling_groups']: autoscaling_groups,
      [if deployment_config_name != null then 'deployment_config_name']: deployment_config_name,
      [if id != null then 'id']: id,
      [if alarm_configuration != null then 'alarm_configuration']: alarm_configuration,
      [if ec2_tag_filter != null then 'ec2_tag_filter']: ec2_tag_filter,
      [if load_balancer_info != null then 'load_balancer_info']: load_balancer_info,
      [if trigger_configuration != null then 'trigger_configuration']: trigger_configuration,
      [if auto_rollback_configuration != null then 'auto_rollback_configuration']: auto_rollback_configuration,
      [if blue_green_deployment_config != null then 'blue_green_deployment_config']: blue_green_deployment_config,
      [if deployment_style != null then 'deployment_style']: deployment_style,
      [if ec2_tag_set != null then 'ec2_tag_set']: ec2_tag_set,
      [if ecs_service != null then 'ecs_service']: ecs_service,
      [if on_premises_instance_tag_filter != null then 'on_premises_instance_tag_filter']: on_premises_instance_tag_filter,
      rname:: rname,
    },
    // aws_licensemanager_license_configuration - https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#name.
    // @param license_counting_type (required) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#license_counting_type.
    // @param license_rules (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#license_rules.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#id.
    // @param license_count (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#license_count.
    // @param license_count_hard_limit (optional) https://www.terraform.io/docs/providers/aws/r/licensemanager_license_configuration.html#license_count_hard_limit.
    aws_licensemanager_license_configuration(rname, name, license_counting_type, license_rules=null, tags=null, description=null, id=null, license_count=null, license_count_hard_limit=null):: {
      name: name,
      license_counting_type: license_counting_type,
      [if license_rules != null then 'license_rules']: license_rules,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if license_count != null then 'license_count']: license_count,
      [if license_count_hard_limit != null then 'license_count_hard_limit']: license_count_hard_limit,
      rname:: rname,
    },
    // aws_redshift_event_subscription - https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#name.
    // @param sns_topic_arn (required) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#sns_topic_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#id.
    // @param source_ids (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#source_ids.
    // @param source_type (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#source_type.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#tags.
    // @param event_categories (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#event_categories.
    // @param severity (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#severity.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/redshift_event_subscription.html#enabled.
    // @param timeouts (optional) timeouts block.
    aws_redshift_event_subscription(rname, name, sns_topic_arn, id=null, source_ids=null, source_type=null, tags=null, event_categories=null, severity=null, enabled=null, timeouts={}):: {
      name: name,
      sns_topic_arn: sns_topic_arn,
      [if id != null then 'id']: id,
      [if source_ids != null then 'source_ids']: source_ids,
      [if source_type != null then 'source_type']: source_type,
      [if tags != null then 'tags']: tags,
      [if event_categories != null then 'event_categories']: event_categories,
      [if severity != null then 'severity']: severity,
      [if enabled != null then 'enabled']: enabled,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      customer_aws_id:: '${aws_redshift_event_subscription.%s.customer_aws_id}' % rname,
      status:: '${aws_redshift_event_subscription.%s.status}' % rname,
      arn:: '${aws_redshift_event_subscription.%s.arn}' % rname,
    },
    // aws_route53_resolver_endpoint - https://www.terraform.io/docs/providers/aws/r/route53_resolver_endpoint.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param security_group_ids (required) https://www.terraform.io/docs/providers/aws/r/route53_resolver_endpoint.html#security_group_ids.
    // @param direction (required) https://www.terraform.io/docs/providers/aws/r/route53_resolver_endpoint.html#direction.
    // @param ip_address (required) ip_address block.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_endpoint.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_endpoint.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_endpoint.html#name.
    // @param timeouts (optional) timeouts block.
    aws_route53_resolver_endpoint(rname, security_group_ids, direction, ip_address, tags=null, id=null, name=null, timeouts={}):: {
      security_group_ids: security_group_ids,
      direction: direction,
      ip_address: ip_address,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_route53_resolver_endpoint.%s.arn}' % rname,
      host_vpc_id:: '${aws_route53_resolver_endpoint.%s.host_vpc_id}' % rname,
    },
    // aws_secretsmanager_secret - https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#name_prefix.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#policy.
    // @param recovery_window_in_days (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#recovery_window_in_days.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#id.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#kms_key_id.
    // @param rotation_lambda_arn (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#rotation_lambda_arn.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret.html#tags.
    // @param rotation_rules (optional) rotation_rules block.
    aws_secretsmanager_secret(rname, name=null, name_prefix=null, policy=null, recovery_window_in_days=null, description=null, id=null, kms_key_id=null, rotation_lambda_arn=null, tags=null, rotation_rules={}):: {
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if policy != null then 'policy']: policy,
      [if recovery_window_in_days != null then 'recovery_window_in_days']: recovery_window_in_days,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if rotation_lambda_arn != null then 'rotation_lambda_arn']: rotation_lambda_arn,
      [if tags != null then 'tags']: tags,
      [if rotation_rules != null then 'rotation_rules']: rotation_rules,
      rname:: rname,
      arn:: '${aws_secretsmanager_secret.%s.arn}' % rname,
      rotation_enabled:: '${aws_secretsmanager_secret.%s.rotation_enabled}' % rname,
    },
    // aws_ssm_patch_baseline - https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#tags.
    // @param approved_patches (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#approved_patches.
    // @param approved_patches_compliance_level (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#approved_patches_compliance_level.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#id.
    // @param operating_system (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#operating_system.
    // @param rejected_patches (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_baseline.html#rejected_patches.
    // @param approval_rule (optional) approval_rule block.
    // @param global_filter (optional) global_filter block.
    aws_ssm_patch_baseline(rname, name, tags=null, approved_patches=null, approved_patches_compliance_level=null, description=null, id=null, operating_system=null, rejected_patches=null, approval_rule={}, global_filter={}):: {
      name: name,
      [if tags != null then 'tags']: tags,
      [if approved_patches != null then 'approved_patches']: approved_patches,
      [if approved_patches_compliance_level != null then 'approved_patches_compliance_level']: approved_patches_compliance_level,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if operating_system != null then 'operating_system']: operating_system,
      [if rejected_patches != null then 'rejected_patches']: rejected_patches,
      [if approval_rule != null then 'approval_rule']: approval_rule,
      [if global_filter != null then 'global_filter']: global_filter,
      rname:: rname,
    },
    // aws_ssm_patch_group - https://www.terraform.io/docs/providers/aws/r/ssm_patch_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param baseline_id (required) https://www.terraform.io/docs/providers/aws/r/ssm_patch_group.html#baseline_id.
    // @param patch_group (required) https://www.terraform.io/docs/providers/aws/r/ssm_patch_group.html#patch_group.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_patch_group.html#id.
    aws_ssm_patch_group(rname, baseline_id, patch_group, id=null):: {
      baseline_id: baseline_id,
      patch_group: patch_group,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_lb_cookie_stickiness_policy - https://www.terraform.io/docs/providers/aws/r/lb_cookie_stickiness_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param lb_port (required) https://www.terraform.io/docs/providers/aws/r/lb_cookie_stickiness_policy.html#lb_port.
    // @param load_balancer (required) https://www.terraform.io/docs/providers/aws/r/lb_cookie_stickiness_policy.html#load_balancer.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/lb_cookie_stickiness_policy.html#name.
    // @param cookie_expiration_period (optional) https://www.terraform.io/docs/providers/aws/r/lb_cookie_stickiness_policy.html#cookie_expiration_period.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb_cookie_stickiness_policy.html#id.
    aws_lb_cookie_stickiness_policy(rname, lb_port, load_balancer, name, cookie_expiration_period=null, id=null):: {
      lb_port: lb_port,
      load_balancer: load_balancer,
      name: name,
      [if cookie_expiration_period != null then 'cookie_expiration_period']: cookie_expiration_period,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_opsworks_application - https://www.terraform.io/docs/providers/aws/r/opsworks_application.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#type.
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#stack_id.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#name.
    // @param data_source_database_name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#data_source_database_name.
    // @param document_root (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#document_root.
    // @param auto_bundle_on_deploy (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#auto_bundle_on_deploy.
    // @param rails_env (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#rails_env.
    // @param aws_flow_ruby_settings (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#aws_flow_ruby_settings.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#description.
    // @param domains (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#domains.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#id.
    // @param short_name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#short_name.
    // @param data_source_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#data_source_arn.
    // @param data_source_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#data_source_type.
    // @param enable_ssl (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_application.html#enable_ssl.
    // @param app_source (optional) app_source block.
    // @param environment (optional) environment block.
    // @param ssl_configuration (optional) ssl_configuration block.
    aws_opsworks_application(rname, type, stack_id, name, data_source_database_name=null, document_root=null, auto_bundle_on_deploy=null, rails_env=null, aws_flow_ruby_settings=null, description=null, domains=null, id=null, short_name=null, data_source_arn=null, data_source_type=null, enable_ssl=null, app_source={}, environment={}, ssl_configuration={}):: {
      type: type,
      stack_id: stack_id,
      name: name,
      [if data_source_database_name != null then 'data_source_database_name']: data_source_database_name,
      [if document_root != null then 'document_root']: document_root,
      [if auto_bundle_on_deploy != null then 'auto_bundle_on_deploy']: auto_bundle_on_deploy,
      [if rails_env != null then 'rails_env']: rails_env,
      [if aws_flow_ruby_settings != null then 'aws_flow_ruby_settings']: aws_flow_ruby_settings,
      [if description != null then 'description']: description,
      [if domains != null then 'domains']: domains,
      [if id != null then 'id']: id,
      [if short_name != null then 'short_name']: short_name,
      [if data_source_arn != null then 'data_source_arn']: data_source_arn,
      [if data_source_type != null then 'data_source_type']: data_source_type,
      [if enable_ssl != null then 'enable_ssl']: enable_ssl,
      [if app_source != null then 'app_source']: app_source,
      [if environment != null then 'environment']: environment,
      [if ssl_configuration != null then 'ssl_configuration']: ssl_configuration,
      rname:: rname,
    },
    // aws_opsworks_haproxy_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#stack_id.
    // @param stats_password (required) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#stats_password.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#auto_assign_public_ips.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#install_updates_on_boot.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_undeploy_recipes.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#elastic_load_balancer.
    // @param healthcheck_url (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#healthcheck_url.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#auto_healing.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_deploy_recipes.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_setup_recipes.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_shutdown_recipes.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#use_ebs_optimized_instances.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#system_packages.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_configure_recipes.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_instance_profile_arn.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_json.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#custom_security_group_ids.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#instance_shutdown_timeout.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#name.
    // @param stats_enabled (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#stats_enabled.
    // @param stats_url (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#stats_url.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#auto_assign_elastic_ips.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#drain_elb_on_shutdown.
    // @param healthcheck_method (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#healthcheck_method.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#id.
    // @param stats_user (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_haproxy_layer.html#stats_user.
    // @param ebs_volume (optional) ebs_volume block.
    aws_opsworks_haproxy_layer(rname, stack_id, stats_password, auto_assign_public_ips=null, install_updates_on_boot=null, custom_undeploy_recipes=null, elastic_load_balancer=null, healthcheck_url=null, auto_healing=null, custom_deploy_recipes=null, custom_setup_recipes=null, custom_shutdown_recipes=null, use_ebs_optimized_instances=null, system_packages=null, custom_configure_recipes=null, custom_instance_profile_arn=null, custom_json=null, custom_security_group_ids=null, instance_shutdown_timeout=null, name=null, stats_enabled=null, stats_url=null, auto_assign_elastic_ips=null, drain_elb_on_shutdown=null, healthcheck_method=null, id=null, stats_user=null, ebs_volume={}):: {
      stack_id: stack_id,
      stats_password: stats_password,
      [if auto_assign_public_ips != null then 'auto_assign_public_ips']: auto_assign_public_ips,
      [if install_updates_on_boot != null then 'install_updates_on_boot']: install_updates_on_boot,
      [if custom_undeploy_recipes != null then 'custom_undeploy_recipes']: custom_undeploy_recipes,
      [if elastic_load_balancer != null then 'elastic_load_balancer']: elastic_load_balancer,
      [if healthcheck_url != null then 'healthcheck_url']: healthcheck_url,
      [if auto_healing != null then 'auto_healing']: auto_healing,
      [if custom_deploy_recipes != null then 'custom_deploy_recipes']: custom_deploy_recipes,
      [if custom_setup_recipes != null then 'custom_setup_recipes']: custom_setup_recipes,
      [if custom_shutdown_recipes != null then 'custom_shutdown_recipes']: custom_shutdown_recipes,
      [if use_ebs_optimized_instances != null then 'use_ebs_optimized_instances']: use_ebs_optimized_instances,
      [if system_packages != null then 'system_packages']: system_packages,
      [if custom_configure_recipes != null then 'custom_configure_recipes']: custom_configure_recipes,
      [if custom_instance_profile_arn != null then 'custom_instance_profile_arn']: custom_instance_profile_arn,
      [if custom_json != null then 'custom_json']: custom_json,
      [if custom_security_group_ids != null then 'custom_security_group_ids']: custom_security_group_ids,
      [if instance_shutdown_timeout != null then 'instance_shutdown_timeout']: instance_shutdown_timeout,
      [if name != null then 'name']: name,
      [if stats_enabled != null then 'stats_enabled']: stats_enabled,
      [if stats_url != null then 'stats_url']: stats_url,
      [if auto_assign_elastic_ips != null then 'auto_assign_elastic_ips']: auto_assign_elastic_ips,
      [if drain_elb_on_shutdown != null then 'drain_elb_on_shutdown']: drain_elb_on_shutdown,
      [if healthcheck_method != null then 'healthcheck_method']: healthcheck_method,
      [if id != null then 'id']: id,
      [if stats_user != null then 'stats_user']: stats_user,
      [if ebs_volume != null then 'ebs_volume']: ebs_volume,
      rname:: rname,
    },
    // aws_backup_plan - https://www.terraform.io/docs/providers/aws/r/backup_plan.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/backup_plan.html#name.
    // @param rule (required) rule block.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/backup_plan.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/backup_plan.html#id.
    aws_backup_plan(rname, name, rule, tags=null, id=null):: {
      name: name,
      rule: rule,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      rname:: rname,
      version:: '${aws_backup_plan.%s.version}' % rname,
      arn:: '${aws_backup_plan.%s.arn}' % rname,
    },
    // aws_cognito_user_pool - https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#tags.
    // @param email_verification_subject (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#email_verification_subject.
    // @param mfa_configuration (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#mfa_configuration.
    // @param email_verification_message (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#email_verification_message.
    // @param sms_verification_message (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#sms_verification_message.
    // @param username_attributes (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#username_attributes.
    // @param alias_attributes (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#alias_attributes.
    // @param auto_verified_attributes (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#auto_verified_attributes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#id.
    // @param sms_authentication_message (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool.html#sms_authentication_message.
    // @param device_configuration (optional) device_configuration block.
    // @param email_configuration (optional) email_configuration block.
    // @param lambda_config (optional) lambda_config block.
    // @param schema (optional) schema block.
    // @param verification_message_template (optional) verification_message_template block.
    // @param admin_create_user_config (optional) admin_create_user_config block.
    // @param sms_configuration (optional) sms_configuration block.
    // @param user_pool_add_ons (optional) user_pool_add_ons block.
    // @param password_policy (optional) password_policy block.
    aws_cognito_user_pool(rname, name, tags=null, email_verification_subject=null, mfa_configuration=null, email_verification_message=null, sms_verification_message=null, username_attributes=null, alias_attributes=null, auto_verified_attributes=null, id=null, sms_authentication_message=null, device_configuration={}, email_configuration={}, lambda_config={}, schema={}, verification_message_template={}, admin_create_user_config={}, sms_configuration={}, user_pool_add_ons={}, password_policy={}):: {
      name: name,
      [if tags != null then 'tags']: tags,
      [if email_verification_subject != null then 'email_verification_subject']: email_verification_subject,
      [if mfa_configuration != null then 'mfa_configuration']: mfa_configuration,
      [if email_verification_message != null then 'email_verification_message']: email_verification_message,
      [if sms_verification_message != null then 'sms_verification_message']: sms_verification_message,
      [if username_attributes != null then 'username_attributes']: username_attributes,
      [if alias_attributes != null then 'alias_attributes']: alias_attributes,
      [if auto_verified_attributes != null then 'auto_verified_attributes']: auto_verified_attributes,
      [if id != null then 'id']: id,
      [if sms_authentication_message != null then 'sms_authentication_message']: sms_authentication_message,
      [if device_configuration != null then 'device_configuration']: device_configuration,
      [if email_configuration != null then 'email_configuration']: email_configuration,
      [if lambda_config != null then 'lambda_config']: lambda_config,
      [if schema != null then 'schema']: schema,
      [if verification_message_template != null then 'verification_message_template']: verification_message_template,
      [if admin_create_user_config != null then 'admin_create_user_config']: admin_create_user_config,
      [if sms_configuration != null then 'sms_configuration']: sms_configuration,
      [if user_pool_add_ons != null then 'user_pool_add_ons']: user_pool_add_ons,
      [if password_policy != null then 'password_policy']: password_policy,
      rname:: rname,
      endpoint:: '${aws_cognito_user_pool.%s.endpoint}' % rname,
      last_modified_date:: '${aws_cognito_user_pool.%s.last_modified_date}' % rname,
      arn:: '${aws_cognito_user_pool.%s.arn}' % rname,
      creation_date:: '${aws_cognito_user_pool.%s.creation_date}' % rname,
    },
    // aws_load_balancer_policy - https://www.terraform.io/docs/providers/aws/r/load_balancer_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy_name (required) https://www.terraform.io/docs/providers/aws/r/load_balancer_policy.html#policy_name.
    // @param policy_type_name (required) https://www.terraform.io/docs/providers/aws/r/load_balancer_policy.html#policy_type_name.
    // @param load_balancer_name (required) https://www.terraform.io/docs/providers/aws/r/load_balancer_policy.html#load_balancer_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/load_balancer_policy.html#id.
    // @param policy_attribute (optional) policy_attribute block.
    aws_load_balancer_policy(rname, policy_name, policy_type_name, load_balancer_name, id=null, policy_attribute={}):: {
      policy_name: policy_name,
      policy_type_name: policy_type_name,
      load_balancer_name: load_balancer_name,
      [if id != null then 'id']: id,
      [if policy_attribute != null then 'policy_attribute']: policy_attribute,
      rname:: rname,
    },
    // aws_pinpoint_adm_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_adm_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_adm_channel.html#application_id.
    // @param client_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_adm_channel.html#client_id.
    // @param client_secret (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_adm_channel.html#client_secret.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_adm_channel.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_adm_channel.html#id.
    aws_pinpoint_adm_channel(rname, application_id, client_id, client_secret, enabled=null, id=null):: {
      application_id: application_id,
      client_id: client_id,
      client_secret: client_secret,
      [if enabled != null then 'enabled']: enabled,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_api_gateway_account - https://www.terraform.io/docs/providers/aws/r/api_gateway_account.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cloudwatch_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_account.html#cloudwatch_role_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_account.html#id.
    aws_api_gateway_account(rname, cloudwatch_role_arn=null, id=null):: {
      [if cloudwatch_role_arn != null then 'cloudwatch_role_arn']: cloudwatch_role_arn,
      [if id != null then 'id']: id,
      rname:: rname,
      throttle_settings:: '${aws_api_gateway_account.%s.throttle_settings}' % rname,
    },
    // aws_ecs_service - https://www.terraform.io/docs/providers/aws/r/ecs_service.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param task_definition (required) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#task_definition.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#name.
    // @param platform_version (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#platform_version.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#tags.
    // @param iam_role (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#iam_role.
    // @param launch_type (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#launch_type.
    // @param scheduling_strategy (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#scheduling_strategy.
    // @param desired_count (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#desired_count.
    // @param health_check_grace_period_seconds (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#health_check_grace_period_seconds.
    // @param propagate_tags (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#propagate_tags.
    // @param cluster (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#cluster.
    // @param deployment_maximum_percent (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#deployment_maximum_percent.
    // @param deployment_minimum_healthy_percent (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#deployment_minimum_healthy_percent.
    // @param enable_ecs_managed_tags (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#enable_ecs_managed_tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ecs_service.html#id.
    // @param placement_constraints (optional) placement_constraints block.
    // @param placement_strategy (optional) placement_strategy block.
    // @param service_registries (optional) service_registries block.
    // @param deployment_controller (optional) deployment_controller block.
    // @param load_balancer (optional) load_balancer block.
    // @param network_configuration (optional) network_configuration block.
    // @param ordered_placement_strategy (optional) ordered_placement_strategy block.
    aws_ecs_service(rname, task_definition, name, platform_version=null, tags=null, iam_role=null, launch_type=null, scheduling_strategy=null, desired_count=null, health_check_grace_period_seconds=null, propagate_tags=null, cluster=null, deployment_maximum_percent=null, deployment_minimum_healthy_percent=null, enable_ecs_managed_tags=null, id=null, placement_constraints={}, placement_strategy={}, service_registries={}, deployment_controller={}, load_balancer={}, network_configuration={}, ordered_placement_strategy={}):: {
      task_definition: task_definition,
      name: name,
      [if platform_version != null then 'platform_version']: platform_version,
      [if tags != null then 'tags']: tags,
      [if iam_role != null then 'iam_role']: iam_role,
      [if launch_type != null then 'launch_type']: launch_type,
      [if scheduling_strategy != null then 'scheduling_strategy']: scheduling_strategy,
      [if desired_count != null then 'desired_count']: desired_count,
      [if health_check_grace_period_seconds != null then 'health_check_grace_period_seconds']: health_check_grace_period_seconds,
      [if propagate_tags != null then 'propagate_tags']: propagate_tags,
      [if cluster != null then 'cluster']: cluster,
      [if deployment_maximum_percent != null then 'deployment_maximum_percent']: deployment_maximum_percent,
      [if deployment_minimum_healthy_percent != null then 'deployment_minimum_healthy_percent']: deployment_minimum_healthy_percent,
      [if enable_ecs_managed_tags != null then 'enable_ecs_managed_tags']: enable_ecs_managed_tags,
      [if id != null then 'id']: id,
      [if placement_constraints != null then 'placement_constraints']: placement_constraints,
      [if placement_strategy != null then 'placement_strategy']: placement_strategy,
      [if service_registries != null then 'service_registries']: service_registries,
      [if deployment_controller != null then 'deployment_controller']: deployment_controller,
      [if load_balancer != null then 'load_balancer']: load_balancer,
      [if network_configuration != null then 'network_configuration']: network_configuration,
      [if ordered_placement_strategy != null then 'ordered_placement_strategy']: ordered_placement_strategy,
      rname:: rname,
    },
    // aws_iam_group_policy_attachment - https://www.terraform.io/docs/providers/aws/r/iam_group_policy_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy_arn (required) https://www.terraform.io/docs/providers/aws/r/iam_group_policy_attachment.html#policy_arn.
    // @param group (required) https://www.terraform.io/docs/providers/aws/r/iam_group_policy_attachment.html#group.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_group_policy_attachment.html#id.
    aws_iam_group_policy_attachment(rname, policy_arn, group, id=null):: {
      policy_arn: policy_arn,
      group: group,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_lambda_event_source_mapping - https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param function_name (required) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#function_name.
    // @param event_source_arn (required) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#event_source_arn.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#id.
    // @param batch_size (optional) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#batch_size.
    // @param starting_position (optional) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#starting_position.
    // @param starting_position_timestamp (optional) https://www.terraform.io/docs/providers/aws/r/lambda_event_source_mapping.html#starting_position_timestamp.
    aws_lambda_event_source_mapping(rname, function_name, event_source_arn, enabled=null, id=null, batch_size=null, starting_position=null, starting_position_timestamp=null):: {
      function_name: function_name,
      event_source_arn: event_source_arn,
      [if enabled != null then 'enabled']: enabled,
      [if id != null then 'id']: id,
      [if batch_size != null then 'batch_size']: batch_size,
      [if starting_position != null then 'starting_position']: starting_position,
      [if starting_position_timestamp != null then 'starting_position_timestamp']: starting_position_timestamp,
      rname:: rname,
      function_arn:: '${aws_lambda_event_source_mapping.%s.function_arn}' % rname,
      last_processing_result:: '${aws_lambda_event_source_mapping.%s.last_processing_result}' % rname,
      state:: '${aws_lambda_event_source_mapping.%s.state}' % rname,
      state_transition_reason:: '${aws_lambda_event_source_mapping.%s.state_transition_reason}' % rname,
      last_modified:: '${aws_lambda_event_source_mapping.%s.last_modified}' % rname,
      uuid:: '${aws_lambda_event_source_mapping.%s.uuid}' % rname,
    },
    // aws_neptune_event_subscription - https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param sns_topic_arn (required) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#sns_topic_arn.
    // @param source_type (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#source_type.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#enabled.
    // @param event_categories (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#event_categories.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#name_prefix.
    // @param source_ids (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#source_ids.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/neptune_event_subscription.html#tags.
    // @param timeouts (optional) timeouts block.
    aws_neptune_event_subscription(rname, sns_topic_arn, source_type=null, enabled=null, event_categories=null, id=null, name=null, name_prefix=null, source_ids=null, tags=null, timeouts={}):: {
      sns_topic_arn: sns_topic_arn,
      [if source_type != null then 'source_type']: source_type,
      [if enabled != null then 'enabled']: enabled,
      [if event_categories != null then 'event_categories']: event_categories,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if source_ids != null then 'source_ids']: source_ids,
      [if tags != null then 'tags']: tags,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_neptune_event_subscription.%s.arn}' % rname,
      customer_aws_id:: '${aws_neptune_event_subscription.%s.customer_aws_id}' % rname,
    },
    // aws_transfer_user - https://www.terraform.io/docs/providers/aws/r/transfer_user.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param role (required) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#role.
    // @param server_id (required) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#server_id.
    // @param user_name (required) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#user_name.
    // @param home_directory (optional) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#home_directory.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#id.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#policy.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/transfer_user.html#tags.
    aws_transfer_user(rname, role, server_id, user_name, home_directory=null, id=null, policy=null, tags=null):: {
      role: role,
      server_id: server_id,
      user_name: user_name,
      [if home_directory != null then 'home_directory']: home_directory,
      [if id != null then 'id']: id,
      [if policy != null then 'policy']: policy,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      arn:: '${aws_transfer_user.%s.arn}' % rname,
    },
    // aws_dx_gateway_association_proposal - https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param dx_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html#dx_gateway_id.
    // @param dx_gateway_owner_account_id (required) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html#dx_gateway_owner_account_id.
    // @param vpn_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html#vpn_gateway_id.
    // @param allowed_prefixes (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html#allowed_prefixes.
    // @param associated_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html#associated_gateway_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_gateway_association_proposal.html#id.
    aws_dx_gateway_association_proposal(rname, dx_gateway_id, dx_gateway_owner_account_id, vpn_gateway_id=null, allowed_prefixes=null, associated_gateway_id=null, id=null):: {
      dx_gateway_id: dx_gateway_id,
      dx_gateway_owner_account_id: dx_gateway_owner_account_id,
      [if vpn_gateway_id != null then 'vpn_gateway_id']: vpn_gateway_id,
      [if allowed_prefixes != null then 'allowed_prefixes']: allowed_prefixes,
      [if associated_gateway_id != null then 'associated_gateway_id']: associated_gateway_id,
      [if id != null then 'id']: id,
      rname:: rname,
      associated_gateway_owner_account_id:: '${aws_dx_gateway_association_proposal.%s.associated_gateway_owner_account_id}' % rname,
      associated_gateway_type:: '${aws_dx_gateway_association_proposal.%s.associated_gateway_type}' % rname,
    },
    // aws_opsworks_rds_db_instance - https://www.terraform.io/docs/providers/aws/r/opsworks_rds_db_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param db_password (required) https://www.terraform.io/docs/providers/aws/r/opsworks_rds_db_instance.html#db_password.
    // @param db_user (required) https://www.terraform.io/docs/providers/aws/r/opsworks_rds_db_instance.html#db_user.
    // @param rds_db_instance_arn (required) https://www.terraform.io/docs/providers/aws/r/opsworks_rds_db_instance.html#rds_db_instance_arn.
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_rds_db_instance.html#stack_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_rds_db_instance.html#id.
    aws_opsworks_rds_db_instance(rname, db_password, db_user, rds_db_instance_arn, stack_id, id=null):: {
      db_password: db_password,
      db_user: db_user,
      rds_db_instance_arn: rds_db_instance_arn,
      stack_id: stack_id,
      [if id != null then 'id']: id,
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
      [if route != null then 'route']: route,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if propagating_vgws != null then 'propagating_vgws']: propagating_vgws,
      rname:: rname,
      owner_id:: '${aws_route_table.%s.owner_id}' % rname,
    },
    // aws_api_gateway_method - https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#resource_id.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#rest_api_id.
    // @param authorization (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#authorization.
    // @param http_method (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#http_method.
    // @param api_key_required (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#api_key_required.
    // @param authorization_scopes (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#authorization_scopes.
    // @param authorizer_id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#authorizer_id.
    // @param request_parameters_in_json (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#request_parameters_in_json.
    // @param request_validator_id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#request_validator_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#id.
    // @param request_models (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#request_models.
    // @param request_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method.html#request_parameters.
    aws_api_gateway_method(rname, resource_id, rest_api_id, authorization, http_method, api_key_required=null, authorization_scopes=null, authorizer_id=null, request_parameters_in_json=null, request_validator_id=null, id=null, request_models=null, request_parameters=null):: {
      resource_id: resource_id,
      rest_api_id: rest_api_id,
      authorization: authorization,
      http_method: http_method,
      [if api_key_required != null then 'api_key_required']: api_key_required,
      [if authorization_scopes != null then 'authorization_scopes']: authorization_scopes,
      [if authorizer_id != null then 'authorizer_id']: authorizer_id,
      [if request_parameters_in_json != null then 'request_parameters_in_json']: request_parameters_in_json,
      [if request_validator_id != null then 'request_validator_id']: request_validator_id,
      [if id != null then 'id']: id,
      [if request_models != null then 'request_models']: request_models,
      [if request_parameters != null then 'request_parameters']: request_parameters,
      rname:: rname,
    },
    // aws_api_gateway_stage - https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stage_name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#stage_name.
    // @param deployment_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#deployment_id.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#rest_api_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#id.
    // @param variables (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#variables.
    // @param cache_cluster_enabled (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#cache_cluster_enabled.
    // @param xray_tracing_enabled (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#xray_tracing_enabled.
    // @param cache_cluster_size (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#cache_cluster_size.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#description.
    // @param documentation_version (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#documentation_version.
    // @param client_certificate_id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#client_certificate_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_stage.html#tags.
    // @param access_log_settings (optional) access_log_settings block.
    aws_api_gateway_stage(rname, stage_name, deployment_id, rest_api_id, id=null, variables=null, cache_cluster_enabled=null, xray_tracing_enabled=null, cache_cluster_size=null, description=null, documentation_version=null, client_certificate_id=null, tags=null, access_log_settings={}):: {
      stage_name: stage_name,
      deployment_id: deployment_id,
      rest_api_id: rest_api_id,
      [if id != null then 'id']: id,
      [if variables != null then 'variables']: variables,
      [if cache_cluster_enabled != null then 'cache_cluster_enabled']: cache_cluster_enabled,
      [if xray_tracing_enabled != null then 'xray_tracing_enabled']: xray_tracing_enabled,
      [if cache_cluster_size != null then 'cache_cluster_size']: cache_cluster_size,
      [if description != null then 'description']: description,
      [if documentation_version != null then 'documentation_version']: documentation_version,
      [if client_certificate_id != null then 'client_certificate_id']: client_certificate_id,
      [if tags != null then 'tags']: tags,
      [if access_log_settings != null then 'access_log_settings']: access_log_settings,
      rname:: rname,
      execution_arn:: '${aws_api_gateway_stage.%s.execution_arn}' % rname,
      invoke_url:: '${aws_api_gateway_stage.%s.invoke_url}' % rname,
    },
    // aws_appmesh_mesh - https://www.terraform.io/docs/providers/aws/r/appmesh_mesh.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_mesh.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_mesh.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_mesh.html#id.
    // @param spec (optional) spec block.
    aws_appmesh_mesh(rname, name, tags=null, id=null, spec={}):: {
      name: name,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if spec != null then 'spec']: spec,
      rname:: rname,
      last_updated_date:: '${aws_appmesh_mesh.%s.last_updated_date}' % rname,
      arn:: '${aws_appmesh_mesh.%s.arn}' % rname,
      created_date:: '${aws_appmesh_mesh.%s.created_date}' % rname,
    },
    // aws_ecr_lifecycle_policy - https://www.terraform.io/docs/providers/aws/r/ecr_lifecycle_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param repository (required) https://www.terraform.io/docs/providers/aws/r/ecr_lifecycle_policy.html#repository.
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/ecr_lifecycle_policy.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ecr_lifecycle_policy.html#id.
    aws_ecr_lifecycle_policy(rname, repository, policy, id=null):: {
      repository: repository,
      policy: policy,
      [if id != null then 'id']: id,
      rname:: rname,
      registry_id:: '${aws_ecr_lifecycle_policy.%s.registry_id}' % rname,
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
      [if path != null then 'path']: path,
      [if arn != null then 'arn']: arn,
      [if certificate_chain != null then 'certificate_chain']: certificate_chain,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      rname:: rname,
    },
    // aws_lb_listener_rule - https://www.terraform.io/docs/providers/aws/r/lb_listener_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param listener_arn (required) https://www.terraform.io/docs/providers/aws/r/lb_listener_rule.html#listener_arn.
    // @param condition (required) condition block.
    // @param action (required) action block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener_rule.html#id.
    // @param priority (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener_rule.html#priority.
    aws_lb_listener_rule(rname, listener_arn, condition, action, id=null, priority=null):: {
      listener_arn: listener_arn,
      condition: condition,
      action: action,
      [if id != null then 'id']: id,
      [if priority != null then 'priority']: priority,
      rname:: rname,
      arn:: '${aws_lb_listener_rule.%s.arn}' % rname,
    },
    // aws_route53_health_check - https://www.terraform.io/docs/providers/aws/r/route53_health_check.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#type.
    // @param enable_sni (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#enable_sni.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#id.
    // @param insufficient_data_health_status (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#insufficient_data_health_status.
    // @param invert_healthcheck (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#invert_healthcheck.
    // @param ip_address (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#ip_address.
    // @param measure_latency (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#measure_latency.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#tags.
    // @param child_health_threshold (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#child_health_threshold.
    // @param child_healthchecks (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#child_healthchecks.
    // @param cloudwatch_alarm_name (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#cloudwatch_alarm_name.
    // @param fqdn (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#fqdn.
    // @param request_interval (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#request_interval.
    // @param resource_path (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#resource_path.
    // @param search_string (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#search_string.
    // @param failure_threshold (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#failure_threshold.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#port.
    // @param reference_name (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#reference_name.
    // @param cloudwatch_alarm_region (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#cloudwatch_alarm_region.
    // @param regions (optional) https://www.terraform.io/docs/providers/aws/r/route53_health_check.html#regions.
    aws_route53_health_check(rname, type, enable_sni=null, id=null, insufficient_data_health_status=null, invert_healthcheck=null, ip_address=null, measure_latency=null, tags=null, child_health_threshold=null, child_healthchecks=null, cloudwatch_alarm_name=null, fqdn=null, request_interval=null, resource_path=null, search_string=null, failure_threshold=null, port=null, reference_name=null, cloudwatch_alarm_region=null, regions=null):: {
      type: type,
      [if enable_sni != null then 'enable_sni']: enable_sni,
      [if id != null then 'id']: id,
      [if insufficient_data_health_status != null then 'insufficient_data_health_status']: insufficient_data_health_status,
      [if invert_healthcheck != null then 'invert_healthcheck']: invert_healthcheck,
      [if ip_address != null then 'ip_address']: ip_address,
      [if measure_latency != null then 'measure_latency']: measure_latency,
      [if tags != null then 'tags']: tags,
      [if child_health_threshold != null then 'child_health_threshold']: child_health_threshold,
      [if child_healthchecks != null then 'child_healthchecks']: child_healthchecks,
      [if cloudwatch_alarm_name != null then 'cloudwatch_alarm_name']: cloudwatch_alarm_name,
      [if fqdn != null then 'fqdn']: fqdn,
      [if request_interval != null then 'request_interval']: request_interval,
      [if resource_path != null then 'resource_path']: resource_path,
      [if search_string != null then 'search_string']: search_string,
      [if failure_threshold != null then 'failure_threshold']: failure_threshold,
      [if port != null then 'port']: port,
      [if reference_name != null then 'reference_name']: reference_name,
      [if cloudwatch_alarm_region != null then 'cloudwatch_alarm_region']: cloudwatch_alarm_region,
      [if regions != null then 'regions']: regions,
      rname:: rname,
    },
    // aws_ses_receipt_rule - https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#name.
    // @param rule_set_name (required) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#rule_set_name.
    // @param tls_policy (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#tls_policy.
    // @param after (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#after.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#id.
    // @param recipients (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#recipients.
    // @param scan_enabled (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule.html#scan_enabled.
    // @param sns_action (optional) sns_action block.
    // @param stop_action (optional) stop_action block.
    // @param workmail_action (optional) workmail_action block.
    // @param add_header_action (optional) add_header_action block.
    // @param bounce_action (optional) bounce_action block.
    // @param lambda_action (optional) lambda_action block.
    // @param s3_action (optional) s3_action block.
    aws_ses_receipt_rule(rname, name, rule_set_name, tls_policy=null, after=null, enabled=null, id=null, recipients=null, scan_enabled=null, sns_action={}, stop_action={}, workmail_action={}, add_header_action={}, bounce_action={}, lambda_action={}, s3_action={}):: {
      name: name,
      rule_set_name: rule_set_name,
      [if tls_policy != null then 'tls_policy']: tls_policy,
      [if after != null then 'after']: after,
      [if enabled != null then 'enabled']: enabled,
      [if id != null then 'id']: id,
      [if recipients != null then 'recipients']: recipients,
      [if scan_enabled != null then 'scan_enabled']: scan_enabled,
      [if sns_action != null then 'sns_action']: sns_action,
      [if stop_action != null then 'stop_action']: stop_action,
      [if workmail_action != null then 'workmail_action']: workmail_action,
      [if add_header_action != null then 'add_header_action']: add_header_action,
      [if bounce_action != null then 'bounce_action']: bounce_action,
      [if lambda_action != null then 'lambda_action']: lambda_action,
      [if s3_action != null then 's3_action']: s3_action,
      rname:: rname,
    },
    // aws_directory_service_directory - https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#name.
    // @param password (required) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#password.
    // @param alias (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#alias.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#description.
    // @param size (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#size.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#id.
    // @param edition (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#edition.
    // @param enable_sso (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#enable_sso.
    // @param short_name (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#short_name.
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_directory.html#type.
    // @param connect_settings (optional) connect_settings block.
    // @param vpc_settings (optional) vpc_settings block.
    aws_directory_service_directory(rname, name, password, alias=null, description=null, size=null, tags=null, id=null, edition=null, enable_sso=null, short_name=null, type=null, connect_settings={}, vpc_settings={}):: {
      name: name,
      password: password,
      [if alias != null then 'alias']: alias,
      [if description != null then 'description']: description,
      [if size != null then 'size']: size,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if edition != null then 'edition']: edition,
      [if enable_sso != null then 'enable_sso']: enable_sso,
      [if short_name != null then 'short_name']: short_name,
      [if type != null then 'type']: type,
      [if connect_settings != null then 'connect_settings']: connect_settings,
      [if vpc_settings != null then 'vpc_settings']: vpc_settings,
      rname:: rname,
      security_group_id:: '${aws_directory_service_directory.%s.security_group_id}' % rname,
      access_url:: '${aws_directory_service_directory.%s.access_url}' % rname,
      dns_ip_addresses:: '${aws_directory_service_directory.%s.dns_ip_addresses}' % rname,
    },
    // aws_dx_hosted_private_virtual_interface_accepter - https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface_accepter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param virtual_interface_id (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface_accepter.html#virtual_interface_id.
    // @param vpn_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface_accepter.html#vpn_gateway_id.
    // @param dx_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface_accepter.html#dx_gateway_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface_accepter.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_private_virtual_interface_accepter.html#tags.
    // @param timeouts (optional) timeouts block.
    aws_dx_hosted_private_virtual_interface_accepter(rname, virtual_interface_id, vpn_gateway_id=null, dx_gateway_id=null, id=null, tags=null, timeouts={}):: {
      virtual_interface_id: virtual_interface_id,
      [if vpn_gateway_id != null then 'vpn_gateway_id']: vpn_gateway_id,
      [if dx_gateway_id != null then 'dx_gateway_id']: dx_gateway_id,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_dx_hosted_private_virtual_interface_accepter.%s.arn}' % rname,
    },
    // aws_ebs_default_kms_key - https://www.terraform.io/docs/providers/aws/r/ebs_default_kms_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param key_arn (required) https://www.terraform.io/docs/providers/aws/r/ebs_default_kms_key.html#key_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_default_kms_key.html#id.
    aws_ebs_default_kms_key(rname, key_arn, id=null):: {
      key_arn: key_arn,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_ssm_maintenance_window_target - https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param resource_type (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html#resource_type.
    // @param window_id (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html#window_id.
    // @param targets (required) targets block.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html#name.
    // @param owner_information (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_target.html#owner_information.
    aws_ssm_maintenance_window_target(rname, resource_type, window_id, targets, description=null, id=null, name=null, owner_information=null):: {
      resource_type: resource_type,
      window_id: window_id,
      targets: targets,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if owner_information != null then 'owner_information']: owner_information,
      rname:: rname,
    },
    // aws_guardduty_detector - https://www.terraform.io/docs/providers/aws/r/guardduty_detector.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param enable (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_detector.html#enable.
    // @param finding_publishing_frequency (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_detector.html#finding_publishing_frequency.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_detector.html#id.
    aws_guardduty_detector(rname, enable=null, finding_publishing_frequency=null, id=null):: {
      [if enable != null then 'enable']: enable,
      [if finding_publishing_frequency != null then 'finding_publishing_frequency']: finding_publishing_frequency,
      [if id != null then 'id']: id,
      rname:: rname,
      account_id:: '${aws_guardduty_detector.%s.account_id}' % rname,
    },
    // aws_s3_bucket_public_access_block - https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html#bucket.
    // @param block_public_policy (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html#block_public_policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html#id.
    // @param ignore_public_acls (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html#ignore_public_acls.
    // @param restrict_public_buckets (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html#restrict_public_buckets.
    // @param block_public_acls (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_public_access_block.html#block_public_acls.
    aws_s3_bucket_public_access_block(rname, bucket, block_public_policy=null, id=null, ignore_public_acls=null, restrict_public_buckets=null, block_public_acls=null):: {
      bucket: bucket,
      [if block_public_policy != null then 'block_public_policy']: block_public_policy,
      [if id != null then 'id']: id,
      [if ignore_public_acls != null then 'ignore_public_acls']: ignore_public_acls,
      [if restrict_public_buckets != null then 'restrict_public_buckets']: restrict_public_buckets,
      [if block_public_acls != null then 'block_public_acls']: block_public_acls,
      rname:: rname,
    },
    // aws_sfn_activity - https://www.terraform.io/docs/providers/aws/r/sfn_activity.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/sfn_activity.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sfn_activity.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sfn_activity.html#tags.
    aws_sfn_activity(rname, name, id=null, tags=null):: {
      name: name,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      creation_date:: '${aws_sfn_activity.%s.creation_date}' % rname,
    },
    // aws_subnet - https://www.terraform.io/docs/providers/aws/r/subnet.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cidr_block (required) https://www.terraform.io/docs/providers/aws/r/subnet.html#cidr_block.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/subnet.html#vpc_id.
    // @param assign_ipv6_address_on_creation (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#assign_ipv6_address_on_creation.
    // @param availability_zone_id (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#availability_zone_id.
    // @param ipv6_cidr_block (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#ipv6_cidr_block.
    // @param map_public_ip_on_launch (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#map_public_ip_on_launch.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#availability_zone.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/subnet.html#tags.
    // @param timeouts (optional) timeouts block.
    aws_subnet(rname, cidr_block, vpc_id, assign_ipv6_address_on_creation=null, availability_zone_id=null, ipv6_cidr_block=null, map_public_ip_on_launch=null, availability_zone=null, id=null, tags=null, timeouts={}):: {
      cidr_block: cidr_block,
      vpc_id: vpc_id,
      [if assign_ipv6_address_on_creation != null then 'assign_ipv6_address_on_creation']: assign_ipv6_address_on_creation,
      [if availability_zone_id != null then 'availability_zone_id']: availability_zone_id,
      [if ipv6_cidr_block != null then 'ipv6_cidr_block']: ipv6_cidr_block,
      [if map_public_ip_on_launch != null then 'map_public_ip_on_launch']: map_public_ip_on_launch,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      ipv6_cidr_block_association_id:: '${aws_subnet.%s.ipv6_cidr_block_association_id}' % rname,
      owner_id:: '${aws_subnet.%s.owner_id}' % rname,
      arn:: '${aws_subnet.%s.arn}' % rname,
    },
    // aws_cloudformation_stack_set_instance - https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_set_name (required) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html#stack_set_name.
    // @param retain_stack (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html#retain_stack.
    // @param account_id (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html#account_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html#id.
    // @param parameter_overrides (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html#parameter_overrides.
    // @param region (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set_instance.html#region.
    // @param timeouts (optional) timeouts block.
    aws_cloudformation_stack_set_instance(rname, stack_set_name, retain_stack=null, account_id=null, id=null, parameter_overrides=null, region=null, timeouts={}):: {
      stack_set_name: stack_set_name,
      [if retain_stack != null then 'retain_stack']: retain_stack,
      [if account_id != null then 'account_id']: account_id,
      [if id != null then 'id']: id,
      [if parameter_overrides != null then 'parameter_overrides']: parameter_overrides,
      [if region != null then 'region']: region,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      stack_id:: '${aws_cloudformation_stack_set_instance.%s.stack_id}' % rname,
    },
    // aws_cloudwatch_event_permission - https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_permission.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param principal (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_permission.html#principal.
    // @param statement_id (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_permission.html#statement_id.
    // @param action (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_permission.html#action.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_permission.html#id.
    // @param condition (optional) condition block.
    aws_cloudwatch_event_permission(rname, principal, statement_id, action=null, id=null, condition={}):: {
      principal: principal,
      statement_id: statement_id,
      [if action != null then 'action']: action,
      [if id != null then 'id']: id,
      [if condition != null then 'condition']: condition,
      rname:: rname,
    },
    // aws_codebuild_source_credential - https://www.terraform.io/docs/providers/aws/r/codebuild_source_credential.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param auth_type (required) https://www.terraform.io/docs/providers/aws/r/codebuild_source_credential.html#auth_type.
    // @param server_type (required) https://www.terraform.io/docs/providers/aws/r/codebuild_source_credential.html#server_type.
    // @param token (required) https://www.terraform.io/docs/providers/aws/r/codebuild_source_credential.html#token.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_source_credential.html#id.
    // @param user_name (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_source_credential.html#user_name.
    aws_codebuild_source_credential(rname, auth_type, server_type, token, id=null, user_name=null):: {
      auth_type: auth_type,
      server_type: server_type,
      token: token,
      [if id != null then 'id']: id,
      [if user_name != null then 'user_name']: user_name,
      rname:: rname,
      arn:: '${aws_codebuild_source_credential.%s.arn}' % rname,
    },
    // aws_ec2_client_vpn_network_association - https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_network_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param client_vpn_endpoint_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_network_association.html#client_vpn_endpoint_id.
    // @param subnet_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_network_association.html#subnet_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_network_association.html#id.
    aws_ec2_client_vpn_network_association(rname, client_vpn_endpoint_id, subnet_id, id=null):: {
      client_vpn_endpoint_id: client_vpn_endpoint_id,
      subnet_id: subnet_id,
      [if id != null then 'id']: id,
      rname:: rname,
      vpc_id:: '${aws_ec2_client_vpn_network_association.%s.vpc_id}' % rname,
      security_groups:: '${aws_ec2_client_vpn_network_association.%s.security_groups}' % rname,
      status:: '${aws_ec2_client_vpn_network_association.%s.status}' % rname,
    },
    // aws_internet_gateway - https://www.terraform.io/docs/providers/aws/r/internet_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/internet_gateway.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/internet_gateway.html#tags.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/internet_gateway.html#vpc_id.
    aws_internet_gateway(rname, id=null, tags=null, vpc_id=null):: {
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if vpc_id != null then 'vpc_id']: vpc_id,
      rname:: rname,
      owner_id:: '${aws_internet_gateway.%s.owner_id}' % rname,
    },
    // aws_ses_active_receipt_rule_set - https://www.terraform.io/docs/providers/aws/r/ses_active_receipt_rule_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rule_set_name (required) https://www.terraform.io/docs/providers/aws/r/ses_active_receipt_rule_set.html#rule_set_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_active_receipt_rule_set.html#id.
    aws_ses_active_receipt_rule_set(rname, rule_set_name, id=null):: {
      rule_set_name: rule_set_name,
      [if id != null then 'id']: id,
      rname:: rname,
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
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_ec2_transit_gateway_route_table - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param transit_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table.html#transit_gateway_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route_table.html#id.
    aws_ec2_transit_gateway_route_table(rname, transit_gateway_id, tags=null, id=null):: {
      transit_gateway_id: transit_gateway_id,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      rname:: rname,
      default_association_route_table:: '${aws_ec2_transit_gateway_route_table.%s.default_association_route_table}' % rname,
      default_propagation_route_table:: '${aws_ec2_transit_gateway_route_table.%s.default_propagation_route_table}' % rname,
    },
    // aws_key_pair - https://www.terraform.io/docs/providers/aws/r/key_pair.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param public_key (required) https://www.terraform.io/docs/providers/aws/r/key_pair.html#public_key.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/key_pair.html#id.
    // @param key_name (optional) https://www.terraform.io/docs/providers/aws/r/key_pair.html#key_name.
    // @param key_name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/key_pair.html#key_name_prefix.
    aws_key_pair(rname, public_key, id=null, key_name=null, key_name_prefix=null):: {
      public_key: public_key,
      [if id != null then 'id']: id,
      [if key_name != null then 'key_name']: key_name,
      [if key_name_prefix != null then 'key_name_prefix']: key_name_prefix,
      rname:: rname,
      fingerprint:: '${aws_key_pair.%s.fingerprint}' % rname,
    },
    // aws_kinesis_analytics_application - https://www.terraform.io/docs/providers/aws/r/kinesis_analytics_application.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/kinesis_analytics_application.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_analytics_application.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_analytics_application.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_analytics_application.html#tags.
    // @param code (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_analytics_application.html#code.
    // @param outputs (optional) outputs block.
    // @param reference_data_sources (optional) reference_data_sources block.
    // @param cloudwatch_logging_options (optional) cloudwatch_logging_options block.
    // @param inputs (optional) inputs block.
    aws_kinesis_analytics_application(rname, name, description=null, id=null, tags=null, code=null, outputs={}, reference_data_sources={}, cloudwatch_logging_options={}, inputs={}):: {
      name: name,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if code != null then 'code']: code,
      [if outputs != null then 'outputs']: outputs,
      [if reference_data_sources != null then 'reference_data_sources']: reference_data_sources,
      [if cloudwatch_logging_options != null then 'cloudwatch_logging_options']: cloudwatch_logging_options,
      [if inputs != null then 'inputs']: inputs,
      rname:: rname,
      arn:: '${aws_kinesis_analytics_application.%s.arn}' % rname,
      last_update_timestamp:: '${aws_kinesis_analytics_application.%s.last_update_timestamp}' % rname,
      status:: '${aws_kinesis_analytics_application.%s.status}' % rname,
      version:: '${aws_kinesis_analytics_application.%s.version}' % rname,
      create_timestamp:: '${aws_kinesis_analytics_application.%s.create_timestamp}' % rname,
    },
    // aws_ses_domain_identity_verification - https://www.terraform.io/docs/providers/aws/r/ses_domain_identity_verification.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain (required) https://www.terraform.io/docs/providers/aws/r/ses_domain_identity_verification.html#domain.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_domain_identity_verification.html#id.
    // @param timeouts (optional) timeouts block.
    aws_ses_domain_identity_verification(rname, domain, id=null, timeouts={}):: {
      domain: domain,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_ses_domain_identity_verification.%s.arn}' % rname,
    },
    // aws_simpledb_domain - https://www.terraform.io/docs/providers/aws/r/simpledb_domain.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/simpledb_domain.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/simpledb_domain.html#id.
    aws_simpledb_domain(rname, name, id=null):: {
      name: name,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_ami_from_instance - https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html#name.
    // @param source_instance_id (required) https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html#source_instance_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html#description.
    // @param snapshot_without_reboot (optional) https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html#snapshot_without_reboot.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ami_from_instance.html#tags.
    // @param ephemeral_block_device (optional) ephemeral_block_device block.
    // @param timeouts (optional) timeouts block.
    // @param ebs_block_device (optional) ebs_block_device block.
    aws_ami_from_instance(rname, name, source_instance_id, description=null, snapshot_without_reboot=null, id=null, tags=null, ephemeral_block_device={}, timeouts={}, ebs_block_device={}):: {
      name: name,
      source_instance_id: source_instance_id,
      [if description != null then 'description']: description,
      [if snapshot_without_reboot != null then 'snapshot_without_reboot']: snapshot_without_reboot,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if ephemeral_block_device != null then 'ephemeral_block_device']: ephemeral_block_device,
      [if timeouts != null then 'timeouts']: timeouts,
      [if ebs_block_device != null then 'ebs_block_device']: ebs_block_device,
      rname:: rname,
      image_location:: '${aws_ami_from_instance.%s.image_location}' % rname,
      kernel_id:: '${aws_ami_from_instance.%s.kernel_id}' % rname,
      manage_ebs_snapshots:: '${aws_ami_from_instance.%s.manage_ebs_snapshots}' % rname,
      root_snapshot_id:: '${aws_ami_from_instance.%s.root_snapshot_id}' % rname,
      architecture:: '${aws_ami_from_instance.%s.architecture}' % rname,
      ena_support:: '${aws_ami_from_instance.%s.ena_support}' % rname,
      root_device_name:: '${aws_ami_from_instance.%s.root_device_name}' % rname,
      virtualization_type:: '${aws_ami_from_instance.%s.virtualization_type}' % rname,
      ramdisk_id:: '${aws_ami_from_instance.%s.ramdisk_id}' % rname,
      sriov_net_support:: '${aws_ami_from_instance.%s.sriov_net_support}' % rname,
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
      [if propagating_vgws != null then 'propagating_vgws']: propagating_vgws,
      [if route != null then 'route']: route,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      rname:: rname,
      owner_id:: '${aws_default_route_table.%s.owner_id}' % rname,
      vpc_id:: '${aws_default_route_table.%s.vpc_id}' % rname,
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
      [if status != null then 'status']: status,
      [if id != null then 'id']: id,
      rname:: rname,
      fingerprint:: '${aws_iam_user_ssh_key.%s.fingerprint}' % rname,
      ssh_public_key_id:: '${aws_iam_user_ssh_key.%s.ssh_public_key_id}' % rname,
    },
    // aws_appautoscaling_target - https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param max_capacity (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#max_capacity.
    // @param min_capacity (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#min_capacity.
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#resource_id.
    // @param scalable_dimension (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#scalable_dimension.
    // @param service_namespace (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#service_namespace.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#id.
    // @param role_arn (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_target.html#role_arn.
    aws_appautoscaling_target(rname, max_capacity, min_capacity, resource_id, scalable_dimension, service_namespace, id=null, role_arn=null):: {
      max_capacity: max_capacity,
      min_capacity: min_capacity,
      resource_id: resource_id,
      scalable_dimension: scalable_dimension,
      service_namespace: service_namespace,
      [if id != null then 'id']: id,
      [if role_arn != null then 'role_arn']: role_arn,
      rname:: rname,
    },
    // aws_athena_workgroup - https://www.terraform.io/docs/providers/aws/r/athena_workgroup.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/athena_workgroup.html#name.
    // @param state (optional) https://www.terraform.io/docs/providers/aws/r/athena_workgroup.html#state.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/athena_workgroup.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/athena_workgroup.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/athena_workgroup.html#id.
    // @param configuration (optional) configuration block.
    aws_athena_workgroup(rname, name, state=null, tags=null, description=null, id=null, configuration={}):: {
      name: name,
      [if state != null then 'state']: state,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if configuration != null then 'configuration']: configuration,
      rname:: rname,
      arn:: '${aws_athena_workgroup.%s.arn}' % rname,
    },
    // aws_waf_geo_match_set - https://www.terraform.io/docs/providers/aws/r/waf_geo_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_geo_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_geo_match_set.html#id.
    // @param geo_match_constraint (optional) geo_match_constraint block.
    aws_waf_geo_match_set(rname, name, id=null, geo_match_constraint={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if geo_match_constraint != null then 'geo_match_constraint']: geo_match_constraint,
      rname:: rname,
    },
    // aws_opsworks_memcached_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#stack_id.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_undeploy_recipes.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#drain_elb_on_shutdown.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#id.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#instance_shutdown_timeout.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#name.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#auto_assign_public_ips.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_instance_profile_arn.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_deploy_recipes.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_security_group_ids.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_setup_recipes.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#system_packages.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#auto_assign_elastic_ips.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_configure_recipes.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#install_updates_on_boot.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#use_ebs_optimized_instances.
    // @param allocated_memory (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#allocated_memory.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#elastic_load_balancer.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_shutdown_recipes.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#auto_healing.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_memcached_layer.html#custom_json.
    // @param ebs_volume (optional) ebs_volume block.
    aws_opsworks_memcached_layer(rname, stack_id, custom_undeploy_recipes=null, drain_elb_on_shutdown=null, id=null, instance_shutdown_timeout=null, name=null, auto_assign_public_ips=null, custom_instance_profile_arn=null, custom_deploy_recipes=null, custom_security_group_ids=null, custom_setup_recipes=null, system_packages=null, auto_assign_elastic_ips=null, custom_configure_recipes=null, install_updates_on_boot=null, use_ebs_optimized_instances=null, allocated_memory=null, elastic_load_balancer=null, custom_shutdown_recipes=null, auto_healing=null, custom_json=null, ebs_volume={}):: {
      stack_id: stack_id,
      [if custom_undeploy_recipes != null then 'custom_undeploy_recipes']: custom_undeploy_recipes,
      [if drain_elb_on_shutdown != null then 'drain_elb_on_shutdown']: drain_elb_on_shutdown,
      [if id != null then 'id']: id,
      [if instance_shutdown_timeout != null then 'instance_shutdown_timeout']: instance_shutdown_timeout,
      [if name != null then 'name']: name,
      [if auto_assign_public_ips != null then 'auto_assign_public_ips']: auto_assign_public_ips,
      [if custom_instance_profile_arn != null then 'custom_instance_profile_arn']: custom_instance_profile_arn,
      [if custom_deploy_recipes != null then 'custom_deploy_recipes']: custom_deploy_recipes,
      [if custom_security_group_ids != null then 'custom_security_group_ids']: custom_security_group_ids,
      [if custom_setup_recipes != null then 'custom_setup_recipes']: custom_setup_recipes,
      [if system_packages != null then 'system_packages']: system_packages,
      [if auto_assign_elastic_ips != null then 'auto_assign_elastic_ips']: auto_assign_elastic_ips,
      [if custom_configure_recipes != null then 'custom_configure_recipes']: custom_configure_recipes,
      [if install_updates_on_boot != null then 'install_updates_on_boot']: install_updates_on_boot,
      [if use_ebs_optimized_instances != null then 'use_ebs_optimized_instances']: use_ebs_optimized_instances,
      [if allocated_memory != null then 'allocated_memory']: allocated_memory,
      [if elastic_load_balancer != null then 'elastic_load_balancer']: elastic_load_balancer,
      [if custom_shutdown_recipes != null then 'custom_shutdown_recipes']: custom_shutdown_recipes,
      [if auto_healing != null then 'auto_healing']: auto_healing,
      [if custom_json != null then 'custom_json']: custom_json,
      [if ebs_volume != null then 'ebs_volume']: ebs_volume,
      rname:: rname,
    },
    // aws_vpn_connection_route - https://www.terraform.io/docs/providers/aws/r/vpn_connection_route.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param destination_cidr_block (required) https://www.terraform.io/docs/providers/aws/r/vpn_connection_route.html#destination_cidr_block.
    // @param vpn_connection_id (required) https://www.terraform.io/docs/providers/aws/r/vpn_connection_route.html#vpn_connection_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection_route.html#id.
    aws_vpn_connection_route(rname, destination_cidr_block, vpn_connection_id, id=null):: {
      destination_cidr_block: destination_cidr_block,
      vpn_connection_id: vpn_connection_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_codebuild_webhook - https://www.terraform.io/docs/providers/aws/r/codebuild_webhook.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param project_name (required) https://www.terraform.io/docs/providers/aws/r/codebuild_webhook.html#project_name.
    // @param branch_filter (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_webhook.html#branch_filter.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_webhook.html#id.
    // @param filter_group (optional) filter_group block.
    aws_codebuild_webhook(rname, project_name, branch_filter=null, id=null, filter_group={}):: {
      project_name: project_name,
      [if branch_filter != null then 'branch_filter']: branch_filter,
      [if id != null then 'id']: id,
      [if filter_group != null then 'filter_group']: filter_group,
      rname:: rname,
      payload_url:: '${aws_codebuild_webhook.%s.payload_url}' % rname,
      secret:: '${aws_codebuild_webhook.%s.secret}' % rname,
      url:: '${aws_codebuild_webhook.%s.url}' % rname,
    },
    // aws_gamelift_build - https://www.terraform.io/docs/providers/aws/r/gamelift_build.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/gamelift_build.html#name.
    // @param operating_system (required) https://www.terraform.io/docs/providers/aws/r/gamelift_build.html#operating_system.
    // @param storage_location (required) storage_location block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_build.html#id.
    // @param version (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_build.html#version.
    aws_gamelift_build(rname, name, operating_system, storage_location, id=null, version=null):: {
      name: name,
      operating_system: operating_system,
      storage_location: storage_location,
      [if id != null then 'id']: id,
      [if version != null then 'version']: version,
      rname:: rname,
    },
    // aws_iam_user_policy_attachment - https://www.terraform.io/docs/providers/aws/r/iam_user_policy_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy_arn (required) https://www.terraform.io/docs/providers/aws/r/iam_user_policy_attachment.html#policy_arn.
    // @param user (required) https://www.terraform.io/docs/providers/aws/r/iam_user_policy_attachment.html#user.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_policy_attachment.html#id.
    aws_iam_user_policy_attachment(rname, policy_arn, user, id=null):: {
      policy_arn: policy_arn,
      user: user,
      [if id != null then 'id']: id,
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
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_gamelift_game_session_queue - https://www.terraform.io/docs/providers/aws/r/gamelift_game_session_queue.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/gamelift_game_session_queue.html#name.
    // @param destinations (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_game_session_queue.html#destinations.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_game_session_queue.html#id.
    // @param timeout_in_seconds (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_game_session_queue.html#timeout_in_seconds.
    // @param player_latency_policy (optional) player_latency_policy block.
    aws_gamelift_game_session_queue(rname, name, destinations=null, id=null, timeout_in_seconds=null, player_latency_policy={}):: {
      name: name,
      [if destinations != null then 'destinations']: destinations,
      [if id != null then 'id']: id,
      [if timeout_in_seconds != null then 'timeout_in_seconds']: timeout_in_seconds,
      [if player_latency_policy != null then 'player_latency_policy']: player_latency_policy,
      rname:: rname,
      arn:: '${aws_gamelift_game_session_queue.%s.arn}' % rname,
    },
    // aws_sagemaker_notebook_instance_lifecycle_configuration - https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance_lifecycle_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance_lifecycle_configuration.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance_lifecycle_configuration.html#name.
    // @param on_create (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance_lifecycle_configuration.html#on_create.
    // @param on_start (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_notebook_instance_lifecycle_configuration.html#on_start.
    aws_sagemaker_notebook_instance_lifecycle_configuration(rname, id=null, name=null, on_create=null, on_start=null):: {
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if on_create != null then 'on_create']: on_create,
      [if on_start != null then 'on_start']: on_start,
      rname:: rname,
      arn:: '${aws_sagemaker_notebook_instance_lifecycle_configuration.%s.arn}' % rname,
    },
    // aws_ses_template - https://www.terraform.io/docs/providers/aws/r/ses_template.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ses_template.html#name.
    // @param html (optional) https://www.terraform.io/docs/providers/aws/r/ses_template.html#html.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_template.html#id.
    // @param subject (optional) https://www.terraform.io/docs/providers/aws/r/ses_template.html#subject.
    // @param text (optional) https://www.terraform.io/docs/providers/aws/r/ses_template.html#text.
    aws_ses_template(rname, name, html=null, id=null, subject=null, text=null):: {
      name: name,
      [if html != null then 'html']: html,
      [if id != null then 'id']: id,
      [if subject != null then 'subject']: subject,
      [if text != null then 'text']: text,
      rname:: rname,
    },
    // aws_neptune_subnet_group - https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html#subnet_ids.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_subnet_group.html#name.
    aws_neptune_subnet_group(rname, subnet_ids, name_prefix=null, tags=null, description=null, id=null, name=null):: {
      subnet_ids: subnet_ids,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      rname:: rname,
      arn:: '${aws_neptune_subnet_group.%s.arn}' % rname,
    },
    // aws_rds_cluster_instance - https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#cluster_identifier.
    // @param instance_class (required) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#instance_class.
    // @param db_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#db_subnet_group_name.
    // @param identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#identifier_prefix.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#availability_zone.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#id.
    // @param monitoring_interval (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#monitoring_interval.
    // @param preferred_backup_window (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#preferred_backup_window.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#tags.
    // @param identifier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#identifier.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#engine_version.
    // @param monitoring_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#monitoring_role_arn.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#apply_immediately.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#preferred_maintenance_window.
    // @param publicly_accessible (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#publicly_accessible.
    // @param promotion_tier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#promotion_tier.
    // @param copy_tags_to_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#copy_tags_to_snapshot.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#auto_minor_version_upgrade.
    // @param db_parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#db_parameter_group_name.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#engine.
    // @param performance_insights_kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#performance_insights_kms_key_id.
    // @param performance_insights_enabled (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_instance.html#performance_insights_enabled.
    // @param timeouts (optional) timeouts block.
    aws_rds_cluster_instance(rname, cluster_identifier, instance_class, db_subnet_group_name=null, identifier_prefix=null, availability_zone=null, id=null, monitoring_interval=null, preferred_backup_window=null, tags=null, identifier=null, engine_version=null, monitoring_role_arn=null, apply_immediately=null, preferred_maintenance_window=null, publicly_accessible=null, promotion_tier=null, copy_tags_to_snapshot=null, auto_minor_version_upgrade=null, db_parameter_group_name=null, engine=null, performance_insights_kms_key_id=null, performance_insights_enabled=null, timeouts={}):: {
      cluster_identifier: cluster_identifier,
      instance_class: instance_class,
      [if db_subnet_group_name != null then 'db_subnet_group_name']: db_subnet_group_name,
      [if identifier_prefix != null then 'identifier_prefix']: identifier_prefix,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if id != null then 'id']: id,
      [if monitoring_interval != null then 'monitoring_interval']: monitoring_interval,
      [if preferred_backup_window != null then 'preferred_backup_window']: preferred_backup_window,
      [if tags != null then 'tags']: tags,
      [if identifier != null then 'identifier']: identifier,
      [if engine_version != null then 'engine_version']: engine_version,
      [if monitoring_role_arn != null then 'monitoring_role_arn']: monitoring_role_arn,
      [if apply_immediately != null then 'apply_immediately']: apply_immediately,
      [if preferred_maintenance_window != null then 'preferred_maintenance_window']: preferred_maintenance_window,
      [if publicly_accessible != null then 'publicly_accessible']: publicly_accessible,
      [if promotion_tier != null then 'promotion_tier']: promotion_tier,
      [if copy_tags_to_snapshot != null then 'copy_tags_to_snapshot']: copy_tags_to_snapshot,
      [if auto_minor_version_upgrade != null then 'auto_minor_version_upgrade']: auto_minor_version_upgrade,
      [if db_parameter_group_name != null then 'db_parameter_group_name']: db_parameter_group_name,
      [if engine != null then 'engine']: engine,
      [if performance_insights_kms_key_id != null then 'performance_insights_kms_key_id']: performance_insights_kms_key_id,
      [if performance_insights_enabled != null then 'performance_insights_enabled']: performance_insights_enabled,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      endpoint:: '${aws_rds_cluster_instance.%s.endpoint}' % rname,
      storage_encrypted:: '${aws_rds_cluster_instance.%s.storage_encrypted}' % rname,
      port:: '${aws_rds_cluster_instance.%s.port}' % rname,
      writer:: '${aws_rds_cluster_instance.%s.writer}' % rname,
      kms_key_id:: '${aws_rds_cluster_instance.%s.kms_key_id}' % rname,
      dbi_resource_id:: '${aws_rds_cluster_instance.%s.dbi_resource_id}' % rname,
      arn:: '${aws_rds_cluster_instance.%s.arn}' % rname,
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
      [if id != null then 'id']: id,
      [if include_original_headers != null then 'include_original_headers']: include_original_headers,
      [if topic_arn != null then 'topic_arn']: topic_arn,
      rname:: rname,
    },
    // aws_acmpca_certificate_authority - https://www.terraform.io/docs/providers/aws/r/acmpca_certificate_authority.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate_authority_configuration (required) certificate_authority_configuration block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/acmpca_certificate_authority.html#id.
    // @param permanent_deletion_time_in_days (optional) https://www.terraform.io/docs/providers/aws/r/acmpca_certificate_authority.html#permanent_deletion_time_in_days.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/acmpca_certificate_authority.html#tags.
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/acmpca_certificate_authority.html#type.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/acmpca_certificate_authority.html#enabled.
    // @param revocation_configuration (optional) revocation_configuration block.
    // @param timeouts (optional) timeouts block.
    aws_acmpca_certificate_authority(rname, certificate_authority_configuration, id=null, permanent_deletion_time_in_days=null, tags=null, type=null, enabled=null, revocation_configuration={}, timeouts={}):: {
      certificate_authority_configuration: certificate_authority_configuration,
      [if id != null then 'id']: id,
      [if permanent_deletion_time_in_days != null then 'permanent_deletion_time_in_days']: permanent_deletion_time_in_days,
      [if tags != null then 'tags']: tags,
      [if type != null then 'type']: type,
      [if enabled != null then 'enabled']: enabled,
      [if revocation_configuration != null then 'revocation_configuration']: revocation_configuration,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      certificate_signing_request:: '${aws_acmpca_certificate_authority.%s.certificate_signing_request}' % rname,
      not_before:: '${aws_acmpca_certificate_authority.%s.not_before}' % rname,
      status:: '${aws_acmpca_certificate_authority.%s.status}' % rname,
      arn:: '${aws_acmpca_certificate_authority.%s.arn}' % rname,
      certificate:: '${aws_acmpca_certificate_authority.%s.certificate}' % rname,
      not_after:: '${aws_acmpca_certificate_authority.%s.not_after}' % rname,
      serial:: '${aws_acmpca_certificate_authority.%s.serial}' % rname,
      certificate_chain:: '${aws_acmpca_certificate_authority.%s.certificate_chain}' % rname,
    },
    // aws_codepipeline_webhook - https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param authentication (required) https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html#authentication.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html#name.
    // @param target_action (required) https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html#target_action.
    // @param target_pipeline (required) https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html#target_pipeline.
    // @param filter (required) filter block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/codepipeline_webhook.html#tags.
    // @param authentication_configuration (optional) authentication_configuration block.
    aws_codepipeline_webhook(rname, authentication, name, target_action, target_pipeline, filter, id=null, tags=null, authentication_configuration={}):: {
      authentication: authentication,
      name: name,
      target_action: target_action,
      target_pipeline: target_pipeline,
      filter: filter,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if authentication_configuration != null then 'authentication_configuration']: authentication_configuration,
      rname:: rname,
      url:: '${aws_codepipeline_webhook.%s.url}' % rname,
    },
    // aws_msk_cluster - https://www.terraform.io/docs/providers/aws/r/msk_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_name (required) https://www.terraform.io/docs/providers/aws/r/msk_cluster.html#cluster_name.
    // @param kafka_version (required) https://www.terraform.io/docs/providers/aws/r/msk_cluster.html#kafka_version.
    // @param number_of_broker_nodes (required) https://www.terraform.io/docs/providers/aws/r/msk_cluster.html#number_of_broker_nodes.
    // @param broker_node_group_info (required) broker_node_group_info block.
    // @param enhanced_monitoring (optional) https://www.terraform.io/docs/providers/aws/r/msk_cluster.html#enhanced_monitoring.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/msk_cluster.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/msk_cluster.html#tags.
    // @param encryption_info (optional) encryption_info block.
    // @param client_authentication (optional) client_authentication block.
    // @param configuration_info (optional) configuration_info block.
    aws_msk_cluster(rname, cluster_name, kafka_version, number_of_broker_nodes, broker_node_group_info, enhanced_monitoring=null, id=null, tags=null, encryption_info={}, client_authentication={}, configuration_info={}):: {
      cluster_name: cluster_name,
      kafka_version: kafka_version,
      number_of_broker_nodes: number_of_broker_nodes,
      broker_node_group_info: broker_node_group_info,
      [if enhanced_monitoring != null then 'enhanced_monitoring']: enhanced_monitoring,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if encryption_info != null then 'encryption_info']: encryption_info,
      [if client_authentication != null then 'client_authentication']: client_authentication,
      [if configuration_info != null then 'configuration_info']: configuration_info,
      rname:: rname,
      current_version:: '${aws_msk_cluster.%s.current_version}' % rname,
      arn:: '${aws_msk_cluster.%s.arn}' % rname,
      bootstrap_brokers_tls:: '${aws_msk_cluster.%s.bootstrap_brokers_tls}' % rname,
      zookeeper_connect_string:: '${aws_msk_cluster.%s.zookeeper_connect_string}' % rname,
      bootstrap_brokers:: '${aws_msk_cluster.%s.bootstrap_brokers}' % rname,
    },
    // aws_docdb_cluster_snapshot - https://www.terraform.io/docs/providers/aws/r/docdb_cluster_snapshot.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param db_cluster_snapshot_identifier (required) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_snapshot.html#db_cluster_snapshot_identifier.
    // @param db_cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_snapshot.html#db_cluster_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_snapshot.html#id.
    // @param timeouts (optional) timeouts block.
    aws_docdb_cluster_snapshot(rname, db_cluster_snapshot_identifier, db_cluster_identifier, id=null, timeouts={}):: {
      db_cluster_snapshot_identifier: db_cluster_snapshot_identifier,
      db_cluster_identifier: db_cluster_identifier,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      db_cluster_snapshot_arn:: '${aws_docdb_cluster_snapshot.%s.db_cluster_snapshot_arn}' % rname,
      port:: '${aws_docdb_cluster_snapshot.%s.port}' % rname,
      source_db_cluster_snapshot_arn:: '${aws_docdb_cluster_snapshot.%s.source_db_cluster_snapshot_arn}' % rname,
      storage_encrypted:: '${aws_docdb_cluster_snapshot.%s.storage_encrypted}' % rname,
      availability_zones:: '${aws_docdb_cluster_snapshot.%s.availability_zones}' % rname,
      engine:: '${aws_docdb_cluster_snapshot.%s.engine}' % rname,
      kms_key_id:: '${aws_docdb_cluster_snapshot.%s.kms_key_id}' % rname,
      snapshot_type:: '${aws_docdb_cluster_snapshot.%s.snapshot_type}' % rname,
      status:: '${aws_docdb_cluster_snapshot.%s.status}' % rname,
      vpc_id:: '${aws_docdb_cluster_snapshot.%s.vpc_id}' % rname,
      engine_version:: '${aws_docdb_cluster_snapshot.%s.engine_version}' % rname,
    },
    // aws_dx_transit_virtual_interface - https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#bgp_asn.
    // @param address_family (required) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#address_family.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#name.
    // @param connection_id (required) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#connection_id.
    // @param dx_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#dx_gateway_id.
    // @param vlan (required) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#vlan.
    // @param bgp_auth_key (optional) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#bgp_auth_key.
    // @param mtu (optional) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#mtu.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#id.
    // @param amazon_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#amazon_address.
    // @param customer_address (optional) https://www.terraform.io/docs/providers/aws/r/dx_transit_virtual_interface.html#customer_address.
    // @param timeouts (optional) timeouts block.
    aws_dx_transit_virtual_interface(rname, bgp_asn, address_family, name, connection_id, dx_gateway_id, vlan, bgp_auth_key=null, mtu=null, tags=null, id=null, amazon_address=null, customer_address=null, timeouts={}):: {
      bgp_asn: bgp_asn,
      address_family: address_family,
      name: name,
      connection_id: connection_id,
      dx_gateway_id: dx_gateway_id,
      vlan: vlan,
      [if bgp_auth_key != null then 'bgp_auth_key']: bgp_auth_key,
      [if mtu != null then 'mtu']: mtu,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if amazon_address != null then 'amazon_address']: amazon_address,
      [if customer_address != null then 'customer_address']: customer_address,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      jumbo_frame_capable:: '${aws_dx_transit_virtual_interface.%s.jumbo_frame_capable}' % rname,
      aws_device:: '${aws_dx_transit_virtual_interface.%s.aws_device}' % rname,
      arn:: '${aws_dx_transit_virtual_interface.%s.arn}' % rname,
    },
    // aws_iam_role_policy - https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html#policy.
    // @param role (required) https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html#role.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html#name_prefix.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/iam_role_policy.html#name.
    aws_iam_role_policy(rname, policy, role, name_prefix=null, id=null, name=null):: {
      policy: policy,
      role: role,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      rname:: rname,
    },
    // aws_iam_service_linked_role - https://www.terraform.io/docs/providers/aws/r/iam_service_linked_role.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param aws_service_name (required) https://www.terraform.io/docs/providers/aws/r/iam_service_linked_role.html#aws_service_name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/iam_service_linked_role.html#description.
    // @param custom_suffix (optional) https://www.terraform.io/docs/providers/aws/r/iam_service_linked_role.html#custom_suffix.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_service_linked_role.html#id.
    aws_iam_service_linked_role(rname, aws_service_name, description=null, custom_suffix=null, id=null):: {
      aws_service_name: aws_service_name,
      [if description != null then 'description']: description,
      [if custom_suffix != null then 'custom_suffix']: custom_suffix,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_iam_service_linked_role.%s.arn}' % rname,
      create_date:: '${aws_iam_service_linked_role.%s.create_date}' % rname,
      name:: '${aws_iam_service_linked_role.%s.name}' % rname,
      path:: '${aws_iam_service_linked_role.%s.path}' % rname,
      unique_id:: '${aws_iam_service_linked_role.%s.unique_id}' % rname,
    },
    // aws_organizations_account - https://www.terraform.io/docs/providers/aws/r/organizations_account.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param email (required) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#email.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#name.
    // @param parent_id (optional) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#parent_id.
    // @param role_name (optional) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#role_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#tags.
    // @param iam_user_access_to_billing (optional) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#iam_user_access_to_billing.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/organizations_account.html#id.
    aws_organizations_account(rname, email, name, parent_id=null, role_name=null, tags=null, iam_user_access_to_billing=null, id=null):: {
      email: email,
      name: name,
      [if parent_id != null then 'parent_id']: parent_id,
      [if role_name != null then 'role_name']: role_name,
      [if tags != null then 'tags']: tags,
      [if iam_user_access_to_billing != null then 'iam_user_access_to_billing']: iam_user_access_to_billing,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_organizations_account.%s.arn}' % rname,
      joined_method:: '${aws_organizations_account.%s.joined_method}' % rname,
      status:: '${aws_organizations_account.%s.status}' % rname,
      joined_timestamp:: '${aws_organizations_account.%s.joined_timestamp}' % rname,
    },
    // aws_api_gateway_integration - https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#type.
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#resource_id.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#rest_api_id.
    // @param http_method (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#http_method.
    // @param uri (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#uri.
    // @param connection_id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#connection_id.
    // @param passthrough_behavior (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#passthrough_behavior.
    // @param request_parameters_in_json (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#request_parameters_in_json.
    // @param content_handling (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#content_handling.
    // @param credentials (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#credentials.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#id.
    // @param integration_http_method (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#integration_http_method.
    // @param timeout_milliseconds (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#timeout_milliseconds.
    // @param cache_key_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#cache_key_parameters.
    // @param cache_namespace (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#cache_namespace.
    // @param connection_type (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#connection_type.
    // @param request_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#request_parameters.
    // @param request_templates (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration.html#request_templates.
    aws_api_gateway_integration(rname, type, resource_id, rest_api_id, http_method, uri=null, connection_id=null, passthrough_behavior=null, request_parameters_in_json=null, content_handling=null, credentials=null, id=null, integration_http_method=null, timeout_milliseconds=null, cache_key_parameters=null, cache_namespace=null, connection_type=null, request_parameters=null, request_templates=null):: {
      type: type,
      resource_id: resource_id,
      rest_api_id: rest_api_id,
      http_method: http_method,
      [if uri != null then 'uri']: uri,
      [if connection_id != null then 'connection_id']: connection_id,
      [if passthrough_behavior != null then 'passthrough_behavior']: passthrough_behavior,
      [if request_parameters_in_json != null then 'request_parameters_in_json']: request_parameters_in_json,
      [if content_handling != null then 'content_handling']: content_handling,
      [if credentials != null then 'credentials']: credentials,
      [if id != null then 'id']: id,
      [if integration_http_method != null then 'integration_http_method']: integration_http_method,
      [if timeout_milliseconds != null then 'timeout_milliseconds']: timeout_milliseconds,
      [if cache_key_parameters != null then 'cache_key_parameters']: cache_key_parameters,
      [if cache_namespace != null then 'cache_namespace']: cache_namespace,
      [if connection_type != null then 'connection_type']: connection_type,
      [if request_parameters != null then 'request_parameters']: request_parameters,
      [if request_templates != null then 'request_templates']: request_templates,
      rname:: rname,
    },
    // aws_codecommit_repository - https://www.terraform.io/docs/providers/aws/r/codecommit_repository.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param repository_name (required) https://www.terraform.io/docs/providers/aws/r/codecommit_repository.html#repository_name.
    // @param default_branch (optional) https://www.terraform.io/docs/providers/aws/r/codecommit_repository.html#default_branch.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/codecommit_repository.html#description.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/codecommit_repository.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codecommit_repository.html#id.
    aws_codecommit_repository(rname, repository_name, default_branch=null, description=null, tags=null, id=null):: {
      repository_name: repository_name,
      [if default_branch != null then 'default_branch']: default_branch,
      [if description != null then 'description']: description,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_codecommit_repository.%s.arn}' % rname,
      clone_url_http:: '${aws_codecommit_repository.%s.clone_url_http}' % rname,
      clone_url_ssh:: '${aws_codecommit_repository.%s.clone_url_ssh}' % rname,
      repository_id:: '${aws_codecommit_repository.%s.repository_id}' % rname,
    },
    // aws_codedeploy_deployment_config - https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_config.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param deployment_config_name (required) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_config.html#deployment_config_name.
    // @param compute_platform (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_config.html#compute_platform.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codedeploy_deployment_config.html#id.
    // @param minimum_healthy_hosts (optional) minimum_healthy_hosts block.
    // @param traffic_routing_config (optional) traffic_routing_config block.
    aws_codedeploy_deployment_config(rname, deployment_config_name, compute_platform=null, id=null, minimum_healthy_hosts={}, traffic_routing_config={}):: {
      deployment_config_name: deployment_config_name,
      [if compute_platform != null then 'compute_platform']: compute_platform,
      [if id != null then 'id']: id,
      [if minimum_healthy_hosts != null then 'minimum_healthy_hosts']: minimum_healthy_hosts,
      [if traffic_routing_config != null then 'traffic_routing_config']: traffic_routing_config,
      rname:: rname,
      deployment_config_id:: '${aws_codedeploy_deployment_config.%s.deployment_config_id}' % rname,
    },
    // aws_spot_instance_request - https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#instance_type.
    // @param ami (required) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#ami.
    // @param private_ip (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#private_ip.
    // @param source_dest_check (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#source_dest_check.
    // @param cpu_threads_per_core (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#cpu_threads_per_core.
    // @param get_password_data (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#get_password_data.
    // @param iam_instance_profile (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#iam_instance_profile.
    // @param monitoring (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#monitoring.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#ebs_optimized.
    // @param placement_group (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#placement_group.
    // @param user_data (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#user_data.
    // @param spot_type (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#spot_type.
    // @param user_data_base64 (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#user_data_base64.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#availability_zone.
    // @param block_duration_minutes (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#block_duration_minutes.
    // @param launch_group (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#launch_group.
    // @param ipv6_addresses (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#ipv6_addresses.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#security_groups.
    // @param spot_price (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#spot_price.
    // @param tenancy (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#tenancy.
    // @param disable_api_termination (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#disable_api_termination.
    // @param host_id (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#host_id.
    // @param key_name (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#key_name.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#subnet_id.
    // @param valid_from (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#valid_from.
    // @param volume_tags (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#volume_tags.
    // @param associate_public_ip_address (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#associate_public_ip_address.
    // @param ipv6_address_count (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#ipv6_address_count.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#vpc_security_group_ids.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#tags.
    // @param valid_until (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#valid_until.
    // @param cpu_core_count (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#cpu_core_count.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#id.
    // @param instance_initiated_shutdown_behavior (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#instance_initiated_shutdown_behavior.
    // @param instance_interruption_behaviour (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#instance_interruption_behaviour.
    // @param wait_for_fulfillment (optional) https://www.terraform.io/docs/providers/aws/r/spot_instance_request.html#wait_for_fulfillment.
    // @param credit_specification (optional) credit_specification block.
    // @param ebs_block_device (optional) ebs_block_device block.
    // @param ephemeral_block_device (optional) ephemeral_block_device block.
    // @param network_interface (optional) network_interface block.
    // @param root_block_device (optional) root_block_device block.
    // @param timeouts (optional) timeouts block.
    aws_spot_instance_request(rname, instance_type, ami, private_ip=null, source_dest_check=null, cpu_threads_per_core=null, get_password_data=null, iam_instance_profile=null, monitoring=null, ebs_optimized=null, placement_group=null, user_data=null, spot_type=null, user_data_base64=null, availability_zone=null, block_duration_minutes=null, launch_group=null, ipv6_addresses=null, security_groups=null, spot_price=null, tenancy=null, disable_api_termination=null, host_id=null, key_name=null, subnet_id=null, valid_from=null, volume_tags=null, associate_public_ip_address=null, ipv6_address_count=null, vpc_security_group_ids=null, tags=null, valid_until=null, cpu_core_count=null, id=null, instance_initiated_shutdown_behavior=null, instance_interruption_behaviour=null, wait_for_fulfillment=null, credit_specification={}, ebs_block_device={}, ephemeral_block_device={}, network_interface={}, root_block_device={}, timeouts={}):: {
      instance_type: instance_type,
      ami: ami,
      [if private_ip != null then 'private_ip']: private_ip,
      [if source_dest_check != null then 'source_dest_check']: source_dest_check,
      [if cpu_threads_per_core != null then 'cpu_threads_per_core']: cpu_threads_per_core,
      [if get_password_data != null then 'get_password_data']: get_password_data,
      [if iam_instance_profile != null then 'iam_instance_profile']: iam_instance_profile,
      [if monitoring != null then 'monitoring']: monitoring,
      [if ebs_optimized != null then 'ebs_optimized']: ebs_optimized,
      [if placement_group != null then 'placement_group']: placement_group,
      [if user_data != null then 'user_data']: user_data,
      [if spot_type != null then 'spot_type']: spot_type,
      [if user_data_base64 != null then 'user_data_base64']: user_data_base64,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if block_duration_minutes != null then 'block_duration_minutes']: block_duration_minutes,
      [if launch_group != null then 'launch_group']: launch_group,
      [if ipv6_addresses != null then 'ipv6_addresses']: ipv6_addresses,
      [if security_groups != null then 'security_groups']: security_groups,
      [if spot_price != null then 'spot_price']: spot_price,
      [if tenancy != null then 'tenancy']: tenancy,
      [if disable_api_termination != null then 'disable_api_termination']: disable_api_termination,
      [if host_id != null then 'host_id']: host_id,
      [if key_name != null then 'key_name']: key_name,
      [if subnet_id != null then 'subnet_id']: subnet_id,
      [if valid_from != null then 'valid_from']: valid_from,
      [if volume_tags != null then 'volume_tags']: volume_tags,
      [if associate_public_ip_address != null then 'associate_public_ip_address']: associate_public_ip_address,
      [if ipv6_address_count != null then 'ipv6_address_count']: ipv6_address_count,
      [if vpc_security_group_ids != null then 'vpc_security_group_ids']: vpc_security_group_ids,
      [if tags != null then 'tags']: tags,
      [if valid_until != null then 'valid_until']: valid_until,
      [if cpu_core_count != null then 'cpu_core_count']: cpu_core_count,
      [if id != null then 'id']: id,
      [if instance_initiated_shutdown_behavior != null then 'instance_initiated_shutdown_behavior']: instance_initiated_shutdown_behavior,
      [if instance_interruption_behaviour != null then 'instance_interruption_behaviour']: instance_interruption_behaviour,
      [if wait_for_fulfillment != null then 'wait_for_fulfillment']: wait_for_fulfillment,
      [if credit_specification != null then 'credit_specification']: credit_specification,
      [if ebs_block_device != null then 'ebs_block_device']: ebs_block_device,
      [if ephemeral_block_device != null then 'ephemeral_block_device']: ephemeral_block_device,
      [if network_interface != null then 'network_interface']: network_interface,
      [if root_block_device != null then 'root_block_device']: root_block_device,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      public_ip:: '${aws_spot_instance_request.%s.public_ip}' % rname,
      spot_instance_id:: '${aws_spot_instance_request.%s.spot_instance_id}' % rname,
      primary_network_interface_id:: '${aws_spot_instance_request.%s.primary_network_interface_id}' % rname,
      spot_bid_status:: '${aws_spot_instance_request.%s.spot_bid_status}' % rname,
      arn:: '${aws_spot_instance_request.%s.arn}' % rname,
      public_dns:: '${aws_spot_instance_request.%s.public_dns}' % rname,
      private_dns:: '${aws_spot_instance_request.%s.private_dns}' % rname,
      network_interface_id:: '${aws_spot_instance_request.%s.network_interface_id}' % rname,
      password_data:: '${aws_spot_instance_request.%s.password_data}' % rname,
      instance_state:: '${aws_spot_instance_request.%s.instance_state}' % rname,
      spot_request_state:: '${aws_spot_instance_request.%s.spot_request_state}' % rname,
    },
    // aws_emr_security_configuration - https://www.terraform.io/docs/providers/aws/r/emr_security_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param configuration (required) https://www.terraform.io/docs/providers/aws/r/emr_security_configuration.html#configuration.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/emr_security_configuration.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/emr_security_configuration.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/emr_security_configuration.html#name_prefix.
    aws_emr_security_configuration(rname, configuration, id=null, name=null, name_prefix=null):: {
      configuration: configuration,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      rname:: rname,
      creation_date:: '${aws_emr_security_configuration.%s.creation_date}' % rname,
    },
    // aws_rds_cluster - https://www.terraform.io/docs/providers/aws/r/rds_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param backtrack_window (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#backtrack_window.
    // @param backup_retention_period (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#backup_retention_period.
    // @param copy_tags_to_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#copy_tags_to_snapshot.
    // @param iam_database_authentication_enabled (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#iam_database_authentication_enabled.
    // @param iam_roles (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#iam_roles.
    // @param master_username (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#master_username.
    // @param snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#snapshot_identifier.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#vpc_security_group_ids.
    // @param deletion_protection (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#deletion_protection.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#preferred_maintenance_window.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#availability_zones.
    // @param cluster_members (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#cluster_members.
    // @param database_name (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#database_name.
    // @param db_cluster_parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#db_cluster_parameter_group_name.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#apply_immediately.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#id.
    // @param master_password (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#master_password.
    // @param preferred_backup_window (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#preferred_backup_window.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#port.
    // @param final_snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#final_snapshot_identifier.
    // @param replication_source_identifier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#replication_source_identifier.
    // @param source_region (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#source_region.
    // @param cluster_identifier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#cluster_identifier.
    // @param cluster_identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#cluster_identifier_prefix.
    // @param enabled_cloudwatch_logs_exports (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#enabled_cloudwatch_logs_exports.
    // @param engine_mode (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#engine_mode.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#tags.
    // @param db_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#db_subnet_group_name.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#engine.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#engine_version.
    // @param global_cluster_identifier (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#global_cluster_identifier.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#kms_key_id.
    // @param skip_final_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#skip_final_snapshot.
    // @param storage_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster.html#storage_encrypted.
    // @param s3_import (optional) s3_import block.
    // @param scaling_configuration (optional) scaling_configuration block.
    // @param timeouts (optional) timeouts block.
    aws_rds_cluster(rname, backtrack_window=null, backup_retention_period=null, copy_tags_to_snapshot=null, iam_database_authentication_enabled=null, iam_roles=null, master_username=null, snapshot_identifier=null, vpc_security_group_ids=null, deletion_protection=null, preferred_maintenance_window=null, availability_zones=null, cluster_members=null, database_name=null, db_cluster_parameter_group_name=null, apply_immediately=null, id=null, master_password=null, preferred_backup_window=null, port=null, final_snapshot_identifier=null, replication_source_identifier=null, source_region=null, cluster_identifier=null, cluster_identifier_prefix=null, enabled_cloudwatch_logs_exports=null, engine_mode=null, tags=null, db_subnet_group_name=null, engine=null, engine_version=null, global_cluster_identifier=null, kms_key_id=null, skip_final_snapshot=null, storage_encrypted=null, s3_import={}, scaling_configuration={}, timeouts={}):: {
      [if backtrack_window != null then 'backtrack_window']: backtrack_window,
      [if backup_retention_period != null then 'backup_retention_period']: backup_retention_period,
      [if copy_tags_to_snapshot != null then 'copy_tags_to_snapshot']: copy_tags_to_snapshot,
      [if iam_database_authentication_enabled != null then 'iam_database_authentication_enabled']: iam_database_authentication_enabled,
      [if iam_roles != null then 'iam_roles']: iam_roles,
      [if master_username != null then 'master_username']: master_username,
      [if snapshot_identifier != null then 'snapshot_identifier']: snapshot_identifier,
      [if vpc_security_group_ids != null then 'vpc_security_group_ids']: vpc_security_group_ids,
      [if deletion_protection != null then 'deletion_protection']: deletion_protection,
      [if preferred_maintenance_window != null then 'preferred_maintenance_window']: preferred_maintenance_window,
      [if availability_zones != null then 'availability_zones']: availability_zones,
      [if cluster_members != null then 'cluster_members']: cluster_members,
      [if database_name != null then 'database_name']: database_name,
      [if db_cluster_parameter_group_name != null then 'db_cluster_parameter_group_name']: db_cluster_parameter_group_name,
      [if apply_immediately != null then 'apply_immediately']: apply_immediately,
      [if id != null then 'id']: id,
      [if master_password != null then 'master_password']: master_password,
      [if preferred_backup_window != null then 'preferred_backup_window']: preferred_backup_window,
      [if port != null then 'port']: port,
      [if final_snapshot_identifier != null then 'final_snapshot_identifier']: final_snapshot_identifier,
      [if replication_source_identifier != null then 'replication_source_identifier']: replication_source_identifier,
      [if source_region != null then 'source_region']: source_region,
      [if cluster_identifier != null then 'cluster_identifier']: cluster_identifier,
      [if cluster_identifier_prefix != null then 'cluster_identifier_prefix']: cluster_identifier_prefix,
      [if enabled_cloudwatch_logs_exports != null then 'enabled_cloudwatch_logs_exports']: enabled_cloudwatch_logs_exports,
      [if engine_mode != null then 'engine_mode']: engine_mode,
      [if tags != null then 'tags']: tags,
      [if db_subnet_group_name != null then 'db_subnet_group_name']: db_subnet_group_name,
      [if engine != null then 'engine']: engine,
      [if engine_version != null then 'engine_version']: engine_version,
      [if global_cluster_identifier != null then 'global_cluster_identifier']: global_cluster_identifier,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if skip_final_snapshot != null then 'skip_final_snapshot']: skip_final_snapshot,
      [if storage_encrypted != null then 'storage_encrypted']: storage_encrypted,
      [if s3_import != null then 's3_import']: s3_import,
      [if scaling_configuration != null then 'scaling_configuration']: scaling_configuration,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_rds_cluster.%s.arn}' % rname,
      endpoint:: '${aws_rds_cluster.%s.endpoint}' % rname,
      cluster_resource_id:: '${aws_rds_cluster.%s.cluster_resource_id}' % rname,
      reader_endpoint:: '${aws_rds_cluster.%s.reader_endpoint}' % rname,
      hosted_zone_id:: '${aws_rds_cluster.%s.hosted_zone_id}' % rname,
    },
    // aws_dms_replication_instance - https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param replication_instance_class (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#replication_instance_class.
    // @param replication_instance_id (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#replication_instance_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#id.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#kms_key_arn.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#tags.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#auto_minor_version_upgrade.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#engine_version.
    // @param replication_subnet_group_id (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#replication_subnet_group_id.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#vpc_security_group_ids.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#preferred_maintenance_window.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#availability_zone.
    // @param publicly_accessible (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#publicly_accessible.
    // @param allocated_storage (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#allocated_storage.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#apply_immediately.
    // @param multi_az (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_instance.html#multi_az.
    // @param timeouts (optional) timeouts block.
    aws_dms_replication_instance(rname, replication_instance_class, replication_instance_id, id=null, kms_key_arn=null, tags=null, auto_minor_version_upgrade=null, engine_version=null, replication_subnet_group_id=null, vpc_security_group_ids=null, preferred_maintenance_window=null, availability_zone=null, publicly_accessible=null, allocated_storage=null, apply_immediately=null, multi_az=null, timeouts={}):: {
      replication_instance_class: replication_instance_class,
      replication_instance_id: replication_instance_id,
      [if id != null then 'id']: id,
      [if kms_key_arn != null then 'kms_key_arn']: kms_key_arn,
      [if tags != null then 'tags']: tags,
      [if auto_minor_version_upgrade != null then 'auto_minor_version_upgrade']: auto_minor_version_upgrade,
      [if engine_version != null then 'engine_version']: engine_version,
      [if replication_subnet_group_id != null then 'replication_subnet_group_id']: replication_subnet_group_id,
      [if vpc_security_group_ids != null then 'vpc_security_group_ids']: vpc_security_group_ids,
      [if preferred_maintenance_window != null then 'preferred_maintenance_window']: preferred_maintenance_window,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if publicly_accessible != null then 'publicly_accessible']: publicly_accessible,
      [if allocated_storage != null then 'allocated_storage']: allocated_storage,
      [if apply_immediately != null then 'apply_immediately']: apply_immediately,
      [if multi_az != null then 'multi_az']: multi_az,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      replication_instance_arn:: '${aws_dms_replication_instance.%s.replication_instance_arn}' % rname,
      replication_instance_private_ips:: '${aws_dms_replication_instance.%s.replication_instance_private_ips}' % rname,
      replication_instance_public_ips:: '${aws_dms_replication_instance.%s.replication_instance_public_ips}' % rname,
    },
    // aws_fsx_lustre_file_system - https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param storage_capacity (required) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#storage_capacity.
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#subnet_ids.
    // @param weekly_maintenance_start_time (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#weekly_maintenance_start_time.
    // @param import_path (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#import_path.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#tags.
    // @param imported_file_chunk_size (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#imported_file_chunk_size.
    // @param export_path (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#export_path.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#id.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/fsx_lustre_file_system.html#security_group_ids.
    // @param timeouts (optional) timeouts block.
    aws_fsx_lustre_file_system(rname, storage_capacity, subnet_ids, weekly_maintenance_start_time=null, import_path=null, tags=null, imported_file_chunk_size=null, export_path=null, id=null, security_group_ids=null, timeouts={}):: {
      storage_capacity: storage_capacity,
      subnet_ids: subnet_ids,
      [if weekly_maintenance_start_time != null then 'weekly_maintenance_start_time']: weekly_maintenance_start_time,
      [if import_path != null then 'import_path']: import_path,
      [if tags != null then 'tags']: tags,
      [if imported_file_chunk_size != null then 'imported_file_chunk_size']: imported_file_chunk_size,
      [if export_path != null then 'export_path']: export_path,
      [if id != null then 'id']: id,
      [if security_group_ids != null then 'security_group_ids']: security_group_ids,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      vpc_id:: '${aws_fsx_lustre_file_system.%s.vpc_id}' % rname,
      network_interface_ids:: '${aws_fsx_lustre_file_system.%s.network_interface_ids}' % rname,
      dns_name:: '${aws_fsx_lustre_file_system.%s.dns_name}' % rname,
      owner_id:: '${aws_fsx_lustre_file_system.%s.owner_id}' % rname,
      arn:: '${aws_fsx_lustre_file_system.%s.arn}' % rname,
    },
    // aws_vpn_gateway_attachment - https://www.terraform.io/docs/providers/aws/r/vpn_gateway_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/vpn_gateway_attachment.html#vpc_id.
    // @param vpn_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/vpn_gateway_attachment.html#vpn_gateway_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway_attachment.html#id.
    aws_vpn_gateway_attachment(rname, vpc_id, vpn_gateway_id, id=null):: {
      vpc_id: vpc_id,
      vpn_gateway_id: vpn_gateway_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_gamelift_alias - https://www.terraform.io/docs/providers/aws/r/gamelift_alias.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/gamelift_alias.html#name.
    // @param routing_strategy (required) routing_strategy block.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_alias.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/gamelift_alias.html#id.
    aws_gamelift_alias(rname, name, routing_strategy, description=null, id=null):: {
      name: name,
      routing_strategy: routing_strategy,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_gamelift_alias.%s.arn}' % rname,
    },
    // aws_glue_job - https://www.terraform.io/docs/providers/aws/r/glue_job.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_job.html#name.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/glue_job.html#role_arn.
    // @param command (required) command block.
    // @param allocated_capacity (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#allocated_capacity.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#id.
    // @param max_retries (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#max_retries.
    // @param security_configuration (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#security_configuration.
    // @param connections (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#connections.
    // @param default_arguments (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#default_arguments.
    // @param max_capacity (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#max_capacity.
    // @param timeout (optional) https://www.terraform.io/docs/providers/aws/r/glue_job.html#timeout.
    // @param execution_property (optional) execution_property block.
    aws_glue_job(rname, name, role_arn, command, allocated_capacity=null, description=null, id=null, max_retries=null, security_configuration=null, connections=null, default_arguments=null, max_capacity=null, timeout=null, execution_property={}):: {
      name: name,
      role_arn: role_arn,
      command: command,
      [if allocated_capacity != null then 'allocated_capacity']: allocated_capacity,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if max_retries != null then 'max_retries']: max_retries,
      [if security_configuration != null then 'security_configuration']: security_configuration,
      [if connections != null then 'connections']: connections,
      [if default_arguments != null then 'default_arguments']: default_arguments,
      [if max_capacity != null then 'max_capacity']: max_capacity,
      [if timeout != null then 'timeout']: timeout,
      [if execution_property != null then 'execution_property']: execution_property,
      rname:: rname,
    },
    // aws_transfer_server - https://www.terraform.io/docs/providers/aws/r/transfer_server.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param endpoint_type (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#endpoint_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#id.
    // @param url (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#url.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#force_destroy.
    // @param identity_provider_type (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#identity_provider_type.
    // @param invocation_role (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#invocation_role.
    // @param logging_role (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#logging_role.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/transfer_server.html#tags.
    // @param endpoint_details (optional) endpoint_details block.
    aws_transfer_server(rname, endpoint_type=null, id=null, url=null, force_destroy=null, identity_provider_type=null, invocation_role=null, logging_role=null, tags=null, endpoint_details={}):: {
      [if endpoint_type != null then 'endpoint_type']: endpoint_type,
      [if id != null then 'id']: id,
      [if url != null then 'url']: url,
      [if force_destroy != null then 'force_destroy']: force_destroy,
      [if identity_provider_type != null then 'identity_provider_type']: identity_provider_type,
      [if invocation_role != null then 'invocation_role']: invocation_role,
      [if logging_role != null then 'logging_role']: logging_role,
      [if tags != null then 'tags']: tags,
      [if endpoint_details != null then 'endpoint_details']: endpoint_details,
      rname:: rname,
      arn:: '${aws_transfer_server.%s.arn}' % rname,
      endpoint:: '${aws_transfer_server.%s.endpoint}' % rname,
    },
    // aws_cognito_identity_provider - https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param user_pool_id (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#user_pool_id.
    // @param provider_details (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#provider_details.
    // @param provider_name (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#provider_name.
    // @param provider_type (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#provider_type.
    // @param attribute_mapping (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#attribute_mapping.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#id.
    // @param idp_identifiers (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_provider.html#idp_identifiers.
    aws_cognito_identity_provider(rname, user_pool_id, provider_details, provider_name, provider_type, attribute_mapping=null, id=null, idp_identifiers=null):: {
      user_pool_id: user_pool_id,
      provider_details: provider_details,
      provider_name: provider_name,
      provider_type: provider_type,
      [if attribute_mapping != null then 'attribute_mapping']: attribute_mapping,
      [if id != null then 'id']: id,
      [if idp_identifiers != null then 'idp_identifiers']: idp_identifiers,
      rname:: rname,
    },
    // aws_ecs_task_definition - https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#family.
    // @param container_definitions (required) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#container_definitions.
    // @param execution_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#execution_role_arn.
    // @param network_mode (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#network_mode.
    // @param task_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#task_role_arn.
    // @param cpu (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#cpu.
    // @param memory (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#memory.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#tags.
    // @param pid_mode (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#pid_mode.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#id.
    // @param ipc_mode (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#ipc_mode.
    // @param requires_compatibilities (optional) https://www.terraform.io/docs/providers/aws/r/ecs_task_definition.html#requires_compatibilities.
    // @param placement_constraints (optional) placement_constraints block.
    // @param proxy_configuration (optional) proxy_configuration block.
    // @param volume (optional) volume block.
    aws_ecs_task_definition(rname, family, container_definitions, execution_role_arn=null, network_mode=null, task_role_arn=null, cpu=null, memory=null, tags=null, pid_mode=null, id=null, ipc_mode=null, requires_compatibilities=null, placement_constraints={}, proxy_configuration={}, volume={}):: {
      family: family,
      container_definitions: container_definitions,
      [if execution_role_arn != null then 'execution_role_arn']: execution_role_arn,
      [if network_mode != null then 'network_mode']: network_mode,
      [if task_role_arn != null then 'task_role_arn']: task_role_arn,
      [if cpu != null then 'cpu']: cpu,
      [if memory != null then 'memory']: memory,
      [if tags != null then 'tags']: tags,
      [if pid_mode != null then 'pid_mode']: pid_mode,
      [if id != null then 'id']: id,
      [if ipc_mode != null then 'ipc_mode']: ipc_mode,
      [if requires_compatibilities != null then 'requires_compatibilities']: requires_compatibilities,
      [if placement_constraints != null then 'placement_constraints']: placement_constraints,
      [if proxy_configuration != null then 'proxy_configuration']: proxy_configuration,
      [if volume != null then 'volume']: volume,
      rname:: rname,
      arn:: '${aws_ecs_task_definition.%s.arn}' % rname,
      revision:: '${aws_ecs_task_definition.%s.revision}' % rname,
    },
    // aws_neptune_cluster_parameter_group - https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html#family.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster_parameter_group.html#description.
    // @param parameter (optional) parameter block.
    aws_neptune_cluster_parameter_group(rname, family, id=null, name=null, name_prefix=null, tags=null, description=null, parameter={}):: {
      family: family,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if parameter != null then 'parameter']: parameter,
      rname:: rname,
      arn:: '${aws_neptune_cluster_parameter_group.%s.arn}' % rname,
    },
    // aws_pinpoint_apns_voip_sandbox_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#application_id.
    // @param certificate (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#certificate.
    // @param default_authentication_method (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#default_authentication_method.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#enabled.
    // @param private_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#private_key.
    // @param token_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#token_key.
    // @param bundle_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#bundle_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#id.
    // @param team_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#team_id.
    // @param token_key_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_sandbox_channel.html#token_key_id.
    aws_pinpoint_apns_voip_sandbox_channel(rname, application_id, certificate=null, default_authentication_method=null, enabled=null, private_key=null, token_key=null, bundle_id=null, id=null, team_id=null, token_key_id=null):: {
      application_id: application_id,
      [if certificate != null then 'certificate']: certificate,
      [if default_authentication_method != null then 'default_authentication_method']: default_authentication_method,
      [if enabled != null then 'enabled']: enabled,
      [if private_key != null then 'private_key']: private_key,
      [if token_key != null then 'token_key']: token_key,
      [if bundle_id != null then 'bundle_id']: bundle_id,
      [if id != null then 'id']: id,
      [if team_id != null then 'team_id']: team_id,
      [if token_key_id != null then 'token_key_id']: token_key_id,
      rname:: rname,
    },
    // aws_api_gateway_api_key - https://www.terraform.io/docs/providers/aws/r/api_gateway_api_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_api_key.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_api_key.html#id.
    // @param value (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_api_key.html#value.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_api_key.html#description.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_api_key.html#enabled.
    // @param stage_key (optional) stage_key block.
    aws_api_gateway_api_key(rname, name, id=null, value=null, description=null, enabled=null, stage_key={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if value != null then 'value']: value,
      [if description != null then 'description']: description,
      [if enabled != null then 'enabled']: enabled,
      [if stage_key != null then 'stage_key']: stage_key,
      rname:: rname,
      last_updated_date:: '${aws_api_gateway_api_key.%s.last_updated_date}' % rname,
      created_date:: '${aws_api_gateway_api_key.%s.created_date}' % rname,
    },
    // aws_api_gateway_method_settings - https://www.terraform.io/docs/providers/aws/r/api_gateway_method_settings.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param method_path (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_settings.html#method_path.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_settings.html#rest_api_id.
    // @param stage_name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_settings.html#stage_name.
    // @param settings (required) settings block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_method_settings.html#id.
    aws_api_gateway_method_settings(rname, method_path, rest_api_id, stage_name, settings, id=null):: {
      method_path: method_path,
      rest_api_id: rest_api_id,
      stage_name: stage_name,
      settings: settings,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_lb_listener - https://www.terraform.io/docs/providers/aws/r/lb_listener.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param load_balancer_arn (required) https://www.terraform.io/docs/providers/aws/r/lb_listener.html#load_balancer_arn.
    // @param port (required) https://www.terraform.io/docs/providers/aws/r/lb_listener.html#port.
    // @param default_action (required) default_action block.
    // @param ssl_policy (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener.html#ssl_policy.
    // @param certificate_arn (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener.html#certificate_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener.html#id.
    // @param protocol (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener.html#protocol.
    // @param timeouts (optional) timeouts block.
    aws_lb_listener(rname, load_balancer_arn, port, default_action, ssl_policy=null, certificate_arn=null, id=null, protocol=null, timeouts={}):: {
      load_balancer_arn: load_balancer_arn,
      port: port,
      default_action: default_action,
      [if ssl_policy != null then 'ssl_policy']: ssl_policy,
      [if certificate_arn != null then 'certificate_arn']: certificate_arn,
      [if id != null then 'id']: id,
      [if protocol != null then 'protocol']: protocol,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_lb_listener.%s.arn}' % rname,
    },
    // aws_ses_receipt_filter - https://www.terraform.io/docs/providers/aws/r/ses_receipt_filter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/ses_receipt_filter.html#policy.
    // @param cidr (required) https://www.terraform.io/docs/providers/aws/r/ses_receipt_filter.html#cidr.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ses_receipt_filter.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_filter.html#id.
    aws_ses_receipt_filter(rname, policy, cidr, name, id=null):: {
      policy: policy,
      cidr: cidr,
      name: name,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_iam_user - https://www.terraform.io/docs/providers/aws/r/iam_user.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iam_user.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/iam_user.html#tags.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/iam_user.html#force_destroy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_user.html#id.
    // @param path (optional) https://www.terraform.io/docs/providers/aws/r/iam_user.html#path.
    // @param permissions_boundary (optional) https://www.terraform.io/docs/providers/aws/r/iam_user.html#permissions_boundary.
    aws_iam_user(rname, name, tags=null, force_destroy=null, id=null, path=null, permissions_boundary=null):: {
      name: name,
      [if tags != null then 'tags']: tags,
      [if force_destroy != null then 'force_destroy']: force_destroy,
      [if id != null then 'id']: id,
      [if path != null then 'path']: path,
      [if permissions_boundary != null then 'permissions_boundary']: permissions_boundary,
      rname:: rname,
      unique_id:: '${aws_iam_user.%s.unique_id}' % rname,
      arn:: '${aws_iam_user.%s.arn}' % rname,
    },
    // aws_organizations_policy - https://www.terraform.io/docs/providers/aws/r/organizations_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param content (required) https://www.terraform.io/docs/providers/aws/r/organizations_policy.html#content.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/organizations_policy.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/organizations_policy.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/organizations_policy.html#id.
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/organizations_policy.html#type.
    aws_organizations_policy(rname, content, name, description=null, id=null, type=null):: {
      content: content,
      name: name,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if type != null then 'type']: type,
      rname:: rname,
      arn:: '${aws_organizations_policy.%s.arn}' % rname,
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
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_dynamodb_table - https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param hash_key (required) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#hash_key.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#name.
    // @param attribute (required) attribute block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#id.
    // @param read_capacity (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#read_capacity.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#tags.
    // @param stream_view_type (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#stream_view_type.
    // @param write_capacity (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#write_capacity.
    // @param billing_mode (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#billing_mode.
    // @param range_key (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#range_key.
    // @param stream_enabled (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table.html#stream_enabled.
    // @param global_secondary_index (optional) global_secondary_index block.
    // @param local_secondary_index (optional) local_secondary_index block.
    // @param point_in_time_recovery (optional) point_in_time_recovery block.
    // @param server_side_encryption (optional) server_side_encryption block.
    // @param timeouts (optional) timeouts block.
    // @param ttl (optional) ttl block.
    aws_dynamodb_table(rname, hash_key, name, attribute, id=null, read_capacity=null, tags=null, stream_view_type=null, write_capacity=null, billing_mode=null, range_key=null, stream_enabled=null, global_secondary_index={}, local_secondary_index={}, point_in_time_recovery={}, server_side_encryption={}, timeouts={}, ttl={}):: {
      hash_key: hash_key,
      name: name,
      attribute: attribute,
      [if id != null then 'id']: id,
      [if read_capacity != null then 'read_capacity']: read_capacity,
      [if tags != null then 'tags']: tags,
      [if stream_view_type != null then 'stream_view_type']: stream_view_type,
      [if write_capacity != null then 'write_capacity']: write_capacity,
      [if billing_mode != null then 'billing_mode']: billing_mode,
      [if range_key != null then 'range_key']: range_key,
      [if stream_enabled != null then 'stream_enabled']: stream_enabled,
      [if global_secondary_index != null then 'global_secondary_index']: global_secondary_index,
      [if local_secondary_index != null then 'local_secondary_index']: local_secondary_index,
      [if point_in_time_recovery != null then 'point_in_time_recovery']: point_in_time_recovery,
      [if server_side_encryption != null then 'server_side_encryption']: server_side_encryption,
      [if timeouts != null then 'timeouts']: timeouts,
      [if ttl != null then 'ttl']: ttl,
      rname:: rname,
      arn:: '${aws_dynamodb_table.%s.arn}' % rname,
      stream_arn:: '${aws_dynamodb_table.%s.stream_arn}' % rname,
      stream_label:: '${aws_dynamodb_table.%s.stream_label}' % rname,
    },
    // aws_iot_thing_principal_attachment - https://www.terraform.io/docs/providers/aws/r/iot_thing_principal_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param principal (required) https://www.terraform.io/docs/providers/aws/r/iot_thing_principal_attachment.html#principal.
    // @param thing (required) https://www.terraform.io/docs/providers/aws/r/iot_thing_principal_attachment.html#thing.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_thing_principal_attachment.html#id.
    aws_iot_thing_principal_attachment(rname, principal, thing, id=null):: {
      principal: principal,
      thing: thing,
      [if id != null then 'id']: id,
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
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      rname:: rname,
      arn:: '${aws_redshift_snapshot_copy_grant.%s.arn}' % rname,
    },
    // aws_cloudfront_origin_access_identity - https://www.terraform.io/docs/providers/aws/r/cloudfront_origin_access_identity.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param comment (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_origin_access_identity.html#comment.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_origin_access_identity.html#id.
    aws_cloudfront_origin_access_identity(rname, comment=null, id=null):: {
      [if comment != null then 'comment']: comment,
      [if id != null then 'id']: id,
      rname:: rname,
      s3_canonical_user_id:: '${aws_cloudfront_origin_access_identity.%s.s3_canonical_user_id}' % rname,
      caller_reference:: '${aws_cloudfront_origin_access_identity.%s.caller_reference}' % rname,
      cloudfront_access_identity_path:: '${aws_cloudfront_origin_access_identity.%s.cloudfront_access_identity_path}' % rname,
      etag:: '${aws_cloudfront_origin_access_identity.%s.etag}' % rname,
      iam_arn:: '${aws_cloudfront_origin_access_identity.%s.iam_arn}' % rname,
    },
    // aws_dax_parameter_group - https://www.terraform.io/docs/providers/aws/r/dax_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dax_parameter_group.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/dax_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dax_parameter_group.html#id.
    // @param parameters (optional) parameters block.
    aws_dax_parameter_group(rname, name, description=null, id=null, parameters={}):: {
      name: name,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if parameters != null then 'parameters']: parameters,
      rname:: rname,
    },
    // aws_default_subnet - https://www.terraform.io/docs/providers/aws/r/default_subnet.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param availability_zone (required) https://www.terraform.io/docs/providers/aws/r/default_subnet.html#availability_zone.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/default_subnet.html#id.
    // @param map_public_ip_on_launch (optional) https://www.terraform.io/docs/providers/aws/r/default_subnet.html#map_public_ip_on_launch.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/default_subnet.html#tags.
    // @param timeouts (optional) timeouts block.
    aws_default_subnet(rname, availability_zone, id=null, map_public_ip_on_launch=null, tags=null, timeouts={}):: {
      availability_zone: availability_zone,
      [if id != null then 'id']: id,
      [if map_public_ip_on_launch != null then 'map_public_ip_on_launch']: map_public_ip_on_launch,
      [if tags != null then 'tags']: tags,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      assign_ipv6_address_on_creation:: '${aws_default_subnet.%s.assign_ipv6_address_on_creation}' % rname,
      cidr_block:: '${aws_default_subnet.%s.cidr_block}' % rname,
      owner_id:: '${aws_default_subnet.%s.owner_id}' % rname,
      vpc_id:: '${aws_default_subnet.%s.vpc_id}' % rname,
      arn:: '${aws_default_subnet.%s.arn}' % rname,
      ipv6_cidr_block:: '${aws_default_subnet.%s.ipv6_cidr_block}' % rname,
      ipv6_cidr_block_association_id:: '${aws_default_subnet.%s.ipv6_cidr_block_association_id}' % rname,
      availability_zone_id:: '${aws_default_subnet.%s.availability_zone_id}' % rname,
    },
    // aws_network_interface_sg_attachment - https://www.terraform.io/docs/providers/aws/r/network_interface_sg_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param network_interface_id (required) https://www.terraform.io/docs/providers/aws/r/network_interface_sg_attachment.html#network_interface_id.
    // @param security_group_id (required) https://www.terraform.io/docs/providers/aws/r/network_interface_sg_attachment.html#security_group_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/network_interface_sg_attachment.html#id.
    aws_network_interface_sg_attachment(rname, network_interface_id, security_group_id, id=null):: {
      network_interface_id: network_interface_id,
      security_group_id: security_group_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_rds_cluster_parameter_group - https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html#family.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/rds_cluster_parameter_group.html#id.
    // @param parameter (optional) parameter block.
    aws_rds_cluster_parameter_group(rname, family, name=null, name_prefix=null, tags=null, description=null, id=null, parameter={}):: {
      family: family,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if parameter != null then 'parameter']: parameter,
      rname:: rname,
      arn:: '${aws_rds_cluster_parameter_group.%s.arn}' % rname,
    },
    // aws_redshift_security_group - https://www.terraform.io/docs/providers/aws/r/redshift_security_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/redshift_security_group.html#name.
    // @param ingress (required) ingress block.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/redshift_security_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_security_group.html#id.
    aws_redshift_security_group(rname, name, ingress, description=null, id=null):: {
      name: name,
      ingress: ingress,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
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
      [if id != null then 'id']: id,
      rname:: rname,
      path:: '${aws_api_gateway_resource.%s.path}' % rname,
    },
    // aws_ec2_client_vpn_endpoint - https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param client_cidr_block (required) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#client_cidr_block.
    // @param server_certificate_arn (required) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#server_certificate_arn.
    // @param authentication_options (required) authentication_options block.
    // @param connection_log_options (required) connection_log_options block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#id.
    // @param split_tunnel (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#split_tunnel.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#tags.
    // @param transport_protocol (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#transport_protocol.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#description.
    // @param dns_servers (optional) https://www.terraform.io/docs/providers/aws/r/ec2_client_vpn_endpoint.html#dns_servers.
    aws_ec2_client_vpn_endpoint(rname, client_cidr_block, server_certificate_arn, authentication_options, connection_log_options, id=null, split_tunnel=null, tags=null, transport_protocol=null, description=null, dns_servers=null):: {
      client_cidr_block: client_cidr_block,
      server_certificate_arn: server_certificate_arn,
      authentication_options: authentication_options,
      connection_log_options: connection_log_options,
      [if id != null then 'id']: id,
      [if split_tunnel != null then 'split_tunnel']: split_tunnel,
      [if tags != null then 'tags']: tags,
      [if transport_protocol != null then 'transport_protocol']: transport_protocol,
      [if description != null then 'description']: description,
      [if dns_servers != null then 'dns_servers']: dns_servers,
      rname:: rname,
      dns_name:: '${aws_ec2_client_vpn_endpoint.%s.dns_name}' % rname,
      status:: '${aws_ec2_client_vpn_endpoint.%s.status}' % rname,
    },
    // aws_iam_policy - https://www.terraform.io/docs/providers/aws/r/iam_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/iam_policy.html#policy.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy.html#name_prefix.
    // @param path (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy.html#path.
    aws_iam_policy(rname, policy, description=null, id=null, name=null, name_prefix=null, path=null):: {
      policy: policy,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if path != null then 'path']: path,
      rname:: rname,
      arn:: '${aws_iam_policy.%s.arn}' % rname,
    },
    // aws_iam_account_alias - https://www.terraform.io/docs/providers/aws/r/iam_account_alias.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param account_alias (required) https://www.terraform.io/docs/providers/aws/r/iam_account_alias.html#account_alias.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_account_alias.html#id.
    aws_iam_account_alias(rname, account_alias, id=null):: {
      account_alias: account_alias,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_volume_attachment - https://www.terraform.io/docs/providers/aws/r/volume_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_id (required) https://www.terraform.io/docs/providers/aws/r/volume_attachment.html#instance_id.
    // @param volume_id (required) https://www.terraform.io/docs/providers/aws/r/volume_attachment.html#volume_id.
    // @param device_name (required) https://www.terraform.io/docs/providers/aws/r/volume_attachment.html#device_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/volume_attachment.html#id.
    // @param skip_destroy (optional) https://www.terraform.io/docs/providers/aws/r/volume_attachment.html#skip_destroy.
    // @param force_detach (optional) https://www.terraform.io/docs/providers/aws/r/volume_attachment.html#force_detach.
    aws_volume_attachment(rname, instance_id, volume_id, device_name, id=null, skip_destroy=null, force_detach=null):: {
      instance_id: instance_id,
      volume_id: volume_id,
      device_name: device_name,
      [if id != null then 'id']: id,
      [if skip_destroy != null then 'skip_destroy']: skip_destroy,
      [if force_detach != null then 'force_detach']: force_detach,
      rname:: rname,
    },
    // aws_api_gateway_documentation_part - https://www.terraform.io/docs/providers/aws/r/api_gateway_documentation_part.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_documentation_part.html#rest_api_id.
    // @param properties (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_documentation_part.html#properties.
    // @param location (required) location block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_documentation_part.html#id.
    aws_api_gateway_documentation_part(rname, rest_api_id, properties, location, id=null):: {
      rest_api_id: rest_api_id,
      properties: properties,
      location: location,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_db_instance - https://www.terraform.io/docs/providers/aws/r/db_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_class (required) https://www.terraform.io/docs/providers/aws/r/db_instance.html#instance_class.
    // @param final_snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#final_snapshot_identifier.
    // @param character_set_name (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#character_set_name.
    // @param parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#parameter_group_name.
    // @param performance_insights_retention_period (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#performance_insights_retention_period.
    // @param multi_az (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#multi_az.
    // @param replicate_source_db (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#replicate_source_db.
    // @param snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#snapshot_identifier.
    // @param copy_tags_to_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#copy_tags_to_snapshot.
    // @param domain_iam_role_name (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#domain_iam_role_name.
    // @param license_model (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#license_model.
    // @param monitoring_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#monitoring_role_arn.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#port.
    // @param publicly_accessible (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#publicly_accessible.
    // @param security_group_names (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#security_group_names.
    // @param skip_final_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#skip_final_snapshot.
    // @param backup_window (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#backup_window.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#engine.
    // @param iam_database_authentication_enabled (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#iam_database_authentication_enabled.
    // @param storage_type (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#storage_type.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#engine_version.
    // @param identifier (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#identifier.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#name.
    // @param timezone (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#timezone.
    // @param allocated_storage (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#allocated_storage.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#apply_immediately.
    // @param deletion_protection (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#deletion_protection.
    // @param domain (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#domain.
    // @param max_allocated_storage (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#max_allocated_storage.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#kms_key_id.
    // @param storage_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#storage_encrypted.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#availability_zone.
    // @param iops (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#iops.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#vpc_security_group_ids.
    // @param backup_retention_period (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#backup_retention_period.
    // @param db_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#db_subnet_group_name.
    // @param option_group_name (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#option_group_name.
    // @param allow_major_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#allow_major_version_upgrade.
    // @param username (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#username.
    // @param maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#maintenance_window.
    // @param monitoring_interval (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#monitoring_interval.
    // @param password (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#password.
    // @param performance_insights_enabled (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#performance_insights_enabled.
    // @param performance_insights_kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#performance_insights_kms_key_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#tags.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#auto_minor_version_upgrade.
    // @param enabled_cloudwatch_logs_exports (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#enabled_cloudwatch_logs_exports.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#id.
    // @param identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/db_instance.html#identifier_prefix.
    // @param s3_import (optional) s3_import block.
    // @param timeouts (optional) timeouts block.
    aws_db_instance(rname, instance_class, final_snapshot_identifier=null, character_set_name=null, parameter_group_name=null, performance_insights_retention_period=null, multi_az=null, replicate_source_db=null, snapshot_identifier=null, copy_tags_to_snapshot=null, domain_iam_role_name=null, license_model=null, monitoring_role_arn=null, port=null, publicly_accessible=null, security_group_names=null, skip_final_snapshot=null, backup_window=null, engine=null, iam_database_authentication_enabled=null, storage_type=null, engine_version=null, identifier=null, name=null, timezone=null, allocated_storage=null, apply_immediately=null, deletion_protection=null, domain=null, max_allocated_storage=null, kms_key_id=null, storage_encrypted=null, availability_zone=null, iops=null, vpc_security_group_ids=null, backup_retention_period=null, db_subnet_group_name=null, option_group_name=null, allow_major_version_upgrade=null, username=null, maintenance_window=null, monitoring_interval=null, password=null, performance_insights_enabled=null, performance_insights_kms_key_id=null, tags=null, auto_minor_version_upgrade=null, enabled_cloudwatch_logs_exports=null, id=null, identifier_prefix=null, s3_import={}, timeouts={}):: {
      instance_class: instance_class,
      [if final_snapshot_identifier != null then 'final_snapshot_identifier']: final_snapshot_identifier,
      [if character_set_name != null then 'character_set_name']: character_set_name,
      [if parameter_group_name != null then 'parameter_group_name']: parameter_group_name,
      [if performance_insights_retention_period != null then 'performance_insights_retention_period']: performance_insights_retention_period,
      [if multi_az != null then 'multi_az']: multi_az,
      [if replicate_source_db != null then 'replicate_source_db']: replicate_source_db,
      [if snapshot_identifier != null then 'snapshot_identifier']: snapshot_identifier,
      [if copy_tags_to_snapshot != null then 'copy_tags_to_snapshot']: copy_tags_to_snapshot,
      [if domain_iam_role_name != null then 'domain_iam_role_name']: domain_iam_role_name,
      [if license_model != null then 'license_model']: license_model,
      [if monitoring_role_arn != null then 'monitoring_role_arn']: monitoring_role_arn,
      [if port != null then 'port']: port,
      [if publicly_accessible != null then 'publicly_accessible']: publicly_accessible,
      [if security_group_names != null then 'security_group_names']: security_group_names,
      [if skip_final_snapshot != null then 'skip_final_snapshot']: skip_final_snapshot,
      [if backup_window != null then 'backup_window']: backup_window,
      [if engine != null then 'engine']: engine,
      [if iam_database_authentication_enabled != null then 'iam_database_authentication_enabled']: iam_database_authentication_enabled,
      [if storage_type != null then 'storage_type']: storage_type,
      [if engine_version != null then 'engine_version']: engine_version,
      [if identifier != null then 'identifier']: identifier,
      [if name != null then 'name']: name,
      [if timezone != null then 'timezone']: timezone,
      [if allocated_storage != null then 'allocated_storage']: allocated_storage,
      [if apply_immediately != null then 'apply_immediately']: apply_immediately,
      [if deletion_protection != null then 'deletion_protection']: deletion_protection,
      [if domain != null then 'domain']: domain,
      [if max_allocated_storage != null then 'max_allocated_storage']: max_allocated_storage,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if storage_encrypted != null then 'storage_encrypted']: storage_encrypted,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if iops != null then 'iops']: iops,
      [if vpc_security_group_ids != null then 'vpc_security_group_ids']: vpc_security_group_ids,
      [if backup_retention_period != null then 'backup_retention_period']: backup_retention_period,
      [if db_subnet_group_name != null then 'db_subnet_group_name']: db_subnet_group_name,
      [if option_group_name != null then 'option_group_name']: option_group_name,
      [if allow_major_version_upgrade != null then 'allow_major_version_upgrade']: allow_major_version_upgrade,
      [if username != null then 'username']: username,
      [if maintenance_window != null then 'maintenance_window']: maintenance_window,
      [if monitoring_interval != null then 'monitoring_interval']: monitoring_interval,
      [if password != null then 'password']: password,
      [if performance_insights_enabled != null then 'performance_insights_enabled']: performance_insights_enabled,
      [if performance_insights_kms_key_id != null then 'performance_insights_kms_key_id']: performance_insights_kms_key_id,
      [if tags != null then 'tags']: tags,
      [if auto_minor_version_upgrade != null then 'auto_minor_version_upgrade']: auto_minor_version_upgrade,
      [if enabled_cloudwatch_logs_exports != null then 'enabled_cloudwatch_logs_exports']: enabled_cloudwatch_logs_exports,
      [if id != null then 'id']: id,
      [if identifier_prefix != null then 'identifier_prefix']: identifier_prefix,
      [if s3_import != null then 's3_import']: s3_import,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      status:: '${aws_db_instance.%s.status}' % rname,
      address:: '${aws_db_instance.%s.address}' % rname,
      ca_cert_identifier:: '${aws_db_instance.%s.ca_cert_identifier}' % rname,
      hosted_zone_id:: '${aws_db_instance.%s.hosted_zone_id}' % rname,
      arn:: '${aws_db_instance.%s.arn}' % rname,
      resource_id:: '${aws_db_instance.%s.resource_id}' % rname,
      replicas:: '${aws_db_instance.%s.replicas}' % rname,
      endpoint:: '${aws_db_instance.%s.endpoint}' % rname,
    },
    // aws_ecr_repository_policy - https://www.terraform.io/docs/providers/aws/r/ecr_repository_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/ecr_repository_policy.html#policy.
    // @param repository (required) https://www.terraform.io/docs/providers/aws/r/ecr_repository_policy.html#repository.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ecr_repository_policy.html#id.
    aws_ecr_repository_policy(rname, policy, repository, id=null):: {
      policy: policy,
      repository: repository,
      [if id != null then 'id']: id,
      rname:: rname,
      registry_id:: '${aws_ecr_repository_policy.%s.registry_id}' % rname,
    },
    // aws_waf_byte_match_set - https://www.terraform.io/docs/providers/aws/r/waf_byte_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_byte_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_byte_match_set.html#id.
    // @param byte_match_tuples (optional) byte_match_tuples block.
    aws_waf_byte_match_set(rname, name, id=null, byte_match_tuples={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if byte_match_tuples != null then 'byte_match_tuples']: byte_match_tuples,
      rname:: rname,
    },
    // aws_wafregional_web_acl - https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl.html#name.
    // @param default_action (required) default_action block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl.html#id.
    // @param logging_configuration (optional) logging_configuration block.
    // @param rule (optional) rule block.
    aws_wafregional_web_acl(rname, metric_name, name, default_action, id=null, logging_configuration={}, rule={}):: {
      metric_name: metric_name,
      name: name,
      default_action: default_action,
      [if id != null then 'id']: id,
      [if logging_configuration != null then 'logging_configuration']: logging_configuration,
      [if rule != null then 'rule']: rule,
      rname:: rname,
      arn:: '${aws_wafregional_web_acl.%s.arn}' % rname,
    },
    // aws_appmesh_route - https://www.terraform.io/docs/providers/aws/r/appmesh_route.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param mesh_name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_route.html#mesh_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_route.html#name.
    // @param virtual_router_name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_route.html#virtual_router_name.
    // @param spec (required) spec block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_route.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_route.html#tags.
    aws_appmesh_route(rname, mesh_name, name, virtual_router_name, spec, id=null, tags=null):: {
      mesh_name: mesh_name,
      name: name,
      virtual_router_name: virtual_router_name,
      spec: spec,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      last_updated_date:: '${aws_appmesh_route.%s.last_updated_date}' % rname,
      arn:: '${aws_appmesh_route.%s.arn}' % rname,
      created_date:: '${aws_appmesh_route.%s.created_date}' % rname,
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
      [if certificate_arn != null then 'certificate_arn']: certificate_arn,
      [if id != null then 'id']: id,
      rname:: rname,
      s3_bucket:: '${aws_cognito_user_pool_domain.%s.s3_bucket}' % rname,
      version:: '${aws_cognito_user_pool_domain.%s.version}' % rname,
      aws_account_id:: '${aws_cognito_user_pool_domain.%s.aws_account_id}' % rname,
      cloudfront_distribution_arn:: '${aws_cognito_user_pool_domain.%s.cloudfront_distribution_arn}' % rname,
    },
    // aws_ebs_snapshot_copy - https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param source_region (required) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#source_region.
    // @param source_snapshot_id (required) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#source_snapshot_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#description.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#kms_key_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#tags.
    // @param encrypted (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#encrypted.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot_copy.html#id.
    aws_ebs_snapshot_copy(rname, source_region, source_snapshot_id, description=null, kms_key_id=null, tags=null, encrypted=null, id=null):: {
      source_region: source_region,
      source_snapshot_id: source_snapshot_id,
      [if description != null then 'description']: description,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if tags != null then 'tags']: tags,
      [if encrypted != null then 'encrypted']: encrypted,
      [if id != null then 'id']: id,
      rname:: rname,
      owner_id:: '${aws_ebs_snapshot_copy.%s.owner_id}' % rname,
      volume_id:: '${aws_ebs_snapshot_copy.%s.volume_id}' % rname,
      owner_alias:: '${aws_ebs_snapshot_copy.%s.owner_alias}' % rname,
      volume_size:: '${aws_ebs_snapshot_copy.%s.volume_size}' % rname,
      data_encryption_key_id:: '${aws_ebs_snapshot_copy.%s.data_encryption_key_id}' % rname,
    },
    // aws_route - https://www.terraform.io/docs/providers/aws/r/route.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param route_table_id (required) https://www.terraform.io/docs/providers/aws/r/route.html#route_table_id.
    // @param network_interface_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#network_interface_id.
    // @param transit_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#transit_gateway_id.
    // @param egress_only_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#egress_only_gateway_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#id.
    // @param nat_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#nat_gateway_id.
    // @param gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#gateway_id.
    // @param destination_ipv6_cidr_block (optional) https://www.terraform.io/docs/providers/aws/r/route.html#destination_ipv6_cidr_block.
    // @param instance_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#instance_id.
    // @param vpc_peering_connection_id (optional) https://www.terraform.io/docs/providers/aws/r/route.html#vpc_peering_connection_id.
    // @param destination_cidr_block (optional) https://www.terraform.io/docs/providers/aws/r/route.html#destination_cidr_block.
    // @param timeouts (optional) timeouts block.
    aws_route(rname, route_table_id, network_interface_id=null, transit_gateway_id=null, egress_only_gateway_id=null, id=null, nat_gateway_id=null, gateway_id=null, destination_ipv6_cidr_block=null, instance_id=null, vpc_peering_connection_id=null, destination_cidr_block=null, timeouts={}):: {
      route_table_id: route_table_id,
      [if network_interface_id != null then 'network_interface_id']: network_interface_id,
      [if transit_gateway_id != null then 'transit_gateway_id']: transit_gateway_id,
      [if egress_only_gateway_id != null then 'egress_only_gateway_id']: egress_only_gateway_id,
      [if id != null then 'id']: id,
      [if nat_gateway_id != null then 'nat_gateway_id']: nat_gateway_id,
      [if gateway_id != null then 'gateway_id']: gateway_id,
      [if destination_ipv6_cidr_block != null then 'destination_ipv6_cidr_block']: destination_ipv6_cidr_block,
      [if instance_id != null then 'instance_id']: instance_id,
      [if vpc_peering_connection_id != null then 'vpc_peering_connection_id']: vpc_peering_connection_id,
      [if destination_cidr_block != null then 'destination_cidr_block']: destination_cidr_block,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      instance_owner_id:: '${aws_route.%s.instance_owner_id}' % rname,
      origin:: '${aws_route.%s.origin}' % rname,
      state:: '${aws_route.%s.state}' % rname,
      destination_prefix_list_id:: '${aws_route.%s.destination_prefix_list_id}' % rname,
    },
    // aws_route53_resolver_rule_association - https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param resolver_rule_id (required) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule_association.html#resolver_rule_id.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule_association.html#vpc_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule_association.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule_association.html#name.
    // @param timeouts (optional) timeouts block.
    aws_route53_resolver_rule_association(rname, resolver_rule_id, vpc_id, id=null, name=null, timeouts={}):: {
      resolver_rule_id: resolver_rule_id,
      vpc_id: vpc_id,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
    },
    // aws_wafregional_rule_group - https://www.terraform.io/docs/providers/aws/r/wafregional_rule_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rule_group.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rule_group.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_rule_group.html#id.
    // @param activated_rule (optional) activated_rule block.
    aws_wafregional_rule_group(rname, metric_name, name, id=null, activated_rule={}):: {
      metric_name: metric_name,
      name: name,
      [if id != null then 'id']: id,
      [if activated_rule != null then 'activated_rule']: activated_rule,
      rname:: rname,
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
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if id != null then 'id']: id,
      [if port != null then 'port']: port,
      rname:: rname,
    },
    // aws_iot_thing - https://www.terraform.io/docs/providers/aws/r/iot_thing.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iot_thing.html#name.
    // @param attributes (optional) https://www.terraform.io/docs/providers/aws/r/iot_thing.html#attributes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_thing.html#id.
    // @param thing_type_name (optional) https://www.terraform.io/docs/providers/aws/r/iot_thing.html#thing_type_name.
    aws_iot_thing(rname, name, attributes=null, id=null, thing_type_name=null):: {
      name: name,
      [if attributes != null then 'attributes']: attributes,
      [if id != null then 'id']: id,
      [if thing_type_name != null then 'thing_type_name']: thing_type_name,
      rname:: rname,
      default_client_id:: '${aws_iot_thing.%s.default_client_id}' % rname,
      version:: '${aws_iot_thing.%s.version}' % rname,
      arn:: '${aws_iot_thing.%s.arn}' % rname,
    },
    // aws_sagemaker_endpoint_configuration - https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param production_variants (required) production_variants block.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint_configuration.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint_configuration.html#id.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint_configuration.html#kms_key_arn.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint_configuration.html#name.
    aws_sagemaker_endpoint_configuration(rname, production_variants, tags=null, id=null, kms_key_arn=null, name=null):: {
      production_variants: production_variants,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if kms_key_arn != null then 'kms_key_arn']: kms_key_arn,
      [if name != null then 'name']: name,
      rname:: rname,
      arn:: '${aws_sagemaker_endpoint_configuration.%s.arn}' % rname,
    },
    // aws_cloudwatch_log_metric_filter - https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_metric_filter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param log_group_name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_metric_filter.html#log_group_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_metric_filter.html#name.
    // @param pattern (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_metric_filter.html#pattern.
    // @param metric_transformation (required) metric_transformation block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_metric_filter.html#id.
    aws_cloudwatch_log_metric_filter(rname, log_group_name, name, pattern, metric_transformation, id=null):: {
      log_group_name: log_group_name,
      name: name,
      pattern: pattern,
      metric_transformation: metric_transformation,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_db_event_subscription - https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param sns_topic (required) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#sns_topic.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#enabled.
    // @param event_categories (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#event_categories.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#name_prefix.
    // @param source_type (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#source_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#id.
    // @param source_ids (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#source_ids.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_event_subscription.html#tags.
    // @param timeouts (optional) timeouts block.
    aws_db_event_subscription(rname, sns_topic, enabled=null, event_categories=null, name=null, name_prefix=null, source_type=null, id=null, source_ids=null, tags=null, timeouts={}):: {
      sns_topic: sns_topic,
      [if enabled != null then 'enabled']: enabled,
      [if event_categories != null then 'event_categories']: event_categories,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if source_type != null then 'source_type']: source_type,
      [if id != null then 'id']: id,
      [if source_ids != null then 'source_ids']: source_ids,
      [if tags != null then 'tags']: tags,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_db_event_subscription.%s.arn}' % rname,
      customer_aws_id:: '${aws_db_event_subscription.%s.customer_aws_id}' % rname,
    },
    // aws_dms_certificate - https://www.terraform.io/docs/providers/aws/r/dms_certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate_id (required) https://www.terraform.io/docs/providers/aws/r/dms_certificate.html#certificate_id.
    // @param certificate_pem (optional) https://www.terraform.io/docs/providers/aws/r/dms_certificate.html#certificate_pem.
    // @param certificate_wallet (optional) https://www.terraform.io/docs/providers/aws/r/dms_certificate.html#certificate_wallet.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dms_certificate.html#id.
    aws_dms_certificate(rname, certificate_id, certificate_pem=null, certificate_wallet=null, id=null):: {
      certificate_id: certificate_id,
      [if certificate_pem != null then 'certificate_pem']: certificate_pem,
      [if certificate_wallet != null then 'certificate_wallet']: certificate_wallet,
      [if id != null then 'id']: id,
      rname:: rname,
      certificate_arn:: '${aws_dms_certificate.%s.certificate_arn}' % rname,
    },
    // aws_pinpoint_sms_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_sms_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_sms_channel.html#application_id.
    // @param sender_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_sms_channel.html#sender_id.
    // @param short_code (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_sms_channel.html#short_code.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_sms_channel.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_sms_channel.html#id.
    aws_pinpoint_sms_channel(rname, application_id, sender_id=null, short_code=null, enabled=null, id=null):: {
      application_id: application_id,
      [if sender_id != null then 'sender_id']: sender_id,
      [if short_code != null then 'short_code']: short_code,
      [if enabled != null then 'enabled']: enabled,
      [if id != null then 'id']: id,
      rname:: rname,
      promotional_messages_per_second:: '${aws_pinpoint_sms_channel.%s.promotional_messages_per_second}' % rname,
      transactional_messages_per_second:: '${aws_pinpoint_sms_channel.%s.transactional_messages_per_second}' % rname,
    },
    // aws_wafregional_web_acl_association - https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param resource_arn (required) https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl_association.html#resource_arn.
    // @param web_acl_id (required) https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl_association.html#web_acl_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_web_acl_association.html#id.
    aws_wafregional_web_acl_association(rname, resource_arn, web_acl_id, id=null):: {
      resource_arn: resource_arn,
      web_acl_id: web_acl_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_batch_job_definition - https://www.terraform.io/docs/providers/aws/r/batch_job_definition.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/batch_job_definition.html#type.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/batch_job_definition.html#name.
    // @param container_properties (optional) https://www.terraform.io/docs/providers/aws/r/batch_job_definition.html#container_properties.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/batch_job_definition.html#id.
    // @param parameters (optional) https://www.terraform.io/docs/providers/aws/r/batch_job_definition.html#parameters.
    // @param retry_strategy (optional) retry_strategy block.
    // @param timeout (optional) timeout block.
    aws_batch_job_definition(rname, type, name, container_properties=null, id=null, parameters=null, retry_strategy={}, timeout={}):: {
      type: type,
      name: name,
      [if container_properties != null then 'container_properties']: container_properties,
      [if id != null then 'id']: id,
      [if parameters != null then 'parameters']: parameters,
      [if retry_strategy != null then 'retry_strategy']: retry_strategy,
      [if timeout != null then 'timeout']: timeout,
      rname:: rname,
      revision:: '${aws_batch_job_definition.%s.revision}' % rname,
      arn:: '${aws_batch_job_definition.%s.arn}' % rname,
    },
    // aws_customer_gateway - https://www.terraform.io/docs/providers/aws/r/customer_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param ip_address (required) https://www.terraform.io/docs/providers/aws/r/customer_gateway.html#ip_address.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/customer_gateway.html#type.
    // @param bgp_asn (required) https://www.terraform.io/docs/providers/aws/r/customer_gateway.html#bgp_asn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/customer_gateway.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/customer_gateway.html#tags.
    aws_customer_gateway(rname, ip_address, type, bgp_asn, id=null, tags=null):: {
      ip_address: ip_address,
      type: type,
      bgp_asn: bgp_asn,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
    },
    // aws_dax_cluster - https://www.terraform.io/docs/providers/aws/r/dax_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_name (required) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#cluster_name.
    // @param node_type (required) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#node_type.
    // @param replication_factor (required) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#replication_factor.
    // @param iam_role_arn (required) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#iam_role_arn.
    // @param maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#maintenance_window.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#description.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#security_group_ids.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#tags.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#availability_zones.
    // @param notification_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#notification_topic_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#id.
    // @param parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#parameter_group_name.
    // @param subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/dax_cluster.html#subnet_group_name.
    // @param server_side_encryption (optional) server_side_encryption block.
    // @param timeouts (optional) timeouts block.
    aws_dax_cluster(rname, cluster_name, node_type, replication_factor, iam_role_arn, maintenance_window=null, description=null, security_group_ids=null, tags=null, availability_zones=null, notification_topic_arn=null, id=null, parameter_group_name=null, subnet_group_name=null, server_side_encryption={}, timeouts={}):: {
      cluster_name: cluster_name,
      node_type: node_type,
      replication_factor: replication_factor,
      iam_role_arn: iam_role_arn,
      [if maintenance_window != null then 'maintenance_window']: maintenance_window,
      [if description != null then 'description']: description,
      [if security_group_ids != null then 'security_group_ids']: security_group_ids,
      [if tags != null then 'tags']: tags,
      [if availability_zones != null then 'availability_zones']: availability_zones,
      [if notification_topic_arn != null then 'notification_topic_arn']: notification_topic_arn,
      [if id != null then 'id']: id,
      [if parameter_group_name != null then 'parameter_group_name']: parameter_group_name,
      [if subnet_group_name != null then 'subnet_group_name']: subnet_group_name,
      [if server_side_encryption != null then 'server_side_encryption']: server_side_encryption,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_dax_cluster.%s.arn}' % rname,
      configuration_endpoint:: '${aws_dax_cluster.%s.configuration_endpoint}' % rname,
      port:: '${aws_dax_cluster.%s.port}' % rname,
      cluster_address:: '${aws_dax_cluster.%s.cluster_address}' % rname,
      nodes:: '${aws_dax_cluster.%s.nodes}' % rname,
    },
    // aws_mq_configuration - https://www.terraform.io/docs/providers/aws/r/mq_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param data (required) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#data.
    // @param engine_type (required) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#engine_type.
    // @param engine_version (required) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#engine_version.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/mq_configuration.html#id.
    aws_mq_configuration(rname, data, engine_type, engine_version, name, tags=null, description=null, id=null):: {
      data: data,
      engine_type: engine_type,
      engine_version: engine_version,
      name: name,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_mq_configuration.%s.arn}' % rname,
      latest_revision:: '${aws_mq_configuration.%s.latest_revision}' % rname,
    },
    // aws_ec2_transit_gateway_route - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param transit_gateway_route_table_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route.html#transit_gateway_route_table_id.
    // @param destination_cidr_block (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route.html#destination_cidr_block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route.html#id.
    // @param transit_gateway_attachment_id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route.html#transit_gateway_attachment_id.
    // @param blackhole (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_route.html#blackhole.
    aws_ec2_transit_gateway_route(rname, transit_gateway_route_table_id, destination_cidr_block, id=null, transit_gateway_attachment_id=null, blackhole=null):: {
      transit_gateway_route_table_id: transit_gateway_route_table_id,
      destination_cidr_block: destination_cidr_block,
      [if id != null then 'id']: id,
      [if transit_gateway_attachment_id != null then 'transit_gateway_attachment_id']: transit_gateway_attachment_id,
      [if blackhole != null then 'blackhole']: blackhole,
      rname:: rname,
    },
    // aws_guardduty_ipset - https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param activate (required) https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html#activate.
    // @param detector_id (required) https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html#detector_id.
    // @param format (required) https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html#format.
    // @param location (required) https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html#location.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_ipset.html#id.
    aws_guardduty_ipset(rname, activate, detector_id, format, location, name, id=null):: {
      activate: activate,
      detector_id: detector_id,
      format: format,
      location: location,
      name: name,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_guardduty_threatintelset - https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param format (required) https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html#format.
    // @param location (required) https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html#location.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html#name.
    // @param activate (required) https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html#activate.
    // @param detector_id (required) https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html#detector_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/guardduty_threatintelset.html#id.
    aws_guardduty_threatintelset(rname, format, location, name, activate, detector_id, id=null):: {
      format: format,
      location: location,
      name: name,
      activate: activate,
      detector_id: detector_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_api_gateway_domain_name - https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain_name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#domain_name.
    // @param certificate_name (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#certificate_name.
    // @param regional_certificate_name (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#regional_certificate_name.
    // @param certificate_body (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#certificate_body.
    // @param certificate_arn (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#certificate_arn.
    // @param certificate_private_key (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#certificate_private_key.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#id.
    // @param regional_certificate_arn (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#regional_certificate_arn.
    // @param security_policy (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#security_policy.
    // @param certificate_chain (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_domain_name.html#certificate_chain.
    // @param endpoint_configuration (optional) endpoint_configuration block.
    aws_api_gateway_domain_name(rname, domain_name, certificate_name=null, regional_certificate_name=null, certificate_body=null, certificate_arn=null, certificate_private_key=null, id=null, regional_certificate_arn=null, security_policy=null, certificate_chain=null, endpoint_configuration={}):: {
      domain_name: domain_name,
      [if certificate_name != null then 'certificate_name']: certificate_name,
      [if regional_certificate_name != null then 'regional_certificate_name']: regional_certificate_name,
      [if certificate_body != null then 'certificate_body']: certificate_body,
      [if certificate_arn != null then 'certificate_arn']: certificate_arn,
      [if certificate_private_key != null then 'certificate_private_key']: certificate_private_key,
      [if id != null then 'id']: id,
      [if regional_certificate_arn != null then 'regional_certificate_arn']: regional_certificate_arn,
      [if security_policy != null then 'security_policy']: security_policy,
      [if certificate_chain != null then 'certificate_chain']: certificate_chain,
      [if endpoint_configuration != null then 'endpoint_configuration']: endpoint_configuration,
      rname:: rname,
      regional_zone_id:: '${aws_api_gateway_domain_name.%s.regional_zone_id}' % rname,
      certificate_upload_date:: '${aws_api_gateway_domain_name.%s.certificate_upload_date}' % rname,
      cloudfront_domain_name:: '${aws_api_gateway_domain_name.%s.cloudfront_domain_name}' % rname,
      cloudfront_zone_id:: '${aws_api_gateway_domain_name.%s.cloudfront_zone_id}' % rname,
      regional_domain_name:: '${aws_api_gateway_domain_name.%s.regional_domain_name}' % rname,
    },
    // aws_db_instance_role_association - https://www.terraform.io/docs/providers/aws/r/db_instance_role_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/db_instance_role_association.html#role_arn.
    // @param db_instance_identifier (required) https://www.terraform.io/docs/providers/aws/r/db_instance_role_association.html#db_instance_identifier.
    // @param feature_name (required) https://www.terraform.io/docs/providers/aws/r/db_instance_role_association.html#feature_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_instance_role_association.html#id.
    aws_db_instance_role_association(rname, role_arn, db_instance_identifier, feature_name, id=null):: {
      role_arn: role_arn,
      db_instance_identifier: db_instance_identifier,
      feature_name: feature_name,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_route_table_association - https://www.terraform.io/docs/providers/aws/r/route_table_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param route_table_id (required) https://www.terraform.io/docs/providers/aws/r/route_table_association.html#route_table_id.
    // @param subnet_id (required) https://www.terraform.io/docs/providers/aws/r/route_table_association.html#subnet_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route_table_association.html#id.
    aws_route_table_association(rname, route_table_id, subnet_id, id=null):: {
      route_table_id: route_table_id,
      subnet_id: subnet_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_msk_configuration - https://www.terraform.io/docs/providers/aws/r/msk_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param kafka_versions (required) https://www.terraform.io/docs/providers/aws/r/msk_configuration.html#kafka_versions.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/msk_configuration.html#name.
    // @param server_properties (required) https://www.terraform.io/docs/providers/aws/r/msk_configuration.html#server_properties.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/msk_configuration.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/msk_configuration.html#id.
    aws_msk_configuration(rname, kafka_versions, name, server_properties, description=null, id=null):: {
      kafka_versions: kafka_versions,
      name: name,
      server_properties: server_properties,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_msk_configuration.%s.arn}' % rname,
      latest_revision:: '${aws_msk_configuration.%s.latest_revision}' % rname,
    },
    // aws_vpc_endpoint_route_table_association - https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_route_table_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param route_table_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_route_table_association.html#route_table_id.
    // @param vpc_endpoint_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_route_table_association.html#vpc_endpoint_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_route_table_association.html#id.
    aws_vpc_endpoint_route_table_association(rname, route_table_id, vpc_endpoint_id, id=null):: {
      route_table_id: route_table_id,
      vpc_endpoint_id: vpc_endpoint_id,
      [if id != null then 'id']: id,
      rname:: rname,
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
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_cloudwatch_log_destination.%s.arn}' % rname,
    },
    // aws_docdb_subnet_group - https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html#subnet_ids.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/docdb_subnet_group.html#tags.
    aws_docdb_subnet_group(rname, subnet_ids, description=null, id=null, name=null, name_prefix=null, tags=null):: {
      subnet_ids: subnet_ids,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      arn:: '${aws_docdb_subnet_group.%s.arn}' % rname,
    },
    // aws_lambda_layer_version - https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param layer_name (required) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#layer_name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#description.
    // @param filename (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#filename.
    // @param s3_object_version (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#s3_object_version.
    // @param source_code_hash (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#source_code_hash.
    // @param license_info (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#license_info.
    // @param s3_key (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#s3_key.
    // @param compatible_runtimes (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#compatible_runtimes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#id.
    // @param s3_bucket (optional) https://www.terraform.io/docs/providers/aws/r/lambda_layer_version.html#s3_bucket.
    aws_lambda_layer_version(rname, layer_name, description=null, filename=null, s3_object_version=null, source_code_hash=null, license_info=null, s3_key=null, compatible_runtimes=null, id=null, s3_bucket=null):: {
      layer_name: layer_name,
      [if description != null then 'description']: description,
      [if filename != null then 'filename']: filename,
      [if s3_object_version != null then 's3_object_version']: s3_object_version,
      [if source_code_hash != null then 'source_code_hash']: source_code_hash,
      [if license_info != null then 'license_info']: license_info,
      [if s3_key != null then 's3_key']: s3_key,
      [if compatible_runtimes != null then 'compatible_runtimes']: compatible_runtimes,
      [if id != null then 'id']: id,
      [if s3_bucket != null then 's3_bucket']: s3_bucket,
      rname:: rname,
      created_date:: '${aws_lambda_layer_version.%s.created_date}' % rname,
      layer_arn:: '${aws_lambda_layer_version.%s.layer_arn}' % rname,
      arn:: '${aws_lambda_layer_version.%s.arn}' % rname,
      source_code_size:: '${aws_lambda_layer_version.%s.source_code_size}' % rname,
      version:: '${aws_lambda_layer_version.%s.version}' % rname,
    },
    // aws_launch_template - https://www.terraform.io/docs/providers/aws/r/launch_template.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#id.
    // @param kernel_id (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#kernel_id.
    // @param instance_initiated_shutdown_behavior (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#instance_initiated_shutdown_behavior.
    // @param instance_type (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#instance_type.
    // @param user_data (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#user_data.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#description.
    // @param image_id (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#image_id.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#name_prefix.
    // @param ram_disk_id (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#ram_disk_id.
    // @param security_group_names (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#security_group_names.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#tags.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#vpc_security_group_ids.
    // @param key_name (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#key_name.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#ebs_optimized.
    // @param disable_api_termination (optional) https://www.terraform.io/docs/providers/aws/r/launch_template.html#disable_api_termination.
    // @param monitoring (optional) monitoring block.
    // @param network_interfaces (optional) network_interfaces block.
    // @param capacity_reservation_specification (optional) capacity_reservation_specification block.
    // @param elastic_gpu_specifications (optional) elastic_gpu_specifications block.
    // @param elastic_inference_accelerator (optional) elastic_inference_accelerator block.
    // @param iam_instance_profile (optional) iam_instance_profile block.
    // @param placement (optional) placement block.
    // @param tag_specifications (optional) tag_specifications block.
    // @param block_device_mappings (optional) block_device_mappings block.
    // @param credit_specification (optional) credit_specification block.
    // @param instance_market_options (optional) instance_market_options block.
    // @param license_specification (optional) license_specification block.
    aws_launch_template(rname, name=null, id=null, kernel_id=null, instance_initiated_shutdown_behavior=null, instance_type=null, user_data=null, description=null, image_id=null, name_prefix=null, ram_disk_id=null, security_group_names=null, tags=null, vpc_security_group_ids=null, key_name=null, ebs_optimized=null, disable_api_termination=null, monitoring={}, network_interfaces={}, capacity_reservation_specification={}, elastic_gpu_specifications={}, elastic_inference_accelerator={}, iam_instance_profile={}, placement={}, tag_specifications={}, block_device_mappings={}, credit_specification={}, instance_market_options={}, license_specification={}):: {
      [if name != null then 'name']: name,
      [if id != null then 'id']: id,
      [if kernel_id != null then 'kernel_id']: kernel_id,
      [if instance_initiated_shutdown_behavior != null then 'instance_initiated_shutdown_behavior']: instance_initiated_shutdown_behavior,
      [if instance_type != null then 'instance_type']: instance_type,
      [if user_data != null then 'user_data']: user_data,
      [if description != null then 'description']: description,
      [if image_id != null then 'image_id']: image_id,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if ram_disk_id != null then 'ram_disk_id']: ram_disk_id,
      [if security_group_names != null then 'security_group_names']: security_group_names,
      [if tags != null then 'tags']: tags,
      [if vpc_security_group_ids != null then 'vpc_security_group_ids']: vpc_security_group_ids,
      [if key_name != null then 'key_name']: key_name,
      [if ebs_optimized != null then 'ebs_optimized']: ebs_optimized,
      [if disable_api_termination != null then 'disable_api_termination']: disable_api_termination,
      [if monitoring != null then 'monitoring']: monitoring,
      [if network_interfaces != null then 'network_interfaces']: network_interfaces,
      [if capacity_reservation_specification != null then 'capacity_reservation_specification']: capacity_reservation_specification,
      [if elastic_gpu_specifications != null then 'elastic_gpu_specifications']: elastic_gpu_specifications,
      [if elastic_inference_accelerator != null then 'elastic_inference_accelerator']: elastic_inference_accelerator,
      [if iam_instance_profile != null then 'iam_instance_profile']: iam_instance_profile,
      [if placement != null then 'placement']: placement,
      [if tag_specifications != null then 'tag_specifications']: tag_specifications,
      [if block_device_mappings != null then 'block_device_mappings']: block_device_mappings,
      [if credit_specification != null then 'credit_specification']: credit_specification,
      [if instance_market_options != null then 'instance_market_options']: instance_market_options,
      [if license_specification != null then 'license_specification']: license_specification,
      rname:: rname,
      latest_version:: '${aws_launch_template.%s.latest_version}' % rname,
      arn:: '${aws_launch_template.%s.arn}' % rname,
      default_version:: '${aws_launch_template.%s.default_version}' % rname,
    },
    // aws_load_balancer_listener_policy - https://www.terraform.io/docs/providers/aws/r/load_balancer_listener_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param load_balancer_name (required) https://www.terraform.io/docs/providers/aws/r/load_balancer_listener_policy.html#load_balancer_name.
    // @param load_balancer_port (required) https://www.terraform.io/docs/providers/aws/r/load_balancer_listener_policy.html#load_balancer_port.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/load_balancer_listener_policy.html#id.
    // @param policy_names (optional) https://www.terraform.io/docs/providers/aws/r/load_balancer_listener_policy.html#policy_names.
    aws_load_balancer_listener_policy(rname, load_balancer_name, load_balancer_port, id=null, policy_names=null):: {
      load_balancer_name: load_balancer_name,
      load_balancer_port: load_balancer_port,
      [if id != null then 'id']: id,
      [if policy_names != null then 'policy_names']: policy_names,
      rname:: rname,
    },
    // aws_sns_sms_preferences - https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#id.
    // @param monthly_spend_limit (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#monthly_spend_limit.
    // @param usage_report_s3_bucket (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#usage_report_s3_bucket.
    // @param default_sender_id (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#default_sender_id.
    // @param default_sms_type (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#default_sms_type.
    // @param delivery_status_iam_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#delivery_status_iam_role_arn.
    // @param delivery_status_success_sampling_rate (optional) https://www.terraform.io/docs/providers/aws/r/sns_sms_preferences.html#delivery_status_success_sampling_rate.
    aws_sns_sms_preferences(rname, id=null, monthly_spend_limit=null, usage_report_s3_bucket=null, default_sender_id=null, default_sms_type=null, delivery_status_iam_role_arn=null, delivery_status_success_sampling_rate=null):: {
      [if id != null then 'id']: id,
      [if monthly_spend_limit != null then 'monthly_spend_limit']: monthly_spend_limit,
      [if usage_report_s3_bucket != null then 'usage_report_s3_bucket']: usage_report_s3_bucket,
      [if default_sender_id != null then 'default_sender_id']: default_sender_id,
      [if default_sms_type != null then 'default_sms_type']: default_sms_type,
      [if delivery_status_iam_role_arn != null then 'delivery_status_iam_role_arn']: delivery_status_iam_role_arn,
      [if delivery_status_success_sampling_rate != null then 'delivery_status_success_sampling_rate']: delivery_status_success_sampling_rate,
      rname:: rname,
    },
    // aws_dx_connection_association - https://www.terraform.io/docs/providers/aws/r/dx_connection_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param connection_id (required) https://www.terraform.io/docs/providers/aws/r/dx_connection_association.html#connection_id.
    // @param lag_id (required) https://www.terraform.io/docs/providers/aws/r/dx_connection_association.html#lag_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_connection_association.html#id.
    aws_dx_connection_association(rname, connection_id, lag_id, id=null):: {
      connection_id: connection_id,
      lag_id: lag_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_elastic_beanstalk_application - https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application.html#tags.
    // @param appversion_lifecycle (optional) appversion_lifecycle block.
    aws_elastic_beanstalk_application(rname, name, description=null, id=null, tags=null, appversion_lifecycle={}):: {
      name: name,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if appversion_lifecycle != null then 'appversion_lifecycle']: appversion_lifecycle,
      rname:: rname,
      arn:: '${aws_elastic_beanstalk_application.%s.arn}' % rname,
    },
    // aws_iot_policy - https://www.terraform.io/docs/providers/aws/r/iot_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iot_policy.html#name.
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/iot_policy.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_policy.html#id.
    aws_iot_policy(rname, name, policy, id=null):: {
      name: name,
      policy: policy,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_iot_policy.%s.arn}' % rname,
      default_version_id:: '${aws_iot_policy.%s.default_version_id}' % rname,
    },
    // aws_elasticache_replication_group - https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param replication_group_id (required) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#replication_group_id.
    // @param replication_group_description (required) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#replication_group_description.
    // @param automatic_failover_enabled (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#automatic_failover_enabled.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#availability_zones.
    // @param maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#maintenance_window.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#port.
    // @param at_rest_encryption_enabled (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#at_rest_encryption_enabled.
    // @param number_cache_clusters (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#number_cache_clusters.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#tags.
    // @param transit_encryption_enabled (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#transit_encryption_enabled.
    // @param auth_token (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#auth_token.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#auto_minor_version_upgrade.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#engine.
    // @param notification_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#notification_topic_arn.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#engine_version.
    // @param parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#parameter_group_name.
    // @param security_group_names (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#security_group_names.
    // @param snapshot_arns (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#snapshot_arns.
    // @param snapshot_retention_limit (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#snapshot_retention_limit.
    // @param subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#subnet_group_name.
    // @param snapshot_name (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#snapshot_name.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#apply_immediately.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#id.
    // @param node_type (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#node_type.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#security_group_ids.
    // @param snapshot_window (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_replication_group.html#snapshot_window.
    // @param cluster_mode (optional) cluster_mode block.
    // @param timeouts (optional) timeouts block.
    aws_elasticache_replication_group(rname, replication_group_id, replication_group_description, automatic_failover_enabled=null, availability_zones=null, maintenance_window=null, port=null, at_rest_encryption_enabled=null, number_cache_clusters=null, tags=null, transit_encryption_enabled=null, auth_token=null, auto_minor_version_upgrade=null, engine=null, notification_topic_arn=null, engine_version=null, parameter_group_name=null, security_group_names=null, snapshot_arns=null, snapshot_retention_limit=null, subnet_group_name=null, snapshot_name=null, apply_immediately=null, id=null, node_type=null, security_group_ids=null, snapshot_window=null, cluster_mode={}, timeouts={}):: {
      replication_group_id: replication_group_id,
      replication_group_description: replication_group_description,
      [if automatic_failover_enabled != null then 'automatic_failover_enabled']: automatic_failover_enabled,
      [if availability_zones != null then 'availability_zones']: availability_zones,
      [if maintenance_window != null then 'maintenance_window']: maintenance_window,
      [if port != null then 'port']: port,
      [if at_rest_encryption_enabled != null then 'at_rest_encryption_enabled']: at_rest_encryption_enabled,
      [if number_cache_clusters != null then 'number_cache_clusters']: number_cache_clusters,
      [if tags != null then 'tags']: tags,
      [if transit_encryption_enabled != null then 'transit_encryption_enabled']: transit_encryption_enabled,
      [if auth_token != null then 'auth_token']: auth_token,
      [if auto_minor_version_upgrade != null then 'auto_minor_version_upgrade']: auto_minor_version_upgrade,
      [if engine != null then 'engine']: engine,
      [if notification_topic_arn != null then 'notification_topic_arn']: notification_topic_arn,
      [if engine_version != null then 'engine_version']: engine_version,
      [if parameter_group_name != null then 'parameter_group_name']: parameter_group_name,
      [if security_group_names != null then 'security_group_names']: security_group_names,
      [if snapshot_arns != null then 'snapshot_arns']: snapshot_arns,
      [if snapshot_retention_limit != null then 'snapshot_retention_limit']: snapshot_retention_limit,
      [if subnet_group_name != null then 'subnet_group_name']: subnet_group_name,
      [if snapshot_name != null then 'snapshot_name']: snapshot_name,
      [if apply_immediately != null then 'apply_immediately']: apply_immediately,
      [if id != null then 'id']: id,
      [if node_type != null then 'node_type']: node_type,
      [if security_group_ids != null then 'security_group_ids']: security_group_ids,
      [if snapshot_window != null then 'snapshot_window']: snapshot_window,
      [if cluster_mode != null then 'cluster_mode']: cluster_mode,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      configuration_endpoint_address:: '${aws_elasticache_replication_group.%s.configuration_endpoint_address}' % rname,
      member_clusters:: '${aws_elasticache_replication_group.%s.member_clusters}' % rname,
      primary_endpoint_address:: '${aws_elasticache_replication_group.%s.primary_endpoint_address}' % rname,
    },
    // aws_iam_group_membership - https://www.terraform.io/docs/providers/aws/r/iam_group_membership.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param group (required) https://www.terraform.io/docs/providers/aws/r/iam_group_membership.html#group.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iam_group_membership.html#name.
    // @param users (required) https://www.terraform.io/docs/providers/aws/r/iam_group_membership.html#users.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_group_membership.html#id.
    aws_iam_group_membership(rname, group, name, users, id=null):: {
      group: group,
      name: name,
      users: users,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_vpc_endpoint - https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param service_name (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#service_name.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#vpc_id.
    // @param vpc_endpoint_type (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#vpc_endpoint_type.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#policy.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#security_group_ids.
    // @param subnet_ids (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#subnet_ids.
    // @param route_table_ids (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#route_table_ids.
    // @param private_dns_enabled (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#private_dns_enabled.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#tags.
    // @param auto_accept (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#auto_accept.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint.html#id.
    // @param timeouts (optional) timeouts block.
    aws_vpc_endpoint(rname, service_name, vpc_id, vpc_endpoint_type=null, policy=null, security_group_ids=null, subnet_ids=null, route_table_ids=null, private_dns_enabled=null, tags=null, auto_accept=null, id=null, timeouts={}):: {
      service_name: service_name,
      vpc_id: vpc_id,
      [if vpc_endpoint_type != null then 'vpc_endpoint_type']: vpc_endpoint_type,
      [if policy != null then 'policy']: policy,
      [if security_group_ids != null then 'security_group_ids']: security_group_ids,
      [if subnet_ids != null then 'subnet_ids']: subnet_ids,
      [if route_table_ids != null then 'route_table_ids']: route_table_ids,
      [if private_dns_enabled != null then 'private_dns_enabled']: private_dns_enabled,
      [if tags != null then 'tags']: tags,
      [if auto_accept != null then 'auto_accept']: auto_accept,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      requester_managed:: '${aws_vpc_endpoint.%s.requester_managed}' % rname,
      cidr_blocks:: '${aws_vpc_endpoint.%s.cidr_blocks}' % rname,
      prefix_list_id:: '${aws_vpc_endpoint.%s.prefix_list_id}' % rname,
      dns_entry:: '${aws_vpc_endpoint.%s.dns_entry}' % rname,
      network_interface_ids:: '${aws_vpc_endpoint.%s.network_interface_ids}' % rname,
      owner_id:: '${aws_vpc_endpoint.%s.owner_id}' % rname,
      state:: '${aws_vpc_endpoint.%s.state}' % rname,
    },
    // aws_wafregional_geo_match_set - https://www.terraform.io/docs/providers/aws/r/wafregional_geo_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_geo_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_geo_match_set.html#id.
    // @param geo_match_constraint (optional) geo_match_constraint block.
    aws_wafregional_geo_match_set(rname, name, id=null, geo_match_constraint={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if geo_match_constraint != null then 'geo_match_constraint']: geo_match_constraint,
      rname:: rname,
    },
    // aws_appautoscaling_policy - https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#name.
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#resource_id.
    // @param scalable_dimension (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#scalable_dimension.
    // @param service_namespace (required) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#service_namespace.
    // @param min_adjustment_magnitude (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#min_adjustment_magnitude.
    // @param alarms (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#alarms.
    // @param cooldown (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#cooldown.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#id.
    // @param adjustment_type (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#adjustment_type.
    // @param metric_aggregation_type (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#metric_aggregation_type.
    // @param policy_type (optional) https://www.terraform.io/docs/providers/aws/r/appautoscaling_policy.html#policy_type.
    // @param step_adjustment (optional) step_adjustment block.
    // @param step_scaling_policy_configuration (optional) step_scaling_policy_configuration block.
    // @param target_tracking_scaling_policy_configuration (optional) target_tracking_scaling_policy_configuration block.
    aws_appautoscaling_policy(rname, name, resource_id, scalable_dimension, service_namespace, min_adjustment_magnitude=null, alarms=null, cooldown=null, id=null, adjustment_type=null, metric_aggregation_type=null, policy_type=null, step_adjustment={}, step_scaling_policy_configuration={}, target_tracking_scaling_policy_configuration={}):: {
      name: name,
      resource_id: resource_id,
      scalable_dimension: scalable_dimension,
      service_namespace: service_namespace,
      [if min_adjustment_magnitude != null then 'min_adjustment_magnitude']: min_adjustment_magnitude,
      [if alarms != null then 'alarms']: alarms,
      [if cooldown != null then 'cooldown']: cooldown,
      [if id != null then 'id']: id,
      [if adjustment_type != null then 'adjustment_type']: adjustment_type,
      [if metric_aggregation_type != null then 'metric_aggregation_type']: metric_aggregation_type,
      [if policy_type != null then 'policy_type']: policy_type,
      [if step_adjustment != null then 'step_adjustment']: step_adjustment,
      [if step_scaling_policy_configuration != null then 'step_scaling_policy_configuration']: step_scaling_policy_configuration,
      [if target_tracking_scaling_policy_configuration != null then 'target_tracking_scaling_policy_configuration']: target_tracking_scaling_policy_configuration,
      rname:: rname,
      arn:: '${aws_appautoscaling_policy.%s.arn}' % rname,
    },
    // aws_appsync_graphql_api - https://www.terraform.io/docs/providers/aws/r/appsync_graphql_api.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param authentication_type (required) https://www.terraform.io/docs/providers/aws/r/appsync_graphql_api.html#authentication_type.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appsync_graphql_api.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/appsync_graphql_api.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appsync_graphql_api.html#id.
    // @param schema (optional) https://www.terraform.io/docs/providers/aws/r/appsync_graphql_api.html#schema.
    // @param log_config (optional) log_config block.
    // @param openid_connect_config (optional) openid_connect_config block.
    // @param user_pool_config (optional) user_pool_config block.
    aws_appsync_graphql_api(rname, authentication_type, name, tags=null, id=null, schema=null, log_config={}, openid_connect_config={}, user_pool_config={}):: {
      authentication_type: authentication_type,
      name: name,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if schema != null then 'schema']: schema,
      [if log_config != null then 'log_config']: log_config,
      [if openid_connect_config != null then 'openid_connect_config']: openid_connect_config,
      [if user_pool_config != null then 'user_pool_config']: user_pool_config,
      rname:: rname,
      uris:: '${aws_appsync_graphql_api.%s.uris}' % rname,
      arn:: '${aws_appsync_graphql_api.%s.arn}' % rname,
    },
    // aws_pinpoint_apns_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#application_id.
    // @param certificate (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#certificate.
    // @param default_authentication_method (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#default_authentication_method.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#enabled.
    // @param private_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#private_key.
    // @param team_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#team_id.
    // @param token_key_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#token_key_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#id.
    // @param token_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#token_key.
    // @param bundle_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_channel.html#bundle_id.
    aws_pinpoint_apns_channel(rname, application_id, certificate=null, default_authentication_method=null, enabled=null, private_key=null, team_id=null, token_key_id=null, id=null, token_key=null, bundle_id=null):: {
      application_id: application_id,
      [if certificate != null then 'certificate']: certificate,
      [if default_authentication_method != null then 'default_authentication_method']: default_authentication_method,
      [if enabled != null then 'enabled']: enabled,
      [if private_key != null then 'private_key']: private_key,
      [if team_id != null then 'team_id']: team_id,
      [if token_key_id != null then 'token_key_id']: token_key_id,
      [if id != null then 'id']: id,
      [if token_key != null then 'token_key']: token_key,
      [if bundle_id != null then 'bundle_id']: bundle_id,
      rname:: rname,
    },
    // aws_config_configuration_aggregator - https://www.terraform.io/docs/providers/aws/r/config_configuration_aggregator.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/config_configuration_aggregator.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_configuration_aggregator.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/config_configuration_aggregator.html#tags.
    // @param account_aggregation_source (optional) account_aggregation_source block.
    // @param organization_aggregation_source (optional) organization_aggregation_source block.
    aws_config_configuration_aggregator(rname, name, id=null, tags=null, account_aggregation_source={}, organization_aggregation_source={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if account_aggregation_source != null then 'account_aggregation_source']: account_aggregation_source,
      [if organization_aggregation_source != null then 'organization_aggregation_source']: organization_aggregation_source,
      rname:: rname,
      arn:: '${aws_config_configuration_aggregator.%s.arn}' % rname,
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
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_waf_rule_group - https://www.terraform.io/docs/providers/aws/r/waf_rule_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/waf_rule_group.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_rule_group.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_rule_group.html#id.
    // @param activated_rule (optional) activated_rule block.
    aws_waf_rule_group(rname, metric_name, name, id=null, activated_rule={}):: {
      metric_name: metric_name,
      name: name,
      [if id != null then 'id']: id,
      [if activated_rule != null then 'activated_rule']: activated_rule,
      rname:: rname,
    },
    // aws_efs_mount_target - https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param file_system_id (required) https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html#file_system_id.
    // @param subnet_id (required) https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html#subnet_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html#id.
    // @param ip_address (optional) https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html#ip_address.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/efs_mount_target.html#security_groups.
    aws_efs_mount_target(rname, file_system_id, subnet_id, id=null, ip_address=null, security_groups=null):: {
      file_system_id: file_system_id,
      subnet_id: subnet_id,
      [if id != null then 'id']: id,
      [if ip_address != null then 'ip_address']: ip_address,
      [if security_groups != null then 'security_groups']: security_groups,
      rname:: rname,
      dns_name:: '${aws_efs_mount_target.%s.dns_name}' % rname,
      file_system_arn:: '${aws_efs_mount_target.%s.file_system_arn}' % rname,
      network_interface_id:: '${aws_efs_mount_target.%s.network_interface_id}' % rname,
    },
    // aws_kinesis_firehose_delivery_stream - https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#name.
    // @param destination (required) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#destination.
    // @param destination_id (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#destination_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#tags.
    // @param version_id (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#version_id.
    // @param arn (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_firehose_delivery_stream.html#arn.
    // @param elasticsearch_configuration (optional) elasticsearch_configuration block.
    // @param extended_s3_configuration (optional) extended_s3_configuration block.
    // @param kinesis_source_configuration (optional) kinesis_source_configuration block.
    // @param redshift_configuration (optional) redshift_configuration block.
    // @param s3_configuration (optional) s3_configuration block.
    // @param server_side_encryption (optional) server_side_encryption block.
    // @param splunk_configuration (optional) splunk_configuration block.
    aws_kinesis_firehose_delivery_stream(rname, name, destination, destination_id=null, id=null, tags=null, version_id=null, arn=null, elasticsearch_configuration={}, extended_s3_configuration={}, kinesis_source_configuration={}, redshift_configuration={}, s3_configuration={}, server_side_encryption={}, splunk_configuration={}):: {
      name: name,
      destination: destination,
      [if destination_id != null then 'destination_id']: destination_id,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if version_id != null then 'version_id']: version_id,
      [if arn != null then 'arn']: arn,
      [if elasticsearch_configuration != null then 'elasticsearch_configuration']: elasticsearch_configuration,
      [if extended_s3_configuration != null then 'extended_s3_configuration']: extended_s3_configuration,
      [if kinesis_source_configuration != null then 'kinesis_source_configuration']: kinesis_source_configuration,
      [if redshift_configuration != null then 'redshift_configuration']: redshift_configuration,
      [if s3_configuration != null then 's3_configuration']: s3_configuration,
      [if server_side_encryption != null then 'server_side_encryption']: server_side_encryption,
      [if splunk_configuration != null then 'splunk_configuration']: splunk_configuration,
      rname:: rname,
    },
    // aws_lightsail_instance - https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bundle_id (required) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#bundle_id.
    // @param availability_zone (required) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#availability_zone.
    // @param blueprint_id (required) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#blueprint_id.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#id.
    // @param key_pair_name (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#key_pair_name.
    // @param user_data (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_instance.html#user_data.
    aws_lightsail_instance(rname, bundle_id, availability_zone, blueprint_id, name, tags=null, id=null, key_pair_name=null, user_data=null):: {
      bundle_id: bundle_id,
      availability_zone: availability_zone,
      blueprint_id: blueprint_id,
      name: name,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if key_pair_name != null then 'key_pair_name']: key_pair_name,
      [if user_data != null then 'user_data']: user_data,
      rname:: rname,
      is_static_ip:: '${aws_lightsail_instance.%s.is_static_ip}' % rname,
      arn:: '${aws_lightsail_instance.%s.arn}' % rname,
      ipv6_address:: '${aws_lightsail_instance.%s.ipv6_address}' % rname,
      cpu_count:: '${aws_lightsail_instance.%s.cpu_count}' % rname,
      created_at:: '${aws_lightsail_instance.%s.created_at}' % rname,
      private_ip_address:: '${aws_lightsail_instance.%s.private_ip_address}' % rname,
      ram_size:: '${aws_lightsail_instance.%s.ram_size}' % rname,
      username:: '${aws_lightsail_instance.%s.username}' % rname,
      public_ip_address:: '${aws_lightsail_instance.%s.public_ip_address}' % rname,
    },
    // aws_pinpoint_apns_sandbox_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#application_id.
    // @param bundle_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#bundle_id.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#enabled.
    // @param private_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#private_key.
    // @param team_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#team_id.
    // @param token_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#token_key.
    // @param default_authentication_method (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#default_authentication_method.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#id.
    // @param token_key_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#token_key_id.
    // @param certificate (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_sandbox_channel.html#certificate.
    aws_pinpoint_apns_sandbox_channel(rname, application_id, bundle_id=null, enabled=null, private_key=null, team_id=null, token_key=null, default_authentication_method=null, id=null, token_key_id=null, certificate=null):: {
      application_id: application_id,
      [if bundle_id != null then 'bundle_id']: bundle_id,
      [if enabled != null then 'enabled']: enabled,
      [if private_key != null then 'private_key']: private_key,
      [if team_id != null then 'team_id']: team_id,
      [if token_key != null then 'token_key']: token_key,
      [if default_authentication_method != null then 'default_authentication_method']: default_authentication_method,
      [if id != null then 'id']: id,
      [if token_key_id != null then 'token_key_id']: token_key_id,
      [if certificate != null then 'certificate']: certificate,
      rname:: rname,
    },
    // aws_alb_listener - https://www.terraform.io/docs/providers/aws/r/alb_listener.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param load_balancer_arn (required) https://www.terraform.io/docs/providers/aws/r/alb_listener.html#load_balancer_arn.
    // @param port (required) https://www.terraform.io/docs/providers/aws/r/alb_listener.html#port.
    // @param default_action (required) default_action block.
    // @param certificate_arn (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener.html#certificate_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener.html#id.
    // @param protocol (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener.html#protocol.
    // @param ssl_policy (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener.html#ssl_policy.
    // @param timeouts (optional) timeouts block.
    aws_alb_listener(rname, load_balancer_arn, port, default_action, certificate_arn=null, id=null, protocol=null, ssl_policy=null, timeouts={}):: {
      load_balancer_arn: load_balancer_arn,
      port: port,
      default_action: default_action,
      [if certificate_arn != null then 'certificate_arn']: certificate_arn,
      [if id != null then 'id']: id,
      [if protocol != null then 'protocol']: protocol,
      [if ssl_policy != null then 'ssl_policy']: ssl_policy,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_alb_listener.%s.arn}' % rname,
    },
    // aws_default_vpc_dhcp_options - https://www.terraform.io/docs/providers/aws/r/default_vpc_dhcp_options.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param netbios_name_servers (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc_dhcp_options.html#netbios_name_servers.
    // @param netbios_node_type (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc_dhcp_options.html#netbios_node_type.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc_dhcp_options.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc_dhcp_options.html#id.
    aws_default_vpc_dhcp_options(rname, netbios_name_servers=null, netbios_node_type=null, tags=null, id=null):: {
      [if netbios_name_servers != null then 'netbios_name_servers']: netbios_name_servers,
      [if netbios_node_type != null then 'netbios_node_type']: netbios_node_type,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      rname:: rname,
      ntp_servers:: '${aws_default_vpc_dhcp_options.%s.ntp_servers}' % rname,
      owner_id:: '${aws_default_vpc_dhcp_options.%s.owner_id}' % rname,
      domain_name:: '${aws_default_vpc_dhcp_options.%s.domain_name}' % rname,
      domain_name_servers:: '${aws_default_vpc_dhcp_options.%s.domain_name_servers}' % rname,
    },
    // aws_ebs_volume - https://www.terraform.io/docs/providers/aws/r/ebs_volume.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param availability_zone (required) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#availability_zone.
    // @param encrypted (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#encrypted.
    // @param iops (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#iops.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#kms_key_id.
    // @param snapshot_id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#snapshot_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#id.
    // @param size (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#size.
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/ebs_volume.html#type.
    aws_ebs_volume(rname, availability_zone, encrypted=null, iops=null, kms_key_id=null, snapshot_id=null, tags=null, id=null, size=null, type=null):: {
      availability_zone: availability_zone,
      [if encrypted != null then 'encrypted']: encrypted,
      [if iops != null then 'iops']: iops,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if snapshot_id != null then 'snapshot_id']: snapshot_id,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if size != null then 'size']: size,
      [if type != null then 'type']: type,
      rname:: rname,
      arn:: '${aws_ebs_volume.%s.arn}' % rname,
    },
    // aws_iam_role - https://www.terraform.io/docs/providers/aws/r/iam_role.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param assume_role_policy (required) https://www.terraform.io/docs/providers/aws/r/iam_role.html#assume_role_policy.
    // @param max_session_duration (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#max_session_duration.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#name.
    // @param permissions_boundary (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#permissions_boundary.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#description.
    // @param force_detach_policies (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#force_detach_policies.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#id.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#name_prefix.
    // @param path (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#path.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/iam_role.html#tags.
    aws_iam_role(rname, assume_role_policy, max_session_duration=null, name=null, permissions_boundary=null, description=null, force_detach_policies=null, id=null, name_prefix=null, path=null, tags=null):: {
      assume_role_policy: assume_role_policy,
      [if max_session_duration != null then 'max_session_duration']: max_session_duration,
      [if name != null then 'name']: name,
      [if permissions_boundary != null then 'permissions_boundary']: permissions_boundary,
      [if description != null then 'description']: description,
      [if force_detach_policies != null then 'force_detach_policies']: force_detach_policies,
      [if id != null then 'id']: id,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if path != null then 'path']: path,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      create_date:: '${aws_iam_role.%s.create_date}' % rname,
      arn:: '${aws_iam_role.%s.arn}' % rname,
      unique_id:: '${aws_iam_role.%s.unique_id}' % rname,
    },
    // aws_opsworks_user_profile - https://www.terraform.io/docs/providers/aws/r/opsworks_user_profile.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param ssh_username (required) https://www.terraform.io/docs/providers/aws/r/opsworks_user_profile.html#ssh_username.
    // @param user_arn (required) https://www.terraform.io/docs/providers/aws/r/opsworks_user_profile.html#user_arn.
    // @param ssh_public_key (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_user_profile.html#ssh_public_key.
    // @param allow_self_management (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_user_profile.html#allow_self_management.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_user_profile.html#id.
    aws_opsworks_user_profile(rname, ssh_username, user_arn, ssh_public_key=null, allow_self_management=null, id=null):: {
      ssh_username: ssh_username,
      user_arn: user_arn,
      [if ssh_public_key != null then 'ssh_public_key']: ssh_public_key,
      [if allow_self_management != null then 'allow_self_management']: allow_self_management,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_pinpoint_baidu_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_baidu_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param secret_key (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_baidu_channel.html#secret_key.
    // @param api_key (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_baidu_channel.html#api_key.
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_baidu_channel.html#application_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_baidu_channel.html#id.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_baidu_channel.html#enabled.
    aws_pinpoint_baidu_channel(rname, secret_key, api_key, application_id, id=null, enabled=null):: {
      secret_key: secret_key,
      api_key: api_key,
      application_id: application_id,
      [if id != null then 'id']: id,
      [if enabled != null then 'enabled']: enabled,
      rname:: rname,
    },
    // aws_glacier_vault - https://www.terraform.io/docs/providers/aws/r/glacier_vault.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glacier_vault.html#name.
    // @param access_policy (optional) https://www.terraform.io/docs/providers/aws/r/glacier_vault.html#access_policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glacier_vault.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/glacier_vault.html#tags.
    // @param notification (optional) notification block.
    aws_glacier_vault(rname, name, access_policy=null, id=null, tags=null, notification={}):: {
      name: name,
      [if access_policy != null then 'access_policy']: access_policy,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if notification != null then 'notification']: notification,
      rname:: rname,
      arn:: '${aws_glacier_vault.%s.arn}' % rname,
      location:: '${aws_glacier_vault.%s.location}' % rname,
    },
    // aws_proxy_protocol_policy - https://www.terraform.io/docs/providers/aws/r/proxy_protocol_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_ports (required) https://www.terraform.io/docs/providers/aws/r/proxy_protocol_policy.html#instance_ports.
    // @param load_balancer (required) https://www.terraform.io/docs/providers/aws/r/proxy_protocol_policy.html#load_balancer.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/proxy_protocol_policy.html#id.
    aws_proxy_protocol_policy(rname, instance_ports, load_balancer, id=null):: {
      instance_ports: instance_ports,
      load_balancer: load_balancer,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_waf_sql_injection_match_set - https://www.terraform.io/docs/providers/aws/r/waf_sql_injection_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_sql_injection_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_sql_injection_match_set.html#id.
    // @param sql_injection_match_tuples (optional) sql_injection_match_tuples block.
    aws_waf_sql_injection_match_set(rname, name, id=null, sql_injection_match_tuples={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if sql_injection_match_tuples != null then 'sql_injection_match_tuples']: sql_injection_match_tuples,
      rname:: rname,
    },
    // aws_autoscaling_lifecycle_hook - https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param autoscaling_group_name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#autoscaling_group_name.
    // @param lifecycle_transition (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#lifecycle_transition.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#name.
    // @param notification_metadata (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#notification_metadata.
    // @param notification_target_arn (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#notification_target_arn.
    // @param default_result (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#default_result.
    // @param heartbeat_timeout (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#heartbeat_timeout.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#id.
    // @param role_arn (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_lifecycle_hook.html#role_arn.
    aws_autoscaling_lifecycle_hook(rname, autoscaling_group_name, lifecycle_transition, name, notification_metadata=null, notification_target_arn=null, default_result=null, heartbeat_timeout=null, id=null, role_arn=null):: {
      autoscaling_group_name: autoscaling_group_name,
      lifecycle_transition: lifecycle_transition,
      name: name,
      [if notification_metadata != null then 'notification_metadata']: notification_metadata,
      [if notification_target_arn != null then 'notification_target_arn']: notification_target_arn,
      [if default_result != null then 'default_result']: default_result,
      [if heartbeat_timeout != null then 'heartbeat_timeout']: heartbeat_timeout,
      [if id != null then 'id']: id,
      [if role_arn != null then 'role_arn']: role_arn,
      rname:: rname,
    },
    // aws_cognito_identity_pool_roles_attachment - https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool_roles_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param identity_pool_id (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool_roles_attachment.html#identity_pool_id.
    // @param roles (required) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool_roles_attachment.html#roles.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_identity_pool_roles_attachment.html#id.
    // @param role_mapping (optional) role_mapping block.
    aws_cognito_identity_pool_roles_attachment(rname, identity_pool_id, roles, id=null, role_mapping={}):: {
      identity_pool_id: identity_pool_id,
      roles: roles,
      [if id != null then 'id']: id,
      [if role_mapping != null then 'role_mapping']: role_mapping,
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
    // @param content_config (optional) content_config block.
    // @param content_config_permissions (optional) content_config_permissions block.
    // @param notifications (optional) notifications block.
    // @param thumbnail_config (optional) thumbnail_config block.
    // @param thumbnail_config_permissions (optional) thumbnail_config_permissions block.
    aws_elastictranscoder_pipeline(rname, role, input_bucket, aws_kms_key_arn=null, id=null, name=null, output_bucket=null, content_config={}, content_config_permissions={}, notifications={}, thumbnail_config={}, thumbnail_config_permissions={}):: {
      role: role,
      input_bucket: input_bucket,
      [if aws_kms_key_arn != null then 'aws_kms_key_arn']: aws_kms_key_arn,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if output_bucket != null then 'output_bucket']: output_bucket,
      [if content_config != null then 'content_config']: content_config,
      [if content_config_permissions != null then 'content_config_permissions']: content_config_permissions,
      [if notifications != null then 'notifications']: notifications,
      [if thumbnail_config != null then 'thumbnail_config']: thumbnail_config,
      [if thumbnail_config_permissions != null then 'thumbnail_config_permissions']: thumbnail_config_permissions,
      rname:: rname,
      arn:: '${aws_elastictranscoder_pipeline.%s.arn}' % rname,
    },
    // aws_ssm_activation - https://www.terraform.io/docs/providers/aws/r/ssm_activation.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param iam_role (required) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#iam_role.
    // @param expiration_date (optional) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#expiration_date.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#name.
    // @param registration_limit (optional) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#registration_limit.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ssm_activation.html#tags.
    aws_ssm_activation(rname, iam_role, expiration_date=null, name=null, registration_limit=null, description=null, id=null, tags=null):: {
      iam_role: iam_role,
      [if expiration_date != null then 'expiration_date']: expiration_date,
      [if name != null then 'name']: name,
      [if registration_limit != null then 'registration_limit']: registration_limit,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      activation_code:: '${aws_ssm_activation.%s.activation_code}' % rname,
      expired:: '${aws_ssm_activation.%s.expired}' % rname,
      registration_count:: '${aws_ssm_activation.%s.registration_count}' % rname,
    },
    // aws_vpn_gateway_route_propagation - https://www.terraform.io/docs/providers/aws/r/vpn_gateway_route_propagation.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param route_table_id (required) https://www.terraform.io/docs/providers/aws/r/vpn_gateway_route_propagation.html#route_table_id.
    // @param vpn_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/vpn_gateway_route_propagation.html#vpn_gateway_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway_route_propagation.html#id.
    aws_vpn_gateway_route_propagation(rname, route_table_id, vpn_gateway_id, id=null):: {
      route_table_id: route_table_id,
      vpn_gateway_id: vpn_gateway_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_ami - https://www.terraform.io/docs/providers/aws/r/ami.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ami.html#name.
    // @param ena_support (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#ena_support.
    // @param image_location (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#image_location.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#tags.
    // @param virtualization_type (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#virtualization_type.
    // @param architecture (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#architecture.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#id.
    // @param kernel_id (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#kernel_id.
    // @param ramdisk_id (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#ramdisk_id.
    // @param root_device_name (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#root_device_name.
    // @param sriov_net_support (optional) https://www.terraform.io/docs/providers/aws/r/ami.html#sriov_net_support.
    // @param ephemeral_block_device (optional) ephemeral_block_device block.
    // @param timeouts (optional) timeouts block.
    // @param ebs_block_device (optional) ebs_block_device block.
    aws_ami(rname, name, ena_support=null, image_location=null, tags=null, virtualization_type=null, architecture=null, description=null, id=null, kernel_id=null, ramdisk_id=null, root_device_name=null, sriov_net_support=null, ephemeral_block_device={}, timeouts={}, ebs_block_device={}):: {
      name: name,
      [if ena_support != null then 'ena_support']: ena_support,
      [if image_location != null then 'image_location']: image_location,
      [if tags != null then 'tags']: tags,
      [if virtualization_type != null then 'virtualization_type']: virtualization_type,
      [if architecture != null then 'architecture']: architecture,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if kernel_id != null then 'kernel_id']: kernel_id,
      [if ramdisk_id != null then 'ramdisk_id']: ramdisk_id,
      [if root_device_name != null then 'root_device_name']: root_device_name,
      [if sriov_net_support != null then 'sriov_net_support']: sriov_net_support,
      [if ephemeral_block_device != null then 'ephemeral_block_device']: ephemeral_block_device,
      [if timeouts != null then 'timeouts']: timeouts,
      [if ebs_block_device != null then 'ebs_block_device']: ebs_block_device,
      rname:: rname,
      manage_ebs_snapshots:: '${aws_ami.%s.manage_ebs_snapshots}' % rname,
      root_snapshot_id:: '${aws_ami.%s.root_snapshot_id}' % rname,
    },
    // aws_dynamodb_global_table - https://www.terraform.io/docs/providers/aws/r/dynamodb_global_table.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dynamodb_global_table.html#name.
    // @param replica (required) replica block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_global_table.html#id.
    // @param timeouts (optional) timeouts block.
    aws_dynamodb_global_table(rname, name, replica, id=null, timeouts={}):: {
      name: name,
      replica: replica,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_dynamodb_global_table.%s.arn}' % rname,
    },
    // aws_globalaccelerator_endpoint_group - https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param listener_arn (required) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#listener_arn.
    // @param health_check_port (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#health_check_port.
    // @param health_check_protocol (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#health_check_protocol.
    // @param traffic_dial_percentage (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#traffic_dial_percentage.
    // @param endpoint_group_region (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#endpoint_group_region.
    // @param health_check_path (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#health_check_path.
    // @param threshold_count (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#threshold_count.
    // @param health_check_interval_seconds (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#health_check_interval_seconds.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/globalaccelerator_endpoint_group.html#id.
    // @param endpoint_configuration (optional) endpoint_configuration block.
    aws_globalaccelerator_endpoint_group(rname, listener_arn, health_check_port=null, health_check_protocol=null, traffic_dial_percentage=null, endpoint_group_region=null, health_check_path=null, threshold_count=null, health_check_interval_seconds=null, id=null, endpoint_configuration={}):: {
      listener_arn: listener_arn,
      [if health_check_port != null then 'health_check_port']: health_check_port,
      [if health_check_protocol != null then 'health_check_protocol']: health_check_protocol,
      [if traffic_dial_percentage != null then 'traffic_dial_percentage']: traffic_dial_percentage,
      [if endpoint_group_region != null then 'endpoint_group_region']: endpoint_group_region,
      [if health_check_path != null then 'health_check_path']: health_check_path,
      [if threshold_count != null then 'threshold_count']: threshold_count,
      [if health_check_interval_seconds != null then 'health_check_interval_seconds']: health_check_interval_seconds,
      [if id != null then 'id']: id,
      [if endpoint_configuration != null then 'endpoint_configuration']: endpoint_configuration,
      rname:: rname,
    },
    // aws_media_store_container - https://www.terraform.io/docs/providers/aws/r/media_store_container.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/media_store_container.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/media_store_container.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/media_store_container.html#tags.
    aws_media_store_container(rname, name, id=null, tags=null):: {
      name: name,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      arn:: '${aws_media_store_container.%s.arn}' % rname,
      endpoint:: '${aws_media_store_container.%s.endpoint}' % rname,
    },
    // aws_api_gateway_gateway_response - https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html#rest_api_id.
    // @param response_type (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html#response_type.
    // @param status_code (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html#status_code.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html#id.
    // @param response_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html#response_parameters.
    // @param response_templates (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_gateway_response.html#response_templates.
    aws_api_gateway_gateway_response(rname, rest_api_id, response_type, status_code=null, id=null, response_parameters=null, response_templates=null):: {
      rest_api_id: rest_api_id,
      response_type: response_type,
      [if status_code != null then 'status_code']: status_code,
      [if id != null then 'id']: id,
      [if response_parameters != null then 'response_parameters']: response_parameters,
      [if response_templates != null then 'response_templates']: response_templates,
      rname:: rname,
    },
    // aws_autoscaling_policy - https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#name.
    // @param autoscaling_group_name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#autoscaling_group_name.
    // @param min_adjustment_step (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#min_adjustment_step.
    // @param policy_type (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#policy_type.
    // @param scaling_adjustment (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#scaling_adjustment.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#id.
    // @param metric_aggregation_type (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#metric_aggregation_type.
    // @param estimated_instance_warmup (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#estimated_instance_warmup.
    // @param min_adjustment_magnitude (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#min_adjustment_magnitude.
    // @param adjustment_type (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#adjustment_type.
    // @param cooldown (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_policy.html#cooldown.
    // @param step_adjustment (optional) step_adjustment block.
    // @param target_tracking_configuration (optional) target_tracking_configuration block.
    aws_autoscaling_policy(rname, name, autoscaling_group_name, min_adjustment_step=null, policy_type=null, scaling_adjustment=null, id=null, metric_aggregation_type=null, estimated_instance_warmup=null, min_adjustment_magnitude=null, adjustment_type=null, cooldown=null, step_adjustment={}, target_tracking_configuration={}):: {
      name: name,
      autoscaling_group_name: autoscaling_group_name,
      [if min_adjustment_step != null then 'min_adjustment_step']: min_adjustment_step,
      [if policy_type != null then 'policy_type']: policy_type,
      [if scaling_adjustment != null then 'scaling_adjustment']: scaling_adjustment,
      [if id != null then 'id']: id,
      [if metric_aggregation_type != null then 'metric_aggregation_type']: metric_aggregation_type,
      [if estimated_instance_warmup != null then 'estimated_instance_warmup']: estimated_instance_warmup,
      [if min_adjustment_magnitude != null then 'min_adjustment_magnitude']: min_adjustment_magnitude,
      [if adjustment_type != null then 'adjustment_type']: adjustment_type,
      [if cooldown != null then 'cooldown']: cooldown,
      [if step_adjustment != null then 'step_adjustment']: step_adjustment,
      [if target_tracking_configuration != null then 'target_tracking_configuration']: target_tracking_configuration,
      rname:: rname,
      arn:: '${aws_autoscaling_policy.%s.arn}' % rname,
    },
    // aws_lb_target_group - https://www.terraform.io/docs/providers/aws/r/lb_target_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param deregistration_delay (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#deregistration_delay.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#name_prefix.
    // @param slow_start (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#slow_start.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#tags.
    // @param target_type (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#target_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#name.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#port.
    // @param protocol (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#protocol.
    // @param proxy_protocol_v2 (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#proxy_protocol_v2.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#vpc_id.
    // @param lambda_multi_value_headers_enabled (optional) https://www.terraform.io/docs/providers/aws/r/lb_target_group.html#lambda_multi_value_headers_enabled.
    // @param stickiness (optional) stickiness block.
    // @param health_check (optional) health_check block.
    aws_lb_target_group(rname, deregistration_delay=null, name_prefix=null, slow_start=null, tags=null, target_type=null, id=null, name=null, port=null, protocol=null, proxy_protocol_v2=null, vpc_id=null, lambda_multi_value_headers_enabled=null, stickiness={}, health_check={}):: {
      [if deregistration_delay != null then 'deregistration_delay']: deregistration_delay,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if slow_start != null then 'slow_start']: slow_start,
      [if tags != null then 'tags']: tags,
      [if target_type != null then 'target_type']: target_type,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if port != null then 'port']: port,
      [if protocol != null then 'protocol']: protocol,
      [if proxy_protocol_v2 != null then 'proxy_protocol_v2']: proxy_protocol_v2,
      [if vpc_id != null then 'vpc_id']: vpc_id,
      [if lambda_multi_value_headers_enabled != null then 'lambda_multi_value_headers_enabled']: lambda_multi_value_headers_enabled,
      [if stickiness != null then 'stickiness']: stickiness,
      [if health_check != null then 'health_check']: health_check,
      rname:: rname,
      arn:: '${aws_lb_target_group.%s.arn}' % rname,
      arn_suffix:: '${aws_lb_target_group.%s.arn_suffix}' % rname,
    },
    // aws_ec2_capacity_reservation - https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param availability_zone (required) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#availability_zone.
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#instance_type.
    // @param instance_count (required) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#instance_count.
    // @param instance_platform (required) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#instance_platform.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#ebs_optimized.
    // @param ephemeral_storage (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#ephemeral_storage.
    // @param instance_match_criteria (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#instance_match_criteria.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#tags.
    // @param tenancy (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#tenancy.
    // @param end_date (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#end_date.
    // @param end_date_type (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#end_date_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_capacity_reservation.html#id.
    aws_ec2_capacity_reservation(rname, availability_zone, instance_type, instance_count, instance_platform, ebs_optimized=null, ephemeral_storage=null, instance_match_criteria=null, tags=null, tenancy=null, end_date=null, end_date_type=null, id=null):: {
      availability_zone: availability_zone,
      instance_type: instance_type,
      instance_count: instance_count,
      instance_platform: instance_platform,
      [if ebs_optimized != null then 'ebs_optimized']: ebs_optimized,
      [if ephemeral_storage != null then 'ephemeral_storage']: ephemeral_storage,
      [if instance_match_criteria != null then 'instance_match_criteria']: instance_match_criteria,
      [if tags != null then 'tags']: tags,
      [if tenancy != null then 'tenancy']: tenancy,
      [if end_date != null then 'end_date']: end_date,
      [if end_date_type != null then 'end_date_type']: end_date_type,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_inspector_assessment_target - https://www.terraform.io/docs/providers/aws/r/inspector_assessment_target.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/inspector_assessment_target.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/inspector_assessment_target.html#id.
    // @param resource_group_arn (optional) https://www.terraform.io/docs/providers/aws/r/inspector_assessment_target.html#resource_group_arn.
    aws_inspector_assessment_target(rname, name, id=null, resource_group_arn=null):: {
      name: name,
      [if id != null then 'id']: id,
      [if resource_group_arn != null then 'resource_group_arn']: resource_group_arn,
      rname:: rname,
      arn:: '${aws_inspector_assessment_target.%s.arn}' % rname,
    },
    // aws_placement_group - https://www.terraform.io/docs/providers/aws/r/placement_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/placement_group.html#name.
    // @param strategy (required) https://www.terraform.io/docs/providers/aws/r/placement_group.html#strategy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/placement_group.html#id.
    aws_placement_group(rname, name, strategy, id=null):: {
      name: name,
      strategy: strategy,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_opsworks_stack - https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#name.
    // @param region (required) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#region.
    // @param default_instance_profile_arn (required) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#default_instance_profile_arn.
    // @param service_role_arn (required) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#service_role_arn.
    // @param berkshelf_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#berkshelf_version.
    // @param configuration_manager_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#configuration_manager_version.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#custom_json.
    // @param agent_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#agent_version.
    // @param color (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#color.
    // @param default_os (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#default_os.
    // @param hostname_theme (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#hostname_theme.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#tags.
    // @param use_custom_cookbooks (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#use_custom_cookbooks.
    // @param use_opsworks_security_groups (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#use_opsworks_security_groups.
    // @param configuration_manager_name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#configuration_manager_name.
    // @param default_availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#default_availability_zone.
    // @param default_ssh_key_name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#default_ssh_key_name.
    // @param default_subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#default_subnet_id.
    // @param manage_berkshelf (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#manage_berkshelf.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#vpc_id.
    // @param default_root_device_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#default_root_device_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_stack.html#id.
    // @param custom_cookbooks_source (optional) custom_cookbooks_source block.
    aws_opsworks_stack(rname, name, region, default_instance_profile_arn, service_role_arn, berkshelf_version=null, configuration_manager_version=null, custom_json=null, agent_version=null, color=null, default_os=null, hostname_theme=null, tags=null, use_custom_cookbooks=null, use_opsworks_security_groups=null, configuration_manager_name=null, default_availability_zone=null, default_ssh_key_name=null, default_subnet_id=null, manage_berkshelf=null, vpc_id=null, default_root_device_type=null, id=null, custom_cookbooks_source={}):: {
      name: name,
      region: region,
      default_instance_profile_arn: default_instance_profile_arn,
      service_role_arn: service_role_arn,
      [if berkshelf_version != null then 'berkshelf_version']: berkshelf_version,
      [if configuration_manager_version != null then 'configuration_manager_version']: configuration_manager_version,
      [if custom_json != null then 'custom_json']: custom_json,
      [if agent_version != null then 'agent_version']: agent_version,
      [if color != null then 'color']: color,
      [if default_os != null then 'default_os']: default_os,
      [if hostname_theme != null then 'hostname_theme']: hostname_theme,
      [if tags != null then 'tags']: tags,
      [if use_custom_cookbooks != null then 'use_custom_cookbooks']: use_custom_cookbooks,
      [if use_opsworks_security_groups != null then 'use_opsworks_security_groups']: use_opsworks_security_groups,
      [if configuration_manager_name != null then 'configuration_manager_name']: configuration_manager_name,
      [if default_availability_zone != null then 'default_availability_zone']: default_availability_zone,
      [if default_ssh_key_name != null then 'default_ssh_key_name']: default_ssh_key_name,
      [if default_subnet_id != null then 'default_subnet_id']: default_subnet_id,
      [if manage_berkshelf != null then 'manage_berkshelf']: manage_berkshelf,
      [if vpc_id != null then 'vpc_id']: vpc_id,
      [if default_root_device_type != null then 'default_root_device_type']: default_root_device_type,
      [if id != null then 'id']: id,
      [if custom_cookbooks_source != null then 'custom_cookbooks_source']: custom_cookbooks_source,
      rname:: rname,
      stack_endpoint:: '${aws_opsworks_stack.%s.stack_endpoint}' % rname,
      arn:: '${aws_opsworks_stack.%s.arn}' % rname,
    },
    // aws_budgets_budget - https://www.terraform.io/docs/providers/aws/r/budgets_budget.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param budget_type (required) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#budget_type.
    // @param time_unit (required) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#time_unit.
    // @param limit_amount (required) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#limit_amount.
    // @param limit_unit (required) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#limit_unit.
    // @param time_period_start (required) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#time_period_start.
    // @param cost_filters (optional) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#cost_filters.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#id.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#name_prefix.
    // @param time_period_end (optional) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#time_period_end.
    // @param account_id (optional) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#account_id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/budgets_budget.html#name.
    // @param notification (optional) notification block.
    // @param cost_types (optional) cost_types block.
    aws_budgets_budget(rname, budget_type, time_unit, limit_amount, limit_unit, time_period_start, cost_filters=null, id=null, name_prefix=null, time_period_end=null, account_id=null, name=null, notification={}, cost_types={}):: {
      budget_type: budget_type,
      time_unit: time_unit,
      limit_amount: limit_amount,
      limit_unit: limit_unit,
      time_period_start: time_period_start,
      [if cost_filters != null then 'cost_filters']: cost_filters,
      [if id != null then 'id']: id,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if time_period_end != null then 'time_period_end']: time_period_end,
      [if account_id != null then 'account_id']: account_id,
      [if name != null then 'name']: name,
      [if notification != null then 'notification']: notification,
      [if cost_types != null then 'cost_types']: cost_types,
      rname:: rname,
    },
    // aws_launch_configuration - https://www.terraform.io/docs/providers/aws/r/launch_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#instance_type.
    // @param image_id (required) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#image_id.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#name_prefix.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#security_groups.
    // @param associate_public_ip_address (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#associate_public_ip_address.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#ebs_optimized.
    // @param iam_instance_profile (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#iam_instance_profile.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#name.
    // @param spot_price (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#spot_price.
    // @param user_data (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#user_data.
    // @param vpc_classic_link_security_groups (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#vpc_classic_link_security_groups.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#id.
    // @param key_name (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#key_name.
    // @param placement_tenancy (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#placement_tenancy.
    // @param enable_monitoring (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#enable_monitoring.
    // @param user_data_base64 (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#user_data_base64.
    // @param vpc_classic_link_id (optional) https://www.terraform.io/docs/providers/aws/r/launch_configuration.html#vpc_classic_link_id.
    // @param ebs_block_device (optional) ebs_block_device block.
    // @param ephemeral_block_device (optional) ephemeral_block_device block.
    // @param root_block_device (optional) root_block_device block.
    aws_launch_configuration(rname, instance_type, image_id, name_prefix=null, security_groups=null, associate_public_ip_address=null, ebs_optimized=null, iam_instance_profile=null, name=null, spot_price=null, user_data=null, vpc_classic_link_security_groups=null, id=null, key_name=null, placement_tenancy=null, enable_monitoring=null, user_data_base64=null, vpc_classic_link_id=null, ebs_block_device={}, ephemeral_block_device={}, root_block_device={}):: {
      instance_type: instance_type,
      image_id: image_id,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if security_groups != null then 'security_groups']: security_groups,
      [if associate_public_ip_address != null then 'associate_public_ip_address']: associate_public_ip_address,
      [if ebs_optimized != null then 'ebs_optimized']: ebs_optimized,
      [if iam_instance_profile != null then 'iam_instance_profile']: iam_instance_profile,
      [if name != null then 'name']: name,
      [if spot_price != null then 'spot_price']: spot_price,
      [if user_data != null then 'user_data']: user_data,
      [if vpc_classic_link_security_groups != null then 'vpc_classic_link_security_groups']: vpc_classic_link_security_groups,
      [if id != null then 'id']: id,
      [if key_name != null then 'key_name']: key_name,
      [if placement_tenancy != null then 'placement_tenancy']: placement_tenancy,
      [if enable_monitoring != null then 'enable_monitoring']: enable_monitoring,
      [if user_data_base64 != null then 'user_data_base64']: user_data_base64,
      [if vpc_classic_link_id != null then 'vpc_classic_link_id']: vpc_classic_link_id,
      [if ebs_block_device != null then 'ebs_block_device']: ebs_block_device,
      [if ephemeral_block_device != null then 'ephemeral_block_device']: ephemeral_block_device,
      [if root_block_device != null then 'root_block_device']: root_block_device,
      rname:: rname,
    },
    // aws_opsworks_php_app_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#stack_id.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#instance_shutdown_timeout.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_instance_profile_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#id.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#auto_healing.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_setup_recipes.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#system_packages.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#use_ebs_optimized_instances.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#auto_assign_elastic_ips.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#auto_assign_public_ips.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#install_updates_on_boot.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#name.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_security_group_ids.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#drain_elb_on_shutdown.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_json.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_shutdown_recipes.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_undeploy_recipes.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#elastic_load_balancer.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_configure_recipes.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_php_app_layer.html#custom_deploy_recipes.
    // @param ebs_volume (optional) ebs_volume block.
    aws_opsworks_php_app_layer(rname, stack_id, instance_shutdown_timeout=null, custom_instance_profile_arn=null, id=null, auto_healing=null, custom_setup_recipes=null, system_packages=null, use_ebs_optimized_instances=null, auto_assign_elastic_ips=null, auto_assign_public_ips=null, install_updates_on_boot=null, name=null, custom_security_group_ids=null, drain_elb_on_shutdown=null, custom_json=null, custom_shutdown_recipes=null, custom_undeploy_recipes=null, elastic_load_balancer=null, custom_configure_recipes=null, custom_deploy_recipes=null, ebs_volume={}):: {
      stack_id: stack_id,
      [if instance_shutdown_timeout != null then 'instance_shutdown_timeout']: instance_shutdown_timeout,
      [if custom_instance_profile_arn != null then 'custom_instance_profile_arn']: custom_instance_profile_arn,
      [if id != null then 'id']: id,
      [if auto_healing != null then 'auto_healing']: auto_healing,
      [if custom_setup_recipes != null then 'custom_setup_recipes']: custom_setup_recipes,
      [if system_packages != null then 'system_packages']: system_packages,
      [if use_ebs_optimized_instances != null then 'use_ebs_optimized_instances']: use_ebs_optimized_instances,
      [if auto_assign_elastic_ips != null then 'auto_assign_elastic_ips']: auto_assign_elastic_ips,
      [if auto_assign_public_ips != null then 'auto_assign_public_ips']: auto_assign_public_ips,
      [if install_updates_on_boot != null then 'install_updates_on_boot']: install_updates_on_boot,
      [if name != null then 'name']: name,
      [if custom_security_group_ids != null then 'custom_security_group_ids']: custom_security_group_ids,
      [if drain_elb_on_shutdown != null then 'drain_elb_on_shutdown']: drain_elb_on_shutdown,
      [if custom_json != null then 'custom_json']: custom_json,
      [if custom_shutdown_recipes != null then 'custom_shutdown_recipes']: custom_shutdown_recipes,
      [if custom_undeploy_recipes != null then 'custom_undeploy_recipes']: custom_undeploy_recipes,
      [if elastic_load_balancer != null then 'elastic_load_balancer']: elastic_load_balancer,
      [if custom_configure_recipes != null then 'custom_configure_recipes']: custom_configure_recipes,
      [if custom_deploy_recipes != null then 'custom_deploy_recipes']: custom_deploy_recipes,
      [if ebs_volume != null then 'ebs_volume']: ebs_volume,
      rname:: rname,
    },
    // aws_ebs_encryption_by_default - https://www.terraform.io/docs/providers/aws/r/ebs_encryption_by_default.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/ebs_encryption_by_default.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_encryption_by_default.html#id.
    aws_ebs_encryption_by_default(rname, enabled=null, id=null):: {
      [if enabled != null then 'enabled']: enabled,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_inspector_resource_group - https://www.terraform.io/docs/providers/aws/r/inspector_resource_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param tags (required) https://www.terraform.io/docs/providers/aws/r/inspector_resource_group.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/inspector_resource_group.html#id.
    aws_inspector_resource_group(rname, tags, id=null):: {
      tags: tags,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_inspector_resource_group.%s.arn}' % rname,
    },
    // aws_storagegateway_cached_iscsi_volume - https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param volume_size_in_bytes (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#volume_size_in_bytes.
    // @param gateway_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#gateway_arn.
    // @param target_name (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#target_name.
    // @param network_interface_id (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#network_interface_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#id.
    // @param source_volume_arn (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#source_volume_arn.
    // @param snapshot_id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_cached_iscsi_volume.html#snapshot_id.
    aws_storagegateway_cached_iscsi_volume(rname, volume_size_in_bytes, gateway_arn, target_name, network_interface_id, id=null, source_volume_arn=null, snapshot_id=null):: {
      volume_size_in_bytes: volume_size_in_bytes,
      gateway_arn: gateway_arn,
      target_name: target_name,
      network_interface_id: network_interface_id,
      [if id != null then 'id']: id,
      [if source_volume_arn != null then 'source_volume_arn']: source_volume_arn,
      [if snapshot_id != null then 'snapshot_id']: snapshot_id,
      rname:: rname,
      lun_number:: '${aws_storagegateway_cached_iscsi_volume.%s.lun_number}' % rname,
      network_interface_port:: '${aws_storagegateway_cached_iscsi_volume.%s.network_interface_port}' % rname,
      target_arn:: '${aws_storagegateway_cached_iscsi_volume.%s.target_arn}' % rname,
      volume_arn:: '${aws_storagegateway_cached_iscsi_volume.%s.volume_arn}' % rname,
      volume_id:: '${aws_storagegateway_cached_iscsi_volume.%s.volume_id}' % rname,
      arn:: '${aws_storagegateway_cached_iscsi_volume.%s.arn}' % rname,
      chap_enabled:: '${aws_storagegateway_cached_iscsi_volume.%s.chap_enabled}' % rname,
    },
    // aws_config_config_rule - https://www.terraform.io/docs/providers/aws/r/config_config_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/config_config_rule.html#name.
    // @param source (required) source block.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/config_config_rule.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/config_config_rule.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_config_rule.html#id.
    // @param input_parameters (optional) https://www.terraform.io/docs/providers/aws/r/config_config_rule.html#input_parameters.
    // @param maximum_execution_frequency (optional) https://www.terraform.io/docs/providers/aws/r/config_config_rule.html#maximum_execution_frequency.
    // @param scope (optional) scope block.
    aws_config_config_rule(rname, name, source, tags=null, description=null, id=null, input_parameters=null, maximum_execution_frequency=null, scope={}):: {
      name: name,
      source: source,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if input_parameters != null then 'input_parameters']: input_parameters,
      [if maximum_execution_frequency != null then 'maximum_execution_frequency']: maximum_execution_frequency,
      [if scope != null then 'scope']: scope,
      rname:: rname,
      rule_id:: '${aws_config_config_rule.%s.rule_id}' % rname,
      arn:: '${aws_config_config_rule.%s.arn}' % rname,
    },
    // aws_s3_bucket_inventory - https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html#bucket.
    // @param included_object_versions (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html#included_object_versions.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html#name.
    // @param schedule (required) schedule block.
    // @param destination (required) destination block.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html#id.
    // @param optional_fields (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_inventory.html#optional_fields.
    // @param filter (optional) filter block.
    aws_s3_bucket_inventory(rname, bucket, included_object_versions, name, schedule, destination, enabled=null, id=null, optional_fields=null, filter={}):: {
      bucket: bucket,
      included_object_versions: included_object_versions,
      name: name,
      schedule: schedule,
      destination: destination,
      [if enabled != null then 'enabled']: enabled,
      [if id != null then 'id']: id,
      [if optional_fields != null then 'optional_fields']: optional_fields,
      [if filter != null then 'filter']: filter,
      rname:: rname,
    },
    // aws_s3_bucket_metric - https://www.terraform.io/docs/providers/aws/r/s3_bucket_metric.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_metric.html#bucket.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_metric.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_metric.html#id.
    // @param filter (optional) filter block.
    aws_s3_bucket_metric(rname, bucket, name, id=null, filter={}):: {
      bucket: bucket,
      name: name,
      [if id != null then 'id']: id,
      [if filter != null then 'filter']: filter,
      rname:: rname,
    },
    // aws_vpc_peering_connection - https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param peer_vpc_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#peer_vpc_id.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#vpc_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#tags.
    // @param auto_accept (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#auto_accept.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#id.
    // @param peer_owner_id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#peer_owner_id.
    // @param peer_region (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection.html#peer_region.
    // @param accepter (optional) accepter block.
    // @param requester (optional) requester block.
    // @param timeouts (optional) timeouts block.
    aws_vpc_peering_connection(rname, peer_vpc_id, vpc_id, tags=null, auto_accept=null, id=null, peer_owner_id=null, peer_region=null, accepter={}, requester={}, timeouts={}):: {
      peer_vpc_id: peer_vpc_id,
      vpc_id: vpc_id,
      [if tags != null then 'tags']: tags,
      [if auto_accept != null then 'auto_accept']: auto_accept,
      [if id != null then 'id']: id,
      [if peer_owner_id != null then 'peer_owner_id']: peer_owner_id,
      [if peer_region != null then 'peer_region']: peer_region,
      [if accepter != null then 'accepter']: accepter,
      [if requester != null then 'requester']: requester,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      accept_status:: '${aws_vpc_peering_connection.%s.accept_status}' % rname,
    },
    // aws_redshift_subnet_group - https://www.terraform.io/docs/providers/aws/r/redshift_subnet_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/redshift_subnet_group.html#subnet_ids.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/redshift_subnet_group.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/redshift_subnet_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/redshift_subnet_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_subnet_group.html#id.
    aws_redshift_subnet_group(rname, subnet_ids, name, tags=null, description=null, id=null):: {
      subnet_ids: subnet_ids,
      name: name,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_redshift_subnet_group.%s.arn}' % rname,
    },
    // aws_route53_record - https://www.terraform.io/docs/providers/aws/r/route53_record.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/route53_record.html#type.
    // @param zone_id (required) https://www.terraform.io/docs/providers/aws/r/route53_record.html#zone_id.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/route53_record.html#name.
    // @param set_identifier (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#set_identifier.
    // @param multivalue_answer_routing_policy (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#multivalue_answer_routing_policy.
    // @param health_check_id (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#health_check_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#id.
    // @param records (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#records.
    // @param ttl (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#ttl.
    // @param allow_overwrite (optional) https://www.terraform.io/docs/providers/aws/r/route53_record.html#allow_overwrite.
    // @param alias (optional) alias block.
    // @param failover_routing_policy (optional) failover_routing_policy block.
    // @param geolocation_routing_policy (optional) geolocation_routing_policy block.
    // @param latency_routing_policy (optional) latency_routing_policy block.
    // @param weighted_routing_policy (optional) weighted_routing_policy block.
    aws_route53_record(rname, type, zone_id, name, set_identifier=null, multivalue_answer_routing_policy=null, health_check_id=null, id=null, records=null, ttl=null, allow_overwrite=null, alias={}, failover_routing_policy={}, geolocation_routing_policy={}, latency_routing_policy={}, weighted_routing_policy={}):: {
      type: type,
      zone_id: zone_id,
      name: name,
      [if set_identifier != null then 'set_identifier']: set_identifier,
      [if multivalue_answer_routing_policy != null then 'multivalue_answer_routing_policy']: multivalue_answer_routing_policy,
      [if health_check_id != null then 'health_check_id']: health_check_id,
      [if id != null then 'id']: id,
      [if records != null then 'records']: records,
      [if ttl != null then 'ttl']: ttl,
      [if allow_overwrite != null then 'allow_overwrite']: allow_overwrite,
      [if alias != null then 'alias']: alias,
      [if failover_routing_policy != null then 'failover_routing_policy']: failover_routing_policy,
      [if geolocation_routing_policy != null then 'geolocation_routing_policy']: geolocation_routing_policy,
      [if latency_routing_policy != null then 'latency_routing_policy']: latency_routing_policy,
      [if weighted_routing_policy != null then 'weighted_routing_policy']: weighted_routing_policy,
      rname:: rname,
      fqdn:: '${aws_route53_record.%s.fqdn}' % rname,
    },
    // aws_snapshot_create_volume_permission - https://www.terraform.io/docs/providers/aws/r/snapshot_create_volume_permission.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param account_id (required) https://www.terraform.io/docs/providers/aws/r/snapshot_create_volume_permission.html#account_id.
    // @param snapshot_id (required) https://www.terraform.io/docs/providers/aws/r/snapshot_create_volume_permission.html#snapshot_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/snapshot_create_volume_permission.html#id.
    aws_snapshot_create_volume_permission(rname, account_id, snapshot_id, id=null):: {
      account_id: account_id,
      snapshot_id: snapshot_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_api_gateway_integration_response - https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param resource_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#resource_id.
    // @param http_method (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#http_method.
    // @param rest_api_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#rest_api_id.
    // @param status_code (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#status_code.
    // @param content_handling (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#content_handling.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#id.
    // @param response_parameters_in_json (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#response_parameters_in_json.
    // @param response_templates (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#response_templates.
    // @param selection_pattern (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#selection_pattern.
    // @param response_parameters (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_integration_response.html#response_parameters.
    aws_api_gateway_integration_response(rname, resource_id, http_method, rest_api_id, status_code, content_handling=null, id=null, response_parameters_in_json=null, response_templates=null, selection_pattern=null, response_parameters=null):: {
      resource_id: resource_id,
      http_method: http_method,
      rest_api_id: rest_api_id,
      status_code: status_code,
      [if content_handling != null then 'content_handling']: content_handling,
      [if id != null then 'id']: id,
      [if response_parameters_in_json != null then 'response_parameters_in_json']: response_parameters_in_json,
      [if response_templates != null then 'response_templates']: response_templates,
      [if selection_pattern != null then 'selection_pattern']: selection_pattern,
      [if response_parameters != null then 'response_parameters']: response_parameters,
      rname:: rname,
    },
    // aws_iam_group_policy - https://www.terraform.io/docs/providers/aws/r/iam_group_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/iam_group_policy.html#policy.
    // @param group (required) https://www.terraform.io/docs/providers/aws/r/iam_group_policy.html#group.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_group_policy.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/iam_group_policy.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/iam_group_policy.html#name_prefix.
    aws_iam_group_policy(rname, policy, group, id=null, name=null, name_prefix=null):: {
      policy: policy,
      group: group,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      rname:: rname,
    },
    // aws_iam_policy_attachment - https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy_arn (required) https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html#policy_arn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html#name.
    // @param roles (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html#roles.
    // @param users (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html#users.
    // @param groups (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html#groups.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_policy_attachment.html#id.
    aws_iam_policy_attachment(rname, policy_arn, name, roles=null, users=null, groups=null, id=null):: {
      policy_arn: policy_arn,
      name: name,
      [if roles != null then 'roles']: roles,
      [if users != null then 'users']: users,
      [if groups != null then 'groups']: groups,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_waf_rule - https://www.terraform.io/docs/providers/aws/r/waf_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/waf_rule.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_rule.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_rule.html#id.
    // @param predicates (optional) predicates block.
    aws_waf_rule(rname, metric_name, name, id=null, predicates={}):: {
      metric_name: metric_name,
      name: name,
      [if id != null then 'id']: id,
      [if predicates != null then 'predicates']: predicates,
      rname:: rname,
    },
    // aws_wafregional_byte_match_set - https://www.terraform.io/docs/providers/aws/r/wafregional_byte_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_byte_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_byte_match_set.html#id.
    // @param byte_match_tuple (optional) byte_match_tuple block.
    // @param byte_match_tuples (optional) byte_match_tuples block.
    aws_wafregional_byte_match_set(rname, name, id=null, byte_match_tuple={}, byte_match_tuples={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if byte_match_tuple != null then 'byte_match_tuple']: byte_match_tuple,
      [if byte_match_tuples != null then 'byte_match_tuples']: byte_match_tuples,
      rname:: rname,
    },
    // aws_wafregional_regex_match_set - https://www.terraform.io/docs/providers/aws/r/wafregional_regex_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_regex_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_regex_match_set.html#id.
    // @param regex_match_tuple (optional) regex_match_tuple block.
    aws_wafregional_regex_match_set(rname, name, id=null, regex_match_tuple={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if regex_match_tuple != null then 'regex_match_tuple']: regex_match_tuple,
      rname:: rname,
    },
    // aws_egress_only_internet_gateway - https://www.terraform.io/docs/providers/aws/r/egress_only_internet_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/egress_only_internet_gateway.html#vpc_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/egress_only_internet_gateway.html#id.
    aws_egress_only_internet_gateway(rname, vpc_id, id=null):: {
      vpc_id: vpc_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_lightsail_domain - https://www.terraform.io/docs/providers/aws/r/lightsail_domain.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain_name (required) https://www.terraform.io/docs/providers/aws/r/lightsail_domain.html#domain_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_domain.html#id.
    aws_lightsail_domain(rname, domain_name, id=null):: {
      domain_name: domain_name,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_lightsail_domain.%s.arn}' % rname,
    },
    // aws_lightsail_static_ip - https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lightsail_static_ip.html#id.
    aws_lightsail_static_ip(rname, name, id=null):: {
      name: name,
      [if id != null then 'id']: id,
      rname:: rname,
      support_code:: '${aws_lightsail_static_ip.%s.support_code}' % rname,
      arn:: '${aws_lightsail_static_ip.%s.arn}' % rname,
      ip_address:: '${aws_lightsail_static_ip.%s.ip_address}' % rname,
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
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      rname:: rname,
    },
    // aws_glue_crawler - https://www.terraform.io/docs/providers/aws/r/glue_crawler.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param database_name (required) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#database_name.
    // @param role (required) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#role.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#name.
    // @param security_configuration (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#security_configuration.
    // @param classifiers (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#classifiers.
    // @param configuration (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#configuration.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#id.
    // @param schedule (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#schedule.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#description.
    // @param table_prefix (optional) https://www.terraform.io/docs/providers/aws/r/glue_crawler.html#table_prefix.
    // @param catalog_target (optional) catalog_target block.
    // @param dynamodb_target (optional) dynamodb_target block.
    // @param jdbc_target (optional) jdbc_target block.
    // @param s3_target (optional) s3_target block.
    // @param schema_change_policy (optional) schema_change_policy block.
    aws_glue_crawler(rname, database_name, role, name, security_configuration=null, classifiers=null, configuration=null, id=null, schedule=null, description=null, table_prefix=null, catalog_target={}, dynamodb_target={}, jdbc_target={}, s3_target={}, schema_change_policy={}):: {
      database_name: database_name,
      role: role,
      name: name,
      [if security_configuration != null then 'security_configuration']: security_configuration,
      [if classifiers != null then 'classifiers']: classifiers,
      [if configuration != null then 'configuration']: configuration,
      [if id != null then 'id']: id,
      [if schedule != null then 'schedule']: schedule,
      [if description != null then 'description']: description,
      [if table_prefix != null then 'table_prefix']: table_prefix,
      [if catalog_target != null then 'catalog_target']: catalog_target,
      [if dynamodb_target != null then 'dynamodb_target']: dynamodb_target,
      [if jdbc_target != null then 'jdbc_target']: jdbc_target,
      [if s3_target != null then 's3_target']: s3_target,
      [if schema_change_policy != null then 'schema_change_policy']: schema_change_policy,
      rname:: rname,
      arn:: '${aws_glue_crawler.%s.arn}' % rname,
    },
    // aws_config_delivery_channel - https://www.terraform.io/docs/providers/aws/r/config_delivery_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param s3_bucket_name (required) https://www.terraform.io/docs/providers/aws/r/config_delivery_channel.html#s3_bucket_name.
    // @param s3_key_prefix (optional) https://www.terraform.io/docs/providers/aws/r/config_delivery_channel.html#s3_key_prefix.
    // @param sns_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/config_delivery_channel.html#sns_topic_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_delivery_channel.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/config_delivery_channel.html#name.
    // @param snapshot_delivery_properties (optional) snapshot_delivery_properties block.
    aws_config_delivery_channel(rname, s3_bucket_name, s3_key_prefix=null, sns_topic_arn=null, id=null, name=null, snapshot_delivery_properties={}):: {
      s3_bucket_name: s3_bucket_name,
      [if s3_key_prefix != null then 's3_key_prefix']: s3_key_prefix,
      [if sns_topic_arn != null then 'sns_topic_arn']: sns_topic_arn,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if snapshot_delivery_properties != null then 'snapshot_delivery_properties']: snapshot_delivery_properties,
      rname:: rname,
    },
    // aws_dms_endpoint - https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param engine_name (required) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#engine_name.
    // @param endpoint_id (required) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#endpoint_id.
    // @param endpoint_type (required) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#endpoint_type.
    // @param certificate_arn (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#certificate_arn.
    // @param database_name (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#database_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#tags.
    // @param server_name (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#server_name.
    // @param username (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#username.
    // @param password (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#password.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#port.
    // @param service_access_role (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#service_access_role.
    // @param extra_connection_attributes (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#extra_connection_attributes.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#id.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#kms_key_arn.
    // @param ssl_mode (optional) https://www.terraform.io/docs/providers/aws/r/dms_endpoint.html#ssl_mode.
    // @param mongodb_settings (optional) mongodb_settings block.
    // @param s3_settings (optional) s3_settings block.
    aws_dms_endpoint(rname, engine_name, endpoint_id, endpoint_type, certificate_arn=null, database_name=null, tags=null, server_name=null, username=null, password=null, port=null, service_access_role=null, extra_connection_attributes=null, id=null, kms_key_arn=null, ssl_mode=null, mongodb_settings={}, s3_settings={}):: {
      engine_name: engine_name,
      endpoint_id: endpoint_id,
      endpoint_type: endpoint_type,
      [if certificate_arn != null then 'certificate_arn']: certificate_arn,
      [if database_name != null then 'database_name']: database_name,
      [if tags != null then 'tags']: tags,
      [if server_name != null then 'server_name']: server_name,
      [if username != null then 'username']: username,
      [if password != null then 'password']: password,
      [if port != null then 'port']: port,
      [if service_access_role != null then 'service_access_role']: service_access_role,
      [if extra_connection_attributes != null then 'extra_connection_attributes']: extra_connection_attributes,
      [if id != null then 'id']: id,
      [if kms_key_arn != null then 'kms_key_arn']: kms_key_arn,
      [if ssl_mode != null then 'ssl_mode']: ssl_mode,
      [if mongodb_settings != null then 'mongodb_settings']: mongodb_settings,
      [if s3_settings != null then 's3_settings']: s3_settings,
      rname:: rname,
      endpoint_arn:: '${aws_dms_endpoint.%s.endpoint_arn}' % rname,
    },
    // aws_dx_hosted_public_virtual_interface_accepter - https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface_accepter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param virtual_interface_id (required) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface_accepter.html#virtual_interface_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface_accepter.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_hosted_public_virtual_interface_accepter.html#tags.
    // @param timeouts (optional) timeouts block.
    aws_dx_hosted_public_virtual_interface_accepter(rname, virtual_interface_id, id=null, tags=null, timeouts={}):: {
      virtual_interface_id: virtual_interface_id,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_dx_hosted_public_virtual_interface_accepter.%s.arn}' % rname,
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
      [if id != null then 'id']: id,
      [if policy_names != null then 'policy_names']: policy_names,
      rname:: rname,
    },
    // aws_securityhub_product_subscription - https://www.terraform.io/docs/providers/aws/r/securityhub_product_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param product_arn (required) https://www.terraform.io/docs/providers/aws/r/securityhub_product_subscription.html#product_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/securityhub_product_subscription.html#id.
    aws_securityhub_product_subscription(rname, product_arn, id=null):: {
      product_arn: product_arn,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_securityhub_product_subscription.%s.arn}' % rname,
    },
    // aws_cloudfront_distribution - https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param enabled (required) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#enabled.
    // @param origin (required) origin block.
    // @param restrictions (required) restrictions block.
    // @param default_cache_behavior (required) default_cache_behavior block.
    // @param viewer_certificate (required) viewer_certificate block.
    // @param default_root_object (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#default_root_object.
    // @param wait_for_deployment (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#wait_for_deployment.
    // @param web_acl_id (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#web_acl_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#id.
    // @param price_class (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#price_class.
    // @param retain_on_delete (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#retain_on_delete.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#tags.
    // @param aliases (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#aliases.
    // @param comment (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#comment.
    // @param http_version (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#http_version.
    // @param is_ipv6_enabled (optional) https://www.terraform.io/docs/providers/aws/r/cloudfront_distribution.html#is_ipv6_enabled.
    // @param cache_behavior (optional) cache_behavior block.
    // @param ordered_cache_behavior (optional) ordered_cache_behavior block.
    // @param custom_error_response (optional) custom_error_response block.
    // @param logging_config (optional) logging_config block.
    // @param origin_group (optional) origin_group block.
    aws_cloudfront_distribution(rname, enabled, origin, restrictions, default_cache_behavior, viewer_certificate, default_root_object=null, wait_for_deployment=null, web_acl_id=null, id=null, price_class=null, retain_on_delete=null, tags=null, aliases=null, comment=null, http_version=null, is_ipv6_enabled=null, cache_behavior={}, ordered_cache_behavior={}, custom_error_response={}, logging_config={}, origin_group={}):: {
      enabled: enabled,
      origin: origin,
      restrictions: restrictions,
      default_cache_behavior: default_cache_behavior,
      viewer_certificate: viewer_certificate,
      [if default_root_object != null then 'default_root_object']: default_root_object,
      [if wait_for_deployment != null then 'wait_for_deployment']: wait_for_deployment,
      [if web_acl_id != null then 'web_acl_id']: web_acl_id,
      [if id != null then 'id']: id,
      [if price_class != null then 'price_class']: price_class,
      [if retain_on_delete != null then 'retain_on_delete']: retain_on_delete,
      [if tags != null then 'tags']: tags,
      [if aliases != null then 'aliases']: aliases,
      [if comment != null then 'comment']: comment,
      [if http_version != null then 'http_version']: http_version,
      [if is_ipv6_enabled != null then 'is_ipv6_enabled']: is_ipv6_enabled,
      [if cache_behavior != null then 'cache_behavior']: cache_behavior,
      [if ordered_cache_behavior != null then 'ordered_cache_behavior']: ordered_cache_behavior,
      [if custom_error_response != null then 'custom_error_response']: custom_error_response,
      [if logging_config != null then 'logging_config']: logging_config,
      [if origin_group != null then 'origin_group']: origin_group,
      rname:: rname,
      last_modified_time:: '${aws_cloudfront_distribution.%s.last_modified_time}' % rname,
      status:: '${aws_cloudfront_distribution.%s.status}' % rname,
      domain_name:: '${aws_cloudfront_distribution.%s.domain_name}' % rname,
      etag:: '${aws_cloudfront_distribution.%s.etag}' % rname,
      active_trusted_signers:: '${aws_cloudfront_distribution.%s.active_trusted_signers}' % rname,
      arn:: '${aws_cloudfront_distribution.%s.arn}' % rname,
      caller_reference:: '${aws_cloudfront_distribution.%s.caller_reference}' % rname,
      hosted_zone_id:: '${aws_cloudfront_distribution.%s.hosted_zone_id}' % rname,
      in_progress_validation_batches:: '${aws_cloudfront_distribution.%s.in_progress_validation_batches}' % rname,
    },
    // aws_elasticache_parameter_group - https://www.terraform.io/docs/providers/aws/r/elasticache_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/elasticache_parameter_group.html#family.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/elasticache_parameter_group.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_parameter_group.html#id.
    // @param parameter (optional) parameter block.
    aws_elasticache_parameter_group(rname, family, name, description=null, id=null, parameter={}):: {
      family: family,
      name: name,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if parameter != null then 'parameter']: parameter,
      rname:: rname,
    },
    // aws_iot_policy_attachment - https://www.terraform.io/docs/providers/aws/r/iot_policy_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/iot_policy_attachment.html#policy.
    // @param target (required) https://www.terraform.io/docs/providers/aws/r/iot_policy_attachment.html#target.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_policy_attachment.html#id.
    aws_iot_policy_attachment(rname, policy, target, id=null):: {
      policy: policy,
      target: target,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_ssm_parameter - https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#name.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#type.
    // @param value (required) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#value.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#id.
    // @param key_id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#key_id.
    // @param allowed_pattern (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#allowed_pattern.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#description.
    // @param overwrite (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#overwrite.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#tags.
    // @param tier (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#tier.
    // @param arn (optional) https://www.terraform.io/docs/providers/aws/r/ssm_parameter.html#arn.
    aws_ssm_parameter(rname, name, type, value, id=null, key_id=null, allowed_pattern=null, description=null, overwrite=null, tags=null, tier=null, arn=null):: {
      name: name,
      type: type,
      value: value,
      [if id != null then 'id']: id,
      [if key_id != null then 'key_id']: key_id,
      [if allowed_pattern != null then 'allowed_pattern']: allowed_pattern,
      [if description != null then 'description']: description,
      [if overwrite != null then 'overwrite']: overwrite,
      [if tags != null then 'tags']: tags,
      [if tier != null then 'tier']: tier,
      [if arn != null then 'arn']: arn,
      rname:: rname,
      version:: '${aws_ssm_parameter.%s.version}' % rname,
    },
    // aws_iam_group - https://www.terraform.io/docs/providers/aws/r/iam_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iam_group.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_group.html#id.
    // @param path (optional) https://www.terraform.io/docs/providers/aws/r/iam_group.html#path.
    aws_iam_group(rname, name, id=null, path=null):: {
      name: name,
      [if id != null then 'id']: id,
      [if path != null then 'path']: path,
      rname:: rname,
      arn:: '${aws_iam_group.%s.arn}' % rname,
      unique_id:: '${aws_iam_group.%s.unique_id}' % rname,
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
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_inspector_assessment_template.%s.arn}' % rname,
    },
    // aws_security_group - https://www.terraform.io/docs/providers/aws/r/security_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#id.
    // @param ingress (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#ingress.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#name_prefix.
    // @param revoke_rules_on_delete (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#revoke_rules_on_delete.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#tags.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#vpc_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#description.
    // @param egress (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#egress.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/security_group.html#name.
    // @param timeouts (optional) timeouts block.
    aws_security_group(rname, id=null, ingress=null, name_prefix=null, revoke_rules_on_delete=null, tags=null, vpc_id=null, description=null, egress=null, name=null, timeouts={}):: {
      [if id != null then 'id']: id,
      [if ingress != null then 'ingress']: ingress,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if revoke_rules_on_delete != null then 'revoke_rules_on_delete']: revoke_rules_on_delete,
      [if tags != null then 'tags']: tags,
      [if vpc_id != null then 'vpc_id']: vpc_id,
      [if description != null then 'description']: description,
      [if egress != null then 'egress']: egress,
      [if name != null then 'name']: name,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      owner_id:: '${aws_security_group.%s.owner_id}' % rname,
      arn:: '${aws_security_group.%s.arn}' % rname,
    },
    // aws_neptune_parameter_group - https://www.terraform.io/docs/providers/aws/r/neptune_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/neptune_parameter_group.html#family.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/neptune_parameter_group.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/neptune_parameter_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/neptune_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_parameter_group.html#id.
    // @param parameter (optional) parameter block.
    aws_neptune_parameter_group(rname, family, name, tags=null, description=null, id=null, parameter={}):: {
      family: family,
      name: name,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if parameter != null then 'parameter']: parameter,
      rname:: rname,
      arn:: '${aws_neptune_parameter_group.%s.arn}' % rname,
    },
    // aws_waf_xss_match_set - https://www.terraform.io/docs/providers/aws/r/waf_xss_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_xss_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_xss_match_set.html#id.
    // @param xss_match_tuples (optional) xss_match_tuples block.
    aws_waf_xss_match_set(rname, name, id=null, xss_match_tuples={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if xss_match_tuples != null then 'xss_match_tuples']: xss_match_tuples,
      rname:: rname,
    },
    // aws_wafregional_xss_match_set - https://www.terraform.io/docs/providers/aws/r/wafregional_xss_match_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_xss_match_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_xss_match_set.html#id.
    // @param xss_match_tuple (optional) xss_match_tuple block.
    aws_wafregional_xss_match_set(rname, name, id=null, xss_match_tuple={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if xss_match_tuple != null then 'xss_match_tuple']: xss_match_tuple,
      rname:: rname,
    },
    // aws_cognito_user_pool_client - https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#name.
    // @param user_pool_id (required) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#user_pool_id.
    // @param callback_urls (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#callback_urls.
    // @param logout_urls (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#logout_urls.
    // @param supported_identity_providers (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#supported_identity_providers.
    // @param allowed_oauth_scopes (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#allowed_oauth_scopes.
    // @param explicit_auth_flows (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#explicit_auth_flows.
    // @param generate_secret (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#generate_secret.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#id.
    // @param default_redirect_uri (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#default_redirect_uri.
    // @param allowed_oauth_flows_user_pool_client (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#allowed_oauth_flows_user_pool_client.
    // @param read_attributes (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#read_attributes.
    // @param refresh_token_validity (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#refresh_token_validity.
    // @param write_attributes (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#write_attributes.
    // @param allowed_oauth_flows (optional) https://www.terraform.io/docs/providers/aws/r/cognito_user_pool_client.html#allowed_oauth_flows.
    aws_cognito_user_pool_client(rname, name, user_pool_id, callback_urls=null, logout_urls=null, supported_identity_providers=null, allowed_oauth_scopes=null, explicit_auth_flows=null, generate_secret=null, id=null, default_redirect_uri=null, allowed_oauth_flows_user_pool_client=null, read_attributes=null, refresh_token_validity=null, write_attributes=null, allowed_oauth_flows=null):: {
      name: name,
      user_pool_id: user_pool_id,
      [if callback_urls != null then 'callback_urls']: callback_urls,
      [if logout_urls != null then 'logout_urls']: logout_urls,
      [if supported_identity_providers != null then 'supported_identity_providers']: supported_identity_providers,
      [if allowed_oauth_scopes != null then 'allowed_oauth_scopes']: allowed_oauth_scopes,
      [if explicit_auth_flows != null then 'explicit_auth_flows']: explicit_auth_flows,
      [if generate_secret != null then 'generate_secret']: generate_secret,
      [if id != null then 'id']: id,
      [if default_redirect_uri != null then 'default_redirect_uri']: default_redirect_uri,
      [if allowed_oauth_flows_user_pool_client != null then 'allowed_oauth_flows_user_pool_client']: allowed_oauth_flows_user_pool_client,
      [if read_attributes != null then 'read_attributes']: read_attributes,
      [if refresh_token_validity != null then 'refresh_token_validity']: refresh_token_validity,
      [if write_attributes != null then 'write_attributes']: write_attributes,
      [if allowed_oauth_flows != null then 'allowed_oauth_flows']: allowed_oauth_flows,
      rname:: rname,
      client_secret:: '${aws_cognito_user_pool_client.%s.client_secret}' % rname,
    },
    // aws_iam_access_key - https://www.terraform.io/docs/providers/aws/r/iam_access_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param user (required) https://www.terraform.io/docs/providers/aws/r/iam_access_key.html#user.
    // @param pgp_key (optional) https://www.terraform.io/docs/providers/aws/r/iam_access_key.html#pgp_key.
    // @param status (optional) https://www.terraform.io/docs/providers/aws/r/iam_access_key.html#status.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_access_key.html#id.
    aws_iam_access_key(rname, user, pgp_key=null, status=null, id=null):: {
      user: user,
      [if pgp_key != null then 'pgp_key']: pgp_key,
      [if status != null then 'status']: status,
      [if id != null then 'id']: id,
      rname:: rname,
      key_fingerprint:: '${aws_iam_access_key.%s.key_fingerprint}' % rname,
      secret:: '${aws_iam_access_key.%s.secret}' % rname,
      ses_smtp_password:: '${aws_iam_access_key.%s.ses_smtp_password}' % rname,
      encrypted_secret:: '${aws_iam_access_key.%s.encrypted_secret}' % rname,
    },
    // aws_iot_topic_rule - https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param enabled (required) https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html#enabled.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html#name.
    // @param sql (required) https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html#sql.
    // @param sql_version (required) https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html#sql_version.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iot_topic_rule.html#id.
    // @param republish (optional) republish block.
    // @param s3 (optional) s3 block.
    // @param sns (optional) sns block.
    // @param cloudwatch_metric (optional) cloudwatch_metric block.
    // @param elasticsearch (optional) elasticsearch block.
    // @param lambda (optional) lambda block.
    // @param kinesis (optional) kinesis block.
    // @param sqs (optional) sqs block.
    // @param cloudwatch_alarm (optional) cloudwatch_alarm block.
    // @param dynamodb (optional) dynamodb block.
    // @param firehose (optional) firehose block.
    aws_iot_topic_rule(rname, enabled, name, sql, sql_version, description=null, id=null, republish={}, s3={}, sns={}, cloudwatch_metric={}, elasticsearch={}, lambda={}, kinesis={}, sqs={}, cloudwatch_alarm={}, dynamodb={}, firehose={}):: {
      enabled: enabled,
      name: name,
      sql: sql,
      sql_version: sql_version,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if republish != null then 'republish']: republish,
      [if s3 != null then 's3']: s3,
      [if sns != null then 'sns']: sns,
      [if cloudwatch_metric != null then 'cloudwatch_metric']: cloudwatch_metric,
      [if elasticsearch != null then 'elasticsearch']: elasticsearch,
      [if lambda != null then 'lambda']: lambda,
      [if kinesis != null then 'kinesis']: kinesis,
      [if sqs != null then 'sqs']: sqs,
      [if cloudwatch_alarm != null then 'cloudwatch_alarm']: cloudwatch_alarm,
      [if dynamodb != null then 'dynamodb']: dynamodb,
      [if firehose != null then 'firehose']: firehose,
      rname:: rname,
      arn:: '${aws_iot_topic_rule.%s.arn}' % rname,
    },
    // aws_dx_connection - https://www.terraform.io/docs/providers/aws/r/dx_connection.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param location (required) https://www.terraform.io/docs/providers/aws/r/dx_connection.html#location.
    // @param bandwidth (required) https://www.terraform.io/docs/providers/aws/r/dx_connection.html#bandwidth.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/dx_connection.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dx_connection.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dx_connection.html#tags.
    aws_dx_connection(rname, location, bandwidth, name, id=null, tags=null):: {
      location: location,
      bandwidth: bandwidth,
      name: name,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      jumbo_frame_capable:: '${aws_dx_connection.%s.jumbo_frame_capable}' % rname,
      aws_device:: '${aws_dx_connection.%s.aws_device}' % rname,
      has_logical_redundancy:: '${aws_dx_connection.%s.has_logical_redundancy}' % rname,
      arn:: '${aws_dx_connection.%s.arn}' % rname,
    },
    // aws_appmesh_virtual_router - https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_router.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param mesh_name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_router.html#mesh_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_router.html#name.
    // @param spec (required) spec block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_router.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_router.html#tags.
    aws_appmesh_virtual_router(rname, mesh_name, name, spec, id=null, tags=null):: {
      mesh_name: mesh_name,
      name: name,
      spec: spec,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      arn:: '${aws_appmesh_virtual_router.%s.arn}' % rname,
      created_date:: '${aws_appmesh_virtual_router.%s.created_date}' % rname,
      last_updated_date:: '${aws_appmesh_virtual_router.%s.last_updated_date}' % rname,
    },
    // aws_appsync_function - https://www.terraform.io/docs/providers/aws/r/appsync_function.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param api_id (required) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#api_id.
    // @param response_mapping_template (required) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#response_mapping_template.
    // @param data_source (required) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#data_source.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#name.
    // @param request_mapping_template (required) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#request_mapping_template.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#id.
    // @param function_version (optional) https://www.terraform.io/docs/providers/aws/r/appsync_function.html#function_version.
    aws_appsync_function(rname, api_id, response_mapping_template, data_source, name, request_mapping_template, description=null, id=null, function_version=null):: {
      api_id: api_id,
      response_mapping_template: response_mapping_template,
      data_source: data_source,
      name: name,
      request_mapping_template: request_mapping_template,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if function_version != null then 'function_version']: function_version,
      rname:: rname,
      arn:: '${aws_appsync_function.%s.arn}' % rname,
      function_id:: '${aws_appsync_function.%s.function_id}' % rname,
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
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_batch_job_queue.%s.arn}' % rname,
    },
    // aws_glue_classifier - https://www.terraform.io/docs/providers/aws/r/glue_classifier.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_classifier.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_classifier.html#id.
    // @param grok_classifier (optional) grok_classifier block.
    // @param json_classifier (optional) json_classifier block.
    // @param xml_classifier (optional) xml_classifier block.
    aws_glue_classifier(rname, name, id=null, grok_classifier={}, json_classifier={}, xml_classifier={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if grok_classifier != null then 'grok_classifier']: grok_classifier,
      [if json_classifier != null then 'json_classifier']: json_classifier,
      [if xml_classifier != null then 'xml_classifier']: xml_classifier,
      rname:: rname,
    },
    // aws_ami_copy - https://www.terraform.io/docs/providers/aws/r/ami_copy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#name.
    // @param source_ami_id (required) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#source_ami_id.
    // @param source_ami_region (required) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#source_ami_region.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#description.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#kms_key_id.
    // @param encrypted (optional) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#encrypted.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ami_copy.html#id.
    // @param ebs_block_device (optional) ebs_block_device block.
    // @param ephemeral_block_device (optional) ephemeral_block_device block.
    // @param timeouts (optional) timeouts block.
    aws_ami_copy(rname, name, source_ami_id, source_ami_region, tags=null, description=null, kms_key_id=null, encrypted=null, id=null, ebs_block_device={}, ephemeral_block_device={}, timeouts={}):: {
      name: name,
      source_ami_id: source_ami_id,
      source_ami_region: source_ami_region,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if encrypted != null then 'encrypted']: encrypted,
      [if id != null then 'id']: id,
      [if ebs_block_device != null then 'ebs_block_device']: ebs_block_device,
      [if ephemeral_block_device != null then 'ephemeral_block_device']: ephemeral_block_device,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      image_location:: '${aws_ami_copy.%s.image_location}' % rname,
      ramdisk_id:: '${aws_ami_copy.%s.ramdisk_id}' % rname,
      sriov_net_support:: '${aws_ami_copy.%s.sriov_net_support}' % rname,
      root_device_name:: '${aws_ami_copy.%s.root_device_name}' % rname,
      root_snapshot_id:: '${aws_ami_copy.%s.root_snapshot_id}' % rname,
      architecture:: '${aws_ami_copy.%s.architecture}' % rname,
      ena_support:: '${aws_ami_copy.%s.ena_support}' % rname,
      kernel_id:: '${aws_ami_copy.%s.kernel_id}' % rname,
      virtualization_type:: '${aws_ami_copy.%s.virtualization_type}' % rname,
      manage_ebs_snapshots:: '${aws_ami_copy.%s.manage_ebs_snapshots}' % rname,
    },
    // aws_cloudwatch_log_stream - https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_stream.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param log_group_name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_stream.html#log_group_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_stream.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_stream.html#id.
    aws_cloudwatch_log_stream(rname, log_group_name, name, id=null):: {
      log_group_name: log_group_name,
      name: name,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_cloudwatch_log_stream.%s.arn}' % rname,
    },
    // aws_ecr_repository - https://www.terraform.io/docs/providers/aws/r/ecr_repository.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ecr_repository.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ecr_repository.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ecr_repository.html#id.
    // @param image_tag_mutability (optional) https://www.terraform.io/docs/providers/aws/r/ecr_repository.html#image_tag_mutability.
    // @param timeouts (optional) timeouts block.
    aws_ecr_repository(rname, name, tags=null, id=null, image_tag_mutability=null, timeouts={}):: {
      name: name,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if image_tag_mutability != null then 'image_tag_mutability']: image_tag_mutability,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      registry_id:: '${aws_ecr_repository.%s.registry_id}' % rname,
      repository_url:: '${aws_ecr_repository.%s.repository_url}' % rname,
      arn:: '${aws_ecr_repository.%s.arn}' % rname,
    },
    // aws_codebuild_project - https://www.terraform.io/docs/providers/aws/r/codebuild_project.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#name.
    // @param service_role (required) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#service_role.
    // @param source (required) source block.
    // @param artifacts (required) artifacts block.
    // @param environment (required) environment block.
    // @param build_timeout (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#build_timeout.
    // @param encryption_key (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#encryption_key.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#tags.
    // @param badge_enabled (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#badge_enabled.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/codebuild_project.html#id.
    // @param vpc_config (optional) vpc_config block.
    // @param cache (optional) cache block.
    // @param logs_config (optional) logs_config block.
    // @param secondary_artifacts (optional) secondary_artifacts block.
    // @param secondary_sources (optional) secondary_sources block.
    aws_codebuild_project(rname, name, service_role, source, artifacts, environment, build_timeout=null, encryption_key=null, tags=null, badge_enabled=null, description=null, id=null, vpc_config={}, cache={}, logs_config={}, secondary_artifacts={}, secondary_sources={}):: {
      name: name,
      service_role: service_role,
      source: source,
      artifacts: artifacts,
      environment: environment,
      [if build_timeout != null then 'build_timeout']: build_timeout,
      [if encryption_key != null then 'encryption_key']: encryption_key,
      [if tags != null then 'tags']: tags,
      [if badge_enabled != null then 'badge_enabled']: badge_enabled,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if vpc_config != null then 'vpc_config']: vpc_config,
      [if cache != null then 'cache']: cache,
      [if logs_config != null then 'logs_config']: logs_config,
      [if secondary_artifacts != null then 'secondary_artifacts']: secondary_artifacts,
      [if secondary_sources != null then 'secondary_sources']: secondary_sources,
      rname:: rname,
      arn:: '${aws_codebuild_project.%s.arn}' % rname,
      badge_url:: '${aws_codebuild_project.%s.badge_url}' % rname,
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
      [if catalog_id != null then 'catalog_id']: catalog_id,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if location_uri != null then 'location_uri']: location_uri,
      [if parameters != null then 'parameters']: parameters,
      rname:: rname,
    },
    // aws_macie_member_account_association - https://www.terraform.io/docs/providers/aws/r/macie_member_account_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param member_account_id (required) https://www.terraform.io/docs/providers/aws/r/macie_member_account_association.html#member_account_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/macie_member_account_association.html#id.
    aws_macie_member_account_association(rname, member_account_id, id=null):: {
      member_account_id: member_account_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_sqs_queue_policy - https://www.terraform.io/docs/providers/aws/r/sqs_queue_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/sqs_queue_policy.html#policy.
    // @param queue_url (required) https://www.terraform.io/docs/providers/aws/r/sqs_queue_policy.html#queue_url.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue_policy.html#id.
    aws_sqs_queue_policy(rname, policy, queue_url, id=null):: {
      policy: policy,
      queue_url: queue_url,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_ec2_transit_gateway_vpc_attachment - https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#subnet_ids.
    // @param transit_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#transit_gateway_id.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#vpc_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#tags.
    // @param dns_support (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#dns_support.
    // @param ipv6_support (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#ipv6_support.
    // @param transit_gateway_default_route_table_association (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#transit_gateway_default_route_table_association.
    // @param transit_gateway_default_route_table_propagation (optional) https://www.terraform.io/docs/providers/aws/r/ec2_transit_gateway_vpc_attachment.html#transit_gateway_default_route_table_propagation.
    aws_ec2_transit_gateway_vpc_attachment(rname, subnet_ids, transit_gateway_id, vpc_id, id=null, tags=null, dns_support=null, ipv6_support=null, transit_gateway_default_route_table_association=null, transit_gateway_default_route_table_propagation=null):: {
      subnet_ids: subnet_ids,
      transit_gateway_id: transit_gateway_id,
      vpc_id: vpc_id,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if dns_support != null then 'dns_support']: dns_support,
      [if ipv6_support != null then 'ipv6_support']: ipv6_support,
      [if transit_gateway_default_route_table_association != null then 'transit_gateway_default_route_table_association']: transit_gateway_default_route_table_association,
      [if transit_gateway_default_route_table_propagation != null then 'transit_gateway_default_route_table_propagation']: transit_gateway_default_route_table_propagation,
      rname:: rname,
      vpc_owner_id:: '${aws_ec2_transit_gateway_vpc_attachment.%s.vpc_owner_id}' % rname,
    },
    // aws_eip - https://www.terraform.io/docs/providers/aws/r/eip.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#id.
    // @param public_ipv4_pool (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#public_ipv4_pool.
    // @param vpc (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#vpc.
    // @param network_interface (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#network_interface.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#tags.
    // @param instance (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#instance.
    // @param associate_with_private_ip (optional) https://www.terraform.io/docs/providers/aws/r/eip.html#associate_with_private_ip.
    // @param timeouts (optional) timeouts block.
    aws_eip(rname, id=null, public_ipv4_pool=null, vpc=null, network_interface=null, tags=null, instance=null, associate_with_private_ip=null, timeouts={}):: {
      [if id != null then 'id']: id,
      [if public_ipv4_pool != null then 'public_ipv4_pool']: public_ipv4_pool,
      [if vpc != null then 'vpc']: vpc,
      [if network_interface != null then 'network_interface']: network_interface,
      [if tags != null then 'tags']: tags,
      [if instance != null then 'instance']: instance,
      [if associate_with_private_ip != null then 'associate_with_private_ip']: associate_with_private_ip,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      domain:: '${aws_eip.%s.domain}' % rname,
      private_ip:: '${aws_eip.%s.private_ip}' % rname,
      allocation_id:: '${aws_eip.%s.allocation_id}' % rname,
      association_id:: '${aws_eip.%s.association_id}' % rname,
      private_dns:: '${aws_eip.%s.private_dns}' % rname,
      public_dns:: '${aws_eip.%s.public_dns}' % rname,
      public_ip:: '${aws_eip.%s.public_ip}' % rname,
    },
    // aws_ses_domain_mail_from - https://www.terraform.io/docs/providers/aws/r/ses_domain_mail_from.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param mail_from_domain (required) https://www.terraform.io/docs/providers/aws/r/ses_domain_mail_from.html#mail_from_domain.
    // @param domain (required) https://www.terraform.io/docs/providers/aws/r/ses_domain_mail_from.html#domain.
    // @param behavior_on_mx_failure (optional) https://www.terraform.io/docs/providers/aws/r/ses_domain_mail_from.html#behavior_on_mx_failure.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_domain_mail_from.html#id.
    aws_ses_domain_mail_from(rname, mail_from_domain, domain, behavior_on_mx_failure=null, id=null):: {
      mail_from_domain: mail_from_domain,
      domain: domain,
      [if behavior_on_mx_failure != null then 'behavior_on_mx_failure']: behavior_on_mx_failure,
      [if id != null then 'id']: id,
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
      [if id != null then 'id']: id,
      rname:: rname,
      accounts:: '${aws_organizations_organizational_unit.%s.accounts}' % rname,
      arn:: '${aws_organizations_organizational_unit.%s.arn}' % rname,
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
      [if excluded_members != null then 'excluded_members']: excluded_members,
      [if id != null then 'id']: id,
      [if static_members != null then 'static_members']: static_members,
      rname:: rname,
      arn:: '${aws_rds_cluster_endpoint.%s.arn}' % rname,
      endpoint:: '${aws_rds_cluster_endpoint.%s.endpoint}' % rname,
    },
    // aws_ami_launch_permission - https://www.terraform.io/docs/providers/aws/r/ami_launch_permission.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param account_id (required) https://www.terraform.io/docs/providers/aws/r/ami_launch_permission.html#account_id.
    // @param image_id (required) https://www.terraform.io/docs/providers/aws/r/ami_launch_permission.html#image_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ami_launch_permission.html#id.
    aws_ami_launch_permission(rname, account_id, image_id, id=null):: {
      account_id: account_id,
      image_id: image_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_db_subnet_group - https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html#subnet_ids.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/db_subnet_group.html#name.
    aws_db_subnet_group(rname, subnet_ids, name_prefix=null, tags=null, description=null, id=null, name=null):: {
      subnet_ids: subnet_ids,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      rname:: rname,
      arn:: '${aws_db_subnet_group.%s.arn}' % rname,
    },
    // aws_iam_user_group_membership - https://www.terraform.io/docs/providers/aws/r/iam_user_group_membership.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param groups (required) https://www.terraform.io/docs/providers/aws/r/iam_user_group_membership.html#groups.
    // @param user (required) https://www.terraform.io/docs/providers/aws/r/iam_user_group_membership.html#user.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_group_membership.html#id.
    aws_iam_user_group_membership(rname, groups, user, id=null):: {
      groups: groups,
      user: user,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_api_gateway_client_certificate - https://www.terraform.io/docs/providers/aws/r/api_gateway_client_certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_client_certificate.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_client_certificate.html#id.
    aws_api_gateway_client_certificate(rname, description=null, id=null):: {
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
      expiration_date:: '${aws_api_gateway_client_certificate.%s.expiration_date}' % rname,
      pem_encoded_certificate:: '${aws_api_gateway_client_certificate.%s.pem_encoded_certificate}' % rname,
      created_date:: '${aws_api_gateway_client_certificate.%s.created_date}' % rname,
    },
    // aws_elastictranscoder_preset - https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param container (required) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html#container.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html#name.
    // @param type (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html#type.
    // @param video_codec_options (optional) https://www.terraform.io/docs/providers/aws/r/elastictranscoder_preset.html#video_codec_options.
    // @param audio (optional) audio block.
    // @param audio_codec_options (optional) audio_codec_options block.
    // @param thumbnails (optional) thumbnails block.
    // @param video (optional) video block.
    // @param video_watermarks (optional) video_watermarks block.
    aws_elastictranscoder_preset(rname, container, description=null, id=null, name=null, type=null, video_codec_options=null, audio={}, audio_codec_options={}, thumbnails={}, video={}, video_watermarks={}):: {
      container: container,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if type != null then 'type']: type,
      [if video_codec_options != null then 'video_codec_options']: video_codec_options,
      [if audio != null then 'audio']: audio,
      [if audio_codec_options != null then 'audio_codec_options']: audio_codec_options,
      [if thumbnails != null then 'thumbnails']: thumbnails,
      [if video != null then 'video']: video,
      [if video_watermarks != null then 'video_watermarks']: video_watermarks,
      rname:: rname,
      arn:: '${aws_elastictranscoder_preset.%s.arn}' % rname,
    },
    // aws_elb - https://www.terraform.io/docs/providers/aws/r/elb.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param listener (required) listener block.
    // @param subnets (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#subnets.
    // @param connection_draining (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#connection_draining.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#tags.
    // @param connection_draining_timeout (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#connection_draining_timeout.
    // @param idle_timeout (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#idle_timeout.
    // @param instances (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#instances.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#id.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#security_groups.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#availability_zones.
    // @param cross_zone_load_balancing (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#cross_zone_load_balancing.
    // @param internal (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#internal.
    // @param source_security_group (optional) https://www.terraform.io/docs/providers/aws/r/elb.html#source_security_group.
    // @param access_logs (optional) access_logs block.
    // @param health_check (optional) health_check block.
    aws_elb(rname, listener, subnets=null, connection_draining=null, name_prefix=null, tags=null, connection_draining_timeout=null, idle_timeout=null, instances=null, name=null, id=null, security_groups=null, availability_zones=null, cross_zone_load_balancing=null, internal=null, source_security_group=null, access_logs={}, health_check={}):: {
      listener: listener,
      [if subnets != null then 'subnets']: subnets,
      [if connection_draining != null then 'connection_draining']: connection_draining,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if tags != null then 'tags']: tags,
      [if connection_draining_timeout != null then 'connection_draining_timeout']: connection_draining_timeout,
      [if idle_timeout != null then 'idle_timeout']: idle_timeout,
      [if instances != null then 'instances']: instances,
      [if name != null then 'name']: name,
      [if id != null then 'id']: id,
      [if security_groups != null then 'security_groups']: security_groups,
      [if availability_zones != null then 'availability_zones']: availability_zones,
      [if cross_zone_load_balancing != null then 'cross_zone_load_balancing']: cross_zone_load_balancing,
      [if internal != null then 'internal']: internal,
      [if source_security_group != null then 'source_security_group']: source_security_group,
      [if access_logs != null then 'access_logs']: access_logs,
      [if health_check != null then 'health_check']: health_check,
      rname:: rname,
      arn:: '${aws_elb.%s.arn}' % rname,
      dns_name:: '${aws_elb.%s.dns_name}' % rname,
      source_security_group_id:: '${aws_elb.%s.source_security_group_id}' % rname,
      zone_id:: '${aws_elb.%s.zone_id}' % rname,
    },
    // aws_ses_domain_dkim - https://www.terraform.io/docs/providers/aws/r/ses_domain_dkim.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain (required) https://www.terraform.io/docs/providers/aws/r/ses_domain_dkim.html#domain.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_domain_dkim.html#id.
    aws_ses_domain_dkim(rname, domain, id=null):: {
      domain: domain,
      [if id != null then 'id']: id,
      rname:: rname,
      dkim_tokens:: '${aws_ses_domain_dkim.%s.dkim_tokens}' % rname,
    },
    // aws_backup_vault - https://www.terraform.io/docs/providers/aws/r/backup_vault.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/backup_vault.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/backup_vault.html#id.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/backup_vault.html#kms_key_arn.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/backup_vault.html#tags.
    aws_backup_vault(rname, name, id=null, kms_key_arn=null, tags=null):: {
      name: name,
      [if id != null then 'id']: id,
      [if kms_key_arn != null then 'kms_key_arn']: kms_key_arn,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      recovery_points:: '${aws_backup_vault.%s.recovery_points}' % rname,
      arn:: '${aws_backup_vault.%s.arn}' % rname,
    },
    // aws_db_snapshot - https://www.terraform.io/docs/providers/aws/r/db_snapshot.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param db_instance_identifier (required) https://www.terraform.io/docs/providers/aws/r/db_snapshot.html#db_instance_identifier.
    // @param db_snapshot_identifier (required) https://www.terraform.io/docs/providers/aws/r/db_snapshot.html#db_snapshot_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_snapshot.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_snapshot.html#tags.
    // @param timeouts (optional) timeouts block.
    aws_db_snapshot(rname, db_instance_identifier, db_snapshot_identifier, id=null, tags=null, timeouts={}):: {
      db_instance_identifier: db_instance_identifier,
      db_snapshot_identifier: db_snapshot_identifier,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      snapshot_type:: '${aws_db_snapshot.%s.snapshot_type}' % rname,
      encrypted:: '${aws_db_snapshot.%s.encrypted}' % rname,
      engine:: '${aws_db_snapshot.%s.engine}' % rname,
      engine_version:: '${aws_db_snapshot.%s.engine_version}' % rname,
      kms_key_id:: '${aws_db_snapshot.%s.kms_key_id}' % rname,
      license_model:: '${aws_db_snapshot.%s.license_model}' % rname,
      port:: '${aws_db_snapshot.%s.port}' % rname,
      vpc_id:: '${aws_db_snapshot.%s.vpc_id}' % rname,
      allocated_storage:: '${aws_db_snapshot.%s.allocated_storage}' % rname,
      availability_zone:: '${aws_db_snapshot.%s.availability_zone}' % rname,
      source_db_snapshot_identifier:: '${aws_db_snapshot.%s.source_db_snapshot_identifier}' % rname,
      source_region:: '${aws_db_snapshot.%s.source_region}' % rname,
      status:: '${aws_db_snapshot.%s.status}' % rname,
      iops:: '${aws_db_snapshot.%s.iops}' % rname,
      storage_type:: '${aws_db_snapshot.%s.storage_type}' % rname,
      db_snapshot_arn:: '${aws_db_snapshot.%s.db_snapshot_arn}' % rname,
      option_group_name:: '${aws_db_snapshot.%s.option_group_name}' % rname,
    },
    // aws_media_package_channel - https://www.terraform.io/docs/providers/aws/r/media_package_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param channel_id (required) https://www.terraform.io/docs/providers/aws/r/media_package_channel.html#channel_id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/media_package_channel.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/media_package_channel.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/media_package_channel.html#tags.
    aws_media_package_channel(rname, channel_id, description=null, id=null, tags=null):: {
      channel_id: channel_id,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      hls_ingest:: '${aws_media_package_channel.%s.hls_ingest}' % rname,
      arn:: '${aws_media_package_channel.%s.arn}' % rname,
    },
    // aws_pinpoint_apns_voip_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#application_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#id.
    // @param private_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#private_key.
    // @param team_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#team_id.
    // @param token_key_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#token_key_id.
    // @param bundle_id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#bundle_id.
    // @param certificate (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#certificate.
    // @param default_authentication_method (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#default_authentication_method.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#enabled.
    // @param token_key (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_apns_voip_channel.html#token_key.
    aws_pinpoint_apns_voip_channel(rname, application_id, id=null, private_key=null, team_id=null, token_key_id=null, bundle_id=null, certificate=null, default_authentication_method=null, enabled=null, token_key=null):: {
      application_id: application_id,
      [if id != null then 'id']: id,
      [if private_key != null then 'private_key']: private_key,
      [if team_id != null then 'team_id']: team_id,
      [if token_key_id != null then 'token_key_id']: token_key_id,
      [if bundle_id != null then 'bundle_id']: bundle_id,
      [if certificate != null then 'certificate']: certificate,
      [if default_authentication_method != null then 'default_authentication_method']: default_authentication_method,
      [if enabled != null then 'enabled']: enabled,
      [if token_key != null then 'token_key']: token_key,
      rname:: rname,
    },
    // aws_ssm_maintenance_window_task - https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param task_arn (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#task_arn.
    // @param task_type (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#task_type.
    // @param max_errors (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#max_errors.
    // @param max_concurrency (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#max_concurrency.
    // @param service_role_arn (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#service_role_arn.
    // @param window_id (required) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#window_id.
    // @param targets (required) targets block.
    // @param priority (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#priority.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ssm_maintenance_window_task.html#description.
    // @param logging_info (optional) logging_info block.
    // @param task_invocation_parameters (optional) task_invocation_parameters block.
    // @param task_parameters (optional) task_parameters block.
    aws_ssm_maintenance_window_task(rname, task_arn, task_type, max_errors, max_concurrency, service_role_arn, window_id, targets, priority=null, id=null, name=null, description=null, logging_info={}, task_invocation_parameters={}, task_parameters={}):: {
      task_arn: task_arn,
      task_type: task_type,
      max_errors: max_errors,
      max_concurrency: max_concurrency,
      service_role_arn: service_role_arn,
      window_id: window_id,
      targets: targets,
      [if priority != null then 'priority']: priority,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if description != null then 'description']: description,
      [if logging_info != null then 'logging_info']: logging_info,
      [if task_invocation_parameters != null then 'task_invocation_parameters']: task_invocation_parameters,
      [if task_parameters != null then 'task_parameters']: task_parameters,
      rname:: rname,
    },
    // aws_flow_log - https://www.terraform.io/docs/providers/aws/r/flow_log.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param traffic_type (required) https://www.terraform.io/docs/providers/aws/r/flow_log.html#traffic_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#id.
    // @param log_destination (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#log_destination.
    // @param log_group_name (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#log_group_name.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#vpc_id.
    // @param eni_id (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#eni_id.
    // @param iam_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#iam_role_arn.
    // @param log_destination_type (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#log_destination_type.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/flow_log.html#subnet_id.
    aws_flow_log(rname, traffic_type, id=null, log_destination=null, log_group_name=null, vpc_id=null, eni_id=null, iam_role_arn=null, log_destination_type=null, subnet_id=null):: {
      traffic_type: traffic_type,
      [if id != null then 'id']: id,
      [if log_destination != null then 'log_destination']: log_destination,
      [if log_group_name != null then 'log_group_name']: log_group_name,
      [if vpc_id != null then 'vpc_id']: vpc_id,
      [if eni_id != null then 'eni_id']: eni_id,
      [if iam_role_arn != null then 'iam_role_arn']: iam_role_arn,
      [if log_destination_type != null then 'log_destination_type']: log_destination_type,
      [if subnet_id != null then 'subnet_id']: subnet_id,
      rname:: rname,
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
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_iam_openid_connect_provider.%s.arn}' % rname,
    },
    // aws_s3_bucket_notification - https://www.terraform.io/docs/providers/aws/r/s3_bucket_notification.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_notification.html#bucket.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_notification.html#id.
    // @param queue (optional) queue block.
    // @param topic (optional) topic block.
    // @param lambda_function (optional) lambda_function block.
    aws_s3_bucket_notification(rname, bucket, id=null, queue={}, topic={}, lambda_function={}):: {
      bucket: bucket,
      [if id != null then 'id']: id,
      [if queue != null then 'queue']: queue,
      [if topic != null then 'topic']: topic,
      [if lambda_function != null then 'lambda_function']: lambda_function,
      rname:: rname,
    },
    // aws_kms_external_key - https://www.terraform.io/docs/providers/aws/r/kms_external_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#policy.
    // @param valid_to (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#valid_to.
    // @param deletion_window_in_days (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#deletion_window_in_days.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#description.
    // @param key_material_base64 (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#key_material_base64.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/kms_external_key.html#tags.
    aws_kms_external_key(rname, policy=null, valid_to=null, deletion_window_in_days=null, description=null, key_material_base64=null, enabled=null, id=null, tags=null):: {
      [if policy != null then 'policy']: policy,
      [if valid_to != null then 'valid_to']: valid_to,
      [if deletion_window_in_days != null then 'deletion_window_in_days']: deletion_window_in_days,
      [if description != null then 'description']: description,
      [if key_material_base64 != null then 'key_material_base64']: key_material_base64,
      [if enabled != null then 'enabled']: enabled,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      arn:: '${aws_kms_external_key.%s.arn}' % rname,
      expiration_model:: '${aws_kms_external_key.%s.expiration_model}' % rname,
      key_state:: '${aws_kms_external_key.%s.key_state}' % rname,
      key_usage:: '${aws_kms_external_key.%s.key_usage}' % rname,
    },
    // aws_route53_delegation_set - https://www.terraform.io/docs/providers/aws/r/route53_delegation_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_delegation_set.html#id.
    // @param reference_name (optional) https://www.terraform.io/docs/providers/aws/r/route53_delegation_set.html#reference_name.
    aws_route53_delegation_set(rname, id=null, reference_name=null):: {
      [if id != null then 'id']: id,
      [if reference_name != null then 'reference_name']: reference_name,
      rname:: rname,
      name_servers:: '${aws_route53_delegation_set.%s.name_servers}' % rname,
    },
    // aws_ses_receipt_rule_set - https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param rule_set_name (required) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule_set.html#rule_set_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_receipt_rule_set.html#id.
    aws_ses_receipt_rule_set(rname, rule_set_name, id=null):: {
      rule_set_name: rule_set_name,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_db_cluster_snapshot - https://www.terraform.io/docs/providers/aws/r/db_cluster_snapshot.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param db_cluster_snapshot_identifier (required) https://www.terraform.io/docs/providers/aws/r/db_cluster_snapshot.html#db_cluster_snapshot_identifier.
    // @param db_cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/db_cluster_snapshot.html#db_cluster_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_cluster_snapshot.html#id.
    // @param timeouts (optional) timeouts block.
    aws_db_cluster_snapshot(rname, db_cluster_snapshot_identifier, db_cluster_identifier, id=null, timeouts={}):: {
      db_cluster_snapshot_identifier: db_cluster_snapshot_identifier,
      db_cluster_identifier: db_cluster_identifier,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      kms_key_id:: '${aws_db_cluster_snapshot.%s.kms_key_id}' % rname,
      engine_version:: '${aws_db_cluster_snapshot.%s.engine_version}' % rname,
      port:: '${aws_db_cluster_snapshot.%s.port}' % rname,
      snapshot_type:: '${aws_db_cluster_snapshot.%s.snapshot_type}' % rname,
      storage_encrypted:: '${aws_db_cluster_snapshot.%s.storage_encrypted}' % rname,
      db_cluster_snapshot_arn:: '${aws_db_cluster_snapshot.%s.db_cluster_snapshot_arn}' % rname,
      engine:: '${aws_db_cluster_snapshot.%s.engine}' % rname,
      license_model:: '${aws_db_cluster_snapshot.%s.license_model}' % rname,
      source_db_cluster_snapshot_arn:: '${aws_db_cluster_snapshot.%s.source_db_cluster_snapshot_arn}' % rname,
      vpc_id:: '${aws_db_cluster_snapshot.%s.vpc_id}' % rname,
      availability_zones:: '${aws_db_cluster_snapshot.%s.availability_zones}' % rname,
      status:: '${aws_db_cluster_snapshot.%s.status}' % rname,
      allocated_storage:: '${aws_db_cluster_snapshot.%s.allocated_storage}' % rname,
    },
    // aws_opsworks_instance - https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#stack_id.
    // @param layer_ids (required) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#layer_ids.
    // @param ecs_cluster_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#ecs_cluster_arn.
    // @param private_dns (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#private_dns.
    // @param reported_os_family (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#reported_os_family.
    // @param ssh_host_rsa_key_fingerprint (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#ssh_host_rsa_key_fingerprint.
    // @param last_service_error_id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#last_service_error_id.
    // @param root_device_volume_id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#root_device_volume_id.
    // @param auto_scaling_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#auto_scaling_type.
    // @param delete_eip (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#delete_eip.
    // @param hostname (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#hostname.
    // @param state (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#state.
    // @param ami_id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#ami_id.
    // @param elastic_ip (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#elastic_ip.
    // @param root_device_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#root_device_type.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#subnet_id.
    // @param virtualization_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#virtualization_type.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#availability_zone.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#install_updates_on_boot.
    // @param instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#instance_profile_arn.
    // @param private_ip (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#private_ip.
    // @param registered_by (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#registered_by.
    // @param reported_agent_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#reported_agent_version.
    // @param ssh_host_dsa_key_fingerprint (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#ssh_host_dsa_key_fingerprint.
    // @param ssh_key_name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#ssh_key_name.
    // @param architecture (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#architecture.
    // @param os (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#os.
    // @param reported_os_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#reported_os_version.
    // @param tenancy (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#tenancy.
    // @param created_at (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#created_at.
    // @param delete_ebs (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#delete_ebs.
    // @param infrastructure_class (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#infrastructure_class.
    // @param platform (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#platform.
    // @param reported_os_name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#reported_os_name.
    // @param agent_version (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#agent_version.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#ebs_optimized.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#id.
    // @param instance_type (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#instance_type.
    // @param public_dns (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#public_dns.
    // @param public_ip (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#public_ip.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#security_group_ids.
    // @param status (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_instance.html#status.
    // @param ebs_block_device (optional) ebs_block_device block.
    // @param ephemeral_block_device (optional) ephemeral_block_device block.
    // @param root_block_device (optional) root_block_device block.
    // @param timeouts (optional) timeouts block.
    aws_opsworks_instance(rname, stack_id, layer_ids, ecs_cluster_arn=null, private_dns=null, reported_os_family=null, ssh_host_rsa_key_fingerprint=null, last_service_error_id=null, root_device_volume_id=null, auto_scaling_type=null, delete_eip=null, hostname=null, state=null, ami_id=null, elastic_ip=null, root_device_type=null, subnet_id=null, virtualization_type=null, availability_zone=null, install_updates_on_boot=null, instance_profile_arn=null, private_ip=null, registered_by=null, reported_agent_version=null, ssh_host_dsa_key_fingerprint=null, ssh_key_name=null, architecture=null, os=null, reported_os_version=null, tenancy=null, created_at=null, delete_ebs=null, infrastructure_class=null, platform=null, reported_os_name=null, agent_version=null, ebs_optimized=null, id=null, instance_type=null, public_dns=null, public_ip=null, security_group_ids=null, status=null, ebs_block_device={}, ephemeral_block_device={}, root_block_device={}, timeouts={}):: {
      stack_id: stack_id,
      layer_ids: layer_ids,
      [if ecs_cluster_arn != null then 'ecs_cluster_arn']: ecs_cluster_arn,
      [if private_dns != null then 'private_dns']: private_dns,
      [if reported_os_family != null then 'reported_os_family']: reported_os_family,
      [if ssh_host_rsa_key_fingerprint != null then 'ssh_host_rsa_key_fingerprint']: ssh_host_rsa_key_fingerprint,
      [if last_service_error_id != null then 'last_service_error_id']: last_service_error_id,
      [if root_device_volume_id != null then 'root_device_volume_id']: root_device_volume_id,
      [if auto_scaling_type != null then 'auto_scaling_type']: auto_scaling_type,
      [if delete_eip != null then 'delete_eip']: delete_eip,
      [if hostname != null then 'hostname']: hostname,
      [if state != null then 'state']: state,
      [if ami_id != null then 'ami_id']: ami_id,
      [if elastic_ip != null then 'elastic_ip']: elastic_ip,
      [if root_device_type != null then 'root_device_type']: root_device_type,
      [if subnet_id != null then 'subnet_id']: subnet_id,
      [if virtualization_type != null then 'virtualization_type']: virtualization_type,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if install_updates_on_boot != null then 'install_updates_on_boot']: install_updates_on_boot,
      [if instance_profile_arn != null then 'instance_profile_arn']: instance_profile_arn,
      [if private_ip != null then 'private_ip']: private_ip,
      [if registered_by != null then 'registered_by']: registered_by,
      [if reported_agent_version != null then 'reported_agent_version']: reported_agent_version,
      [if ssh_host_dsa_key_fingerprint != null then 'ssh_host_dsa_key_fingerprint']: ssh_host_dsa_key_fingerprint,
      [if ssh_key_name != null then 'ssh_key_name']: ssh_key_name,
      [if architecture != null then 'architecture']: architecture,
      [if os != null then 'os']: os,
      [if reported_os_version != null then 'reported_os_version']: reported_os_version,
      [if tenancy != null then 'tenancy']: tenancy,
      [if created_at != null then 'created_at']: created_at,
      [if delete_ebs != null then 'delete_ebs']: delete_ebs,
      [if infrastructure_class != null then 'infrastructure_class']: infrastructure_class,
      [if platform != null then 'platform']: platform,
      [if reported_os_name != null then 'reported_os_name']: reported_os_name,
      [if agent_version != null then 'agent_version']: agent_version,
      [if ebs_optimized != null then 'ebs_optimized']: ebs_optimized,
      [if id != null then 'id']: id,
      [if instance_type != null then 'instance_type']: instance_type,
      [if public_dns != null then 'public_dns']: public_dns,
      [if public_ip != null then 'public_ip']: public_ip,
      [if security_group_ids != null then 'security_group_ids']: security_group_ids,
      [if status != null then 'status']: status,
      [if ebs_block_device != null then 'ebs_block_device']: ebs_block_device,
      [if ephemeral_block_device != null then 'ephemeral_block_device']: ephemeral_block_device,
      [if root_block_device != null then 'root_block_device']: root_block_device,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      ec2_instance_id:: '${aws_opsworks_instance.%s.ec2_instance_id}' % rname,
    },
    // aws_ram_resource_association - https://www.terraform.io/docs/providers/aws/r/ram_resource_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param resource_share_arn (required) https://www.terraform.io/docs/providers/aws/r/ram_resource_association.html#resource_share_arn.
    // @param resource_arn (required) https://www.terraform.io/docs/providers/aws/r/ram_resource_association.html#resource_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ram_resource_association.html#id.
    aws_ram_resource_association(rname, resource_share_arn, resource_arn, id=null):: {
      resource_share_arn: resource_share_arn,
      resource_arn: resource_arn,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_waf_web_acl - https://www.terraform.io/docs/providers/aws/r/waf_web_acl.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/waf_web_acl.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_web_acl.html#name.
    // @param default_action (required) default_action block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_web_acl.html#id.
    // @param rules (optional) rules block.
    // @param logging_configuration (optional) logging_configuration block.
    aws_waf_web_acl(rname, metric_name, name, default_action, id=null, rules={}, logging_configuration={}):: {
      metric_name: metric_name,
      name: name,
      default_action: default_action,
      [if id != null then 'id']: id,
      [if rules != null then 'rules']: rules,
      [if logging_configuration != null then 'logging_configuration']: logging_configuration,
      rname:: rname,
      arn:: '${aws_waf_web_acl.%s.arn}' % rname,
    },
    // aws_wafregional_regex_pattern_set - https://www.terraform.io/docs/providers/aws/r/wafregional_regex_pattern_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_regex_pattern_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_regex_pattern_set.html#id.
    // @param regex_pattern_strings (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_regex_pattern_set.html#regex_pattern_strings.
    aws_wafregional_regex_pattern_set(rname, name, id=null, regex_pattern_strings=null):: {
      name: name,
      [if id != null then 'id']: id,
      [if regex_pattern_strings != null then 'regex_pattern_strings']: regex_pattern_strings,
      rname:: rname,
    },
    // aws_route53_query_log - https://www.terraform.io/docs/providers/aws/r/route53_query_log.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cloudwatch_log_group_arn (required) https://www.terraform.io/docs/providers/aws/r/route53_query_log.html#cloudwatch_log_group_arn.
    // @param zone_id (required) https://www.terraform.io/docs/providers/aws/r/route53_query_log.html#zone_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_query_log.html#id.
    aws_route53_query_log(rname, cloudwatch_log_group_arn, zone_id, id=null):: {
      cloudwatch_log_group_arn: cloudwatch_log_group_arn,
      zone_id: zone_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_vpn_gateway - https://www.terraform.io/docs/providers/aws/r/vpn_gateway.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param amazon_side_asn (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway.html#amazon_side_asn.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway.html#availability_zone.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway.html#tags.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_gateway.html#vpc_id.
    aws_vpn_gateway(rname, amazon_side_asn=null, availability_zone=null, id=null, tags=null, vpc_id=null):: {
      [if amazon_side_asn != null then 'amazon_side_asn']: amazon_side_asn,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if vpc_id != null then 'vpc_id']: vpc_id,
      rname:: rname,
    },
    // aws_wafregional_ipset - https://www.terraform.io/docs/providers/aws/r/wafregional_ipset.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_ipset.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_ipset.html#id.
    // @param ip_set_descriptor (optional) ip_set_descriptor block.
    aws_wafregional_ipset(rname, name, id=null, ip_set_descriptor={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if ip_set_descriptor != null then 'ip_set_descriptor']: ip_set_descriptor,
      rname:: rname,
      arn:: '${aws_wafregional_ipset.%s.arn}' % rname,
    },
    // aws_alb_target_group - https://www.terraform.io/docs/providers/aws/r/alb_target_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param deregistration_delay (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#deregistration_delay.
    // @param lambda_multi_value_headers_enabled (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#lambda_multi_value_headers_enabled.
    // @param slow_start (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#slow_start.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#id.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#port.
    // @param proxy_protocol_v2 (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#proxy_protocol_v2.
    // @param target_type (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#target_type.
    // @param vpc_id (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#vpc_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#tags.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#name_prefix.
    // @param protocol (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group.html#protocol.
    // @param health_check (optional) health_check block.
    // @param stickiness (optional) stickiness block.
    aws_alb_target_group(rname, deregistration_delay=null, lambda_multi_value_headers_enabled=null, slow_start=null, id=null, port=null, proxy_protocol_v2=null, target_type=null, vpc_id=null, tags=null, name=null, name_prefix=null, protocol=null, health_check={}, stickiness={}):: {
      [if deregistration_delay != null then 'deregistration_delay']: deregistration_delay,
      [if lambda_multi_value_headers_enabled != null then 'lambda_multi_value_headers_enabled']: lambda_multi_value_headers_enabled,
      [if slow_start != null then 'slow_start']: slow_start,
      [if id != null then 'id']: id,
      [if port != null then 'port']: port,
      [if proxy_protocol_v2 != null then 'proxy_protocol_v2']: proxy_protocol_v2,
      [if target_type != null then 'target_type']: target_type,
      [if vpc_id != null then 'vpc_id']: vpc_id,
      [if tags != null then 'tags']: tags,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if protocol != null then 'protocol']: protocol,
      [if health_check != null then 'health_check']: health_check,
      [if stickiness != null then 'stickiness']: stickiness,
      rname:: rname,
      arn:: '${aws_alb_target_group.%s.arn}' % rname,
      arn_suffix:: '${aws_alb_target_group.%s.arn_suffix}' % rname,
    },
    // aws_cloudwatch_log_destination_policy - https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_destination_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param access_policy (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_destination_policy.html#access_policy.
    // @param destination_name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_destination_policy.html#destination_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_destination_policy.html#id.
    aws_cloudwatch_log_destination_policy(rname, access_policy, destination_name, id=null):: {
      access_policy: access_policy,
      destination_name: destination_name,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_kms_key - https://www.terraform.io/docs/providers/aws/r/kms_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#policy.
    // @param deletion_window_in_days (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#deletion_window_in_days.
    // @param is_enabled (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#is_enabled.
    // @param key_usage (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#key_usage.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#description.
    // @param enable_key_rotation (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#enable_key_rotation.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kms_key.html#id.
    aws_kms_key(rname, policy=null, deletion_window_in_days=null, is_enabled=null, key_usage=null, tags=null, description=null, enable_key_rotation=null, id=null):: {
      [if policy != null then 'policy']: policy,
      [if deletion_window_in_days != null then 'deletion_window_in_days']: deletion_window_in_days,
      [if is_enabled != null then 'is_enabled']: is_enabled,
      [if key_usage != null then 'key_usage']: key_usage,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if enable_key_rotation != null then 'enable_key_rotation']: enable_key_rotation,
      [if id != null then 'id']: id,
      rname:: rname,
      key_id:: '${aws_kms_key.%s.key_id}' % rname,
      arn:: '${aws_kms_key.%s.arn}' % rname,
    },
    // aws_app_cookie_stickiness_policy - https://www.terraform.io/docs/providers/aws/r/app_cookie_stickiness_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/app_cookie_stickiness_policy.html#name.
    // @param cookie_name (required) https://www.terraform.io/docs/providers/aws/r/app_cookie_stickiness_policy.html#cookie_name.
    // @param lb_port (required) https://www.terraform.io/docs/providers/aws/r/app_cookie_stickiness_policy.html#lb_port.
    // @param load_balancer (required) https://www.terraform.io/docs/providers/aws/r/app_cookie_stickiness_policy.html#load_balancer.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/app_cookie_stickiness_policy.html#id.
    aws_app_cookie_stickiness_policy(rname, name, cookie_name, lb_port, load_balancer, id=null):: {
      name: name,
      cookie_name: cookie_name,
      lb_port: lb_port,
      load_balancer: load_balancer,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_elastic_beanstalk_application_version - https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param key (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#key.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#name.
    // @param application (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#application.
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#bucket.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#tags.
    // @param force_delete (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_application_version.html#force_delete.
    aws_elastic_beanstalk_application_version(rname, key, name, application, bucket, description=null, id=null, tags=null, force_delete=null):: {
      key: key,
      name: name,
      application: application,
      bucket: bucket,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if force_delete != null then 'force_delete']: force_delete,
      rname:: rname,
      arn:: '${aws_elastic_beanstalk_application_version.%s.arn}' % rname,
    },
    // aws_sns_topic - https://www.terraform.io/docs/providers/aws/r/sns_topic.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param display_name (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#display_name.
    // @param lambda_success_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#lambda_success_feedback_role_arn.
    // @param sqs_success_feedback_sample_rate (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#sqs_success_feedback_sample_rate.
    // @param application_failure_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#application_failure_feedback_role_arn.
    // @param delivery_policy (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#delivery_policy.
    // @param lambda_failure_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#lambda_failure_feedback_role_arn.
    // @param http_success_feedback_sample_rate (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#http_success_feedback_sample_rate.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#id.
    // @param lambda_success_feedback_sample_rate (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#lambda_success_feedback_sample_rate.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#name_prefix.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#policy.
    // @param sqs_failure_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#sqs_failure_feedback_role_arn.
    // @param sqs_success_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#sqs_success_feedback_role_arn.
    // @param application_success_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#application_success_feedback_role_arn.
    // @param application_success_feedback_sample_rate (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#application_success_feedback_sample_rate.
    // @param http_failure_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#http_failure_feedback_role_arn.
    // @param http_success_feedback_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#http_success_feedback_role_arn.
    // @param kms_master_key_id (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#kms_master_key_id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sns_topic.html#tags.
    aws_sns_topic(rname, display_name=null, lambda_success_feedback_role_arn=null, sqs_success_feedback_sample_rate=null, application_failure_feedback_role_arn=null, delivery_policy=null, lambda_failure_feedback_role_arn=null, http_success_feedback_sample_rate=null, id=null, lambda_success_feedback_sample_rate=null, name_prefix=null, policy=null, sqs_failure_feedback_role_arn=null, sqs_success_feedback_role_arn=null, application_success_feedback_role_arn=null, application_success_feedback_sample_rate=null, http_failure_feedback_role_arn=null, http_success_feedback_role_arn=null, kms_master_key_id=null, name=null, tags=null):: {
      [if display_name != null then 'display_name']: display_name,
      [if lambda_success_feedback_role_arn != null then 'lambda_success_feedback_role_arn']: lambda_success_feedback_role_arn,
      [if sqs_success_feedback_sample_rate != null then 'sqs_success_feedback_sample_rate']: sqs_success_feedback_sample_rate,
      [if application_failure_feedback_role_arn != null then 'application_failure_feedback_role_arn']: application_failure_feedback_role_arn,
      [if delivery_policy != null then 'delivery_policy']: delivery_policy,
      [if lambda_failure_feedback_role_arn != null then 'lambda_failure_feedback_role_arn']: lambda_failure_feedback_role_arn,
      [if http_success_feedback_sample_rate != null then 'http_success_feedback_sample_rate']: http_success_feedback_sample_rate,
      [if id != null then 'id']: id,
      [if lambda_success_feedback_sample_rate != null then 'lambda_success_feedback_sample_rate']: lambda_success_feedback_sample_rate,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if policy != null then 'policy']: policy,
      [if sqs_failure_feedback_role_arn != null then 'sqs_failure_feedback_role_arn']: sqs_failure_feedback_role_arn,
      [if sqs_success_feedback_role_arn != null then 'sqs_success_feedback_role_arn']: sqs_success_feedback_role_arn,
      [if application_success_feedback_role_arn != null then 'application_success_feedback_role_arn']: application_success_feedback_role_arn,
      [if application_success_feedback_sample_rate != null then 'application_success_feedback_sample_rate']: application_success_feedback_sample_rate,
      [if http_failure_feedback_role_arn != null then 'http_failure_feedback_role_arn']: http_failure_feedback_role_arn,
      [if http_success_feedback_role_arn != null then 'http_success_feedback_role_arn']: http_success_feedback_role_arn,
      [if kms_master_key_id != null then 'kms_master_key_id']: kms_master_key_id,
      [if name != null then 'name']: name,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      arn:: '${aws_sns_topic.%s.arn}' % rname,
    },
    // aws_pinpoint_gcm_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_gcm_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_gcm_channel.html#application_id.
    // @param api_key (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_gcm_channel.html#api_key.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_gcm_channel.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_gcm_channel.html#id.
    aws_pinpoint_gcm_channel(rname, application_id, api_key, enabled=null, id=null):: {
      application_id: application_id,
      api_key: api_key,
      [if enabled != null then 'enabled']: enabled,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_servicecatalog_portfolio - https://www.terraform.io/docs/providers/aws/r/servicecatalog_portfolio.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/servicecatalog_portfolio.html#name.
    // @param provider_name (optional) https://www.terraform.io/docs/providers/aws/r/servicecatalog_portfolio.html#provider_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/servicecatalog_portfolio.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/servicecatalog_portfolio.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/servicecatalog_portfolio.html#id.
    // @param timeouts (optional) timeouts block.
    aws_servicecatalog_portfolio(rname, name, provider_name=null, tags=null, description=null, id=null, timeouts={}):: {
      name: name,
      [if provider_name != null then 'provider_name']: provider_name,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_servicecatalog_portfolio.%s.arn}' % rname,
      created_time:: '${aws_servicecatalog_portfolio.%s.created_time}' % rname,
    },
    // aws_vpc - https://www.terraform.io/docs/providers/aws/r/vpc.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cidr_block (required) https://www.terraform.io/docs/providers/aws/r/vpc.html#cidr_block.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#tags.
    // @param enable_classiclink_dns_support (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#enable_classiclink_dns_support.
    // @param enable_dns_hostnames (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#enable_dns_hostnames.
    // @param enable_dns_support (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#enable_dns_support.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#id.
    // @param assign_generated_ipv6_cidr_block (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#assign_generated_ipv6_cidr_block.
    // @param instance_tenancy (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#instance_tenancy.
    // @param enable_classiclink (optional) https://www.terraform.io/docs/providers/aws/r/vpc.html#enable_classiclink.
    aws_vpc(rname, cidr_block, tags=null, enable_classiclink_dns_support=null, enable_dns_hostnames=null, enable_dns_support=null, id=null, assign_generated_ipv6_cidr_block=null, instance_tenancy=null, enable_classiclink=null):: {
      cidr_block: cidr_block,
      [if tags != null then 'tags']: tags,
      [if enable_classiclink_dns_support != null then 'enable_classiclink_dns_support']: enable_classiclink_dns_support,
      [if enable_dns_hostnames != null then 'enable_dns_hostnames']: enable_dns_hostnames,
      [if enable_dns_support != null then 'enable_dns_support']: enable_dns_support,
      [if id != null then 'id']: id,
      [if assign_generated_ipv6_cidr_block != null then 'assign_generated_ipv6_cidr_block']: assign_generated_ipv6_cidr_block,
      [if instance_tenancy != null then 'instance_tenancy']: instance_tenancy,
      [if enable_classiclink != null then 'enable_classiclink']: enable_classiclink,
      rname:: rname,
      ipv6_association_id:: '${aws_vpc.%s.ipv6_association_id}' % rname,
      arn:: '${aws_vpc.%s.arn}' % rname,
      default_route_table_id:: '${aws_vpc.%s.default_route_table_id}' % rname,
      default_network_acl_id:: '${aws_vpc.%s.default_network_acl_id}' % rname,
      dhcp_options_id:: '${aws_vpc.%s.dhcp_options_id}' % rname,
      main_route_table_id:: '${aws_vpc.%s.main_route_table_id}' % rname,
      default_security_group_id:: '${aws_vpc.%s.default_security_group_id}' % rname,
      ipv6_cidr_block:: '${aws_vpc.%s.ipv6_cidr_block}' % rname,
      owner_id:: '${aws_vpc.%s.owner_id}' % rname,
    },
    // aws_datasync_task - https://www.terraform.io/docs/providers/aws/r/datasync_task.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param destination_location_arn (required) https://www.terraform.io/docs/providers/aws/r/datasync_task.html#destination_location_arn.
    // @param source_location_arn (required) https://www.terraform.io/docs/providers/aws/r/datasync_task.html#source_location_arn.
    // @param cloudwatch_log_group_arn (optional) https://www.terraform.io/docs/providers/aws/r/datasync_task.html#cloudwatch_log_group_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/datasync_task.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/datasync_task.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/datasync_task.html#tags.
    // @param timeouts (optional) timeouts block.
    // @param options (optional) options block.
    aws_datasync_task(rname, destination_location_arn, source_location_arn, cloudwatch_log_group_arn=null, id=null, name=null, tags=null, timeouts={}, options={}):: {
      destination_location_arn: destination_location_arn,
      source_location_arn: source_location_arn,
      [if cloudwatch_log_group_arn != null then 'cloudwatch_log_group_arn']: cloudwatch_log_group_arn,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if tags != null then 'tags']: tags,
      [if timeouts != null then 'timeouts']: timeouts,
      [if options != null then 'options']: options,
      rname:: rname,
      arn:: '${aws_datasync_task.%s.arn}' % rname,
    },
    // aws_lb_listener_certificate - https://www.terraform.io/docs/providers/aws/r/lb_listener_certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate_arn (required) https://www.terraform.io/docs/providers/aws/r/lb_listener_certificate.html#certificate_arn.
    // @param listener_arn (required) https://www.terraform.io/docs/providers/aws/r/lb_listener_certificate.html#listener_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb_listener_certificate.html#id.
    aws_lb_listener_certificate(rname, certificate_arn, listener_arn, id=null):: {
      certificate_arn: certificate_arn,
      listener_arn: listener_arn,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_neptune_cluster - https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#vpc_security_group_ids.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#kms_key_arn.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#port.
    // @param preferred_backup_window (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#preferred_backup_window.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#preferred_maintenance_window.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#tags.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#apply_immediately.
    // @param cluster_identifier (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#cluster_identifier.
    // @param final_snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#final_snapshot_identifier.
    // @param backup_retention_period (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#backup_retention_period.
    // @param cluster_identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#cluster_identifier_prefix.
    // @param neptune_cluster_parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#neptune_cluster_parameter_group_name.
    // @param skip_final_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#skip_final_snapshot.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#availability_zones.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#engine.
    // @param replication_source_identifier (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#replication_source_identifier.
    // @param snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#snapshot_identifier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#id.
    // @param neptune_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#neptune_subnet_group_name.
    // @param iam_roles (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#iam_roles.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#engine_version.
    // @param iam_database_authentication_enabled (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#iam_database_authentication_enabled.
    // @param storage_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/neptune_cluster.html#storage_encrypted.
    // @param timeouts (optional) timeouts block.
    aws_neptune_cluster(rname, vpc_security_group_ids=null, kms_key_arn=null, port=null, preferred_backup_window=null, preferred_maintenance_window=null, tags=null, apply_immediately=null, cluster_identifier=null, final_snapshot_identifier=null, backup_retention_period=null, cluster_identifier_prefix=null, neptune_cluster_parameter_group_name=null, skip_final_snapshot=null, availability_zones=null, engine=null, replication_source_identifier=null, snapshot_identifier=null, id=null, neptune_subnet_group_name=null, iam_roles=null, engine_version=null, iam_database_authentication_enabled=null, storage_encrypted=null, timeouts={}):: {
      [if vpc_security_group_ids != null then 'vpc_security_group_ids']: vpc_security_group_ids,
      [if kms_key_arn != null then 'kms_key_arn']: kms_key_arn,
      [if port != null then 'port']: port,
      [if preferred_backup_window != null then 'preferred_backup_window']: preferred_backup_window,
      [if preferred_maintenance_window != null then 'preferred_maintenance_window']: preferred_maintenance_window,
      [if tags != null then 'tags']: tags,
      [if apply_immediately != null then 'apply_immediately']: apply_immediately,
      [if cluster_identifier != null then 'cluster_identifier']: cluster_identifier,
      [if final_snapshot_identifier != null then 'final_snapshot_identifier']: final_snapshot_identifier,
      [if backup_retention_period != null then 'backup_retention_period']: backup_retention_period,
      [if cluster_identifier_prefix != null then 'cluster_identifier_prefix']: cluster_identifier_prefix,
      [if neptune_cluster_parameter_group_name != null then 'neptune_cluster_parameter_group_name']: neptune_cluster_parameter_group_name,
      [if skip_final_snapshot != null then 'skip_final_snapshot']: skip_final_snapshot,
      [if availability_zones != null then 'availability_zones']: availability_zones,
      [if engine != null then 'engine']: engine,
      [if replication_source_identifier != null then 'replication_source_identifier']: replication_source_identifier,
      [if snapshot_identifier != null then 'snapshot_identifier']: snapshot_identifier,
      [if id != null then 'id']: id,
      [if neptune_subnet_group_name != null then 'neptune_subnet_group_name']: neptune_subnet_group_name,
      [if iam_roles != null then 'iam_roles']: iam_roles,
      [if engine_version != null then 'engine_version']: engine_version,
      [if iam_database_authentication_enabled != null then 'iam_database_authentication_enabled']: iam_database_authentication_enabled,
      [if storage_encrypted != null then 'storage_encrypted']: storage_encrypted,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      cluster_members:: '${aws_neptune_cluster.%s.cluster_members}' % rname,
      endpoint:: '${aws_neptune_cluster.%s.endpoint}' % rname,
      reader_endpoint:: '${aws_neptune_cluster.%s.reader_endpoint}' % rname,
      hosted_zone_id:: '${aws_neptune_cluster.%s.hosted_zone_id}' % rname,
      arn:: '${aws_neptune_cluster.%s.arn}' % rname,
      cluster_resource_id:: '${aws_neptune_cluster.%s.cluster_resource_id}' % rname,
    },
    // aws_storagegateway_nfs_file_share - https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param gateway_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#gateway_arn.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#role_arn.
    // @param location_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#location_arn.
    // @param client_list (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#client_list.
    // @param guess_mime_type_enabled (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#guess_mime_type_enabled.
    // @param requester_pays (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#requester_pays.
    // @param default_storage_class (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#default_storage_class.
    // @param kms_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#kms_encrypted.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#kms_key_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#id.
    // @param object_acl (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#object_acl.
    // @param squash (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#squash.
    // @param read_only (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_nfs_file_share.html#read_only.
    // @param nfs_file_share_defaults (optional) nfs_file_share_defaults block.
    // @param timeouts (optional) timeouts block.
    aws_storagegateway_nfs_file_share(rname, gateway_arn, role_arn, location_arn, client_list, guess_mime_type_enabled=null, requester_pays=null, default_storage_class=null, kms_encrypted=null, kms_key_arn=null, id=null, object_acl=null, squash=null, read_only=null, nfs_file_share_defaults={}, timeouts={}):: {
      gateway_arn: gateway_arn,
      role_arn: role_arn,
      location_arn: location_arn,
      client_list: client_list,
      [if guess_mime_type_enabled != null then 'guess_mime_type_enabled']: guess_mime_type_enabled,
      [if requester_pays != null then 'requester_pays']: requester_pays,
      [if default_storage_class != null then 'default_storage_class']: default_storage_class,
      [if kms_encrypted != null then 'kms_encrypted']: kms_encrypted,
      [if kms_key_arn != null then 'kms_key_arn']: kms_key_arn,
      [if id != null then 'id']: id,
      [if object_acl != null then 'object_acl']: object_acl,
      [if squash != null then 'squash']: squash,
      [if read_only != null then 'read_only']: read_only,
      [if nfs_file_share_defaults != null then 'nfs_file_share_defaults']: nfs_file_share_defaults,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      fileshare_id:: '${aws_storagegateway_nfs_file_share.%s.fileshare_id}' % rname,
      arn:: '${aws_storagegateway_nfs_file_share.%s.arn}' % rname,
    },
    // aws_appmesh_virtual_service - https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_service.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param mesh_name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_service.html#mesh_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_service.html#name.
    // @param spec (required) spec block.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_service.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/appmesh_virtual_service.html#id.
    aws_appmesh_virtual_service(rname, mesh_name, name, spec, tags=null, id=null):: {
      mesh_name: mesh_name,
      name: name,
      spec: spec,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      rname:: rname,
      last_updated_date:: '${aws_appmesh_virtual_service.%s.last_updated_date}' % rname,
      arn:: '${aws_appmesh_virtual_service.%s.arn}' % rname,
      created_date:: '${aws_appmesh_virtual_service.%s.created_date}' % rname,
    },
    // aws_default_network_acl - https://www.terraform.io/docs/providers/aws/r/default_network_acl.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param default_network_acl_id (required) https://www.terraform.io/docs/providers/aws/r/default_network_acl.html#default_network_acl_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/default_network_acl.html#id.
    // @param subnet_ids (optional) https://www.terraform.io/docs/providers/aws/r/default_network_acl.html#subnet_ids.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/default_network_acl.html#tags.
    // @param egress (optional) egress block.
    // @param ingress (optional) ingress block.
    aws_default_network_acl(rname, default_network_acl_id, id=null, subnet_ids=null, tags=null, egress={}, ingress={}):: {
      default_network_acl_id: default_network_acl_id,
      [if id != null then 'id']: id,
      [if subnet_ids != null then 'subnet_ids']: subnet_ids,
      [if tags != null then 'tags']: tags,
      [if egress != null then 'egress']: egress,
      [if ingress != null then 'ingress']: ingress,
      rname:: rname,
      owner_id:: '${aws_default_network_acl.%s.owner_id}' % rname,
      vpc_id:: '${aws_default_network_acl.%s.vpc_id}' % rname,
    },
    // aws_ssm_resource_data_sync - https://www.terraform.io/docs/providers/aws/r/ssm_resource_data_sync.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ssm_resource_data_sync.html#name.
    // @param s3_destination (required) s3_destination block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ssm_resource_data_sync.html#id.
    aws_ssm_resource_data_sync(rname, name, s3_destination, id=null):: {
      name: name,
      s3_destination: s3_destination,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_vpn_connection - https://www.terraform.io/docs/providers/aws/r/vpn_connection.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param customer_gateway_id (required) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#customer_gateway_id.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#type.
    // @param static_routes_only (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#static_routes_only.
    // @param tunnel1_inside_cidr (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#tunnel1_inside_cidr.
    // @param tunnel1_preshared_key (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#tunnel1_preshared_key.
    // @param tunnel2_inside_cidr (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#tunnel2_inside_cidr.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#tags.
    // @param transit_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#transit_gateway_id.
    // @param tunnel2_preshared_key (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#tunnel2_preshared_key.
    // @param vpn_gateway_id (optional) https://www.terraform.io/docs/providers/aws/r/vpn_connection.html#vpn_gateway_id.
    aws_vpn_connection(rname, customer_gateway_id, type, static_routes_only=null, tunnel1_inside_cidr=null, tunnel1_preshared_key=null, tunnel2_inside_cidr=null, id=null, tags=null, transit_gateway_id=null, tunnel2_preshared_key=null, vpn_gateway_id=null):: {
      customer_gateway_id: customer_gateway_id,
      type: type,
      [if static_routes_only != null then 'static_routes_only']: static_routes_only,
      [if tunnel1_inside_cidr != null then 'tunnel1_inside_cidr']: tunnel1_inside_cidr,
      [if tunnel1_preshared_key != null then 'tunnel1_preshared_key']: tunnel1_preshared_key,
      [if tunnel2_inside_cidr != null then 'tunnel2_inside_cidr']: tunnel2_inside_cidr,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if transit_gateway_id != null then 'transit_gateway_id']: transit_gateway_id,
      [if tunnel2_preshared_key != null then 'tunnel2_preshared_key']: tunnel2_preshared_key,
      [if vpn_gateway_id != null then 'vpn_gateway_id']: vpn_gateway_id,
      rname:: rname,
      tunnel2_cgw_inside_address:: '${aws_vpn_connection.%s.tunnel2_cgw_inside_address}' % rname,
      tunnel2_vgw_inside_address:: '${aws_vpn_connection.%s.tunnel2_vgw_inside_address}' % rname,
      routes:: '${aws_vpn_connection.%s.routes}' % rname,
      transit_gateway_attachment_id:: '${aws_vpn_connection.%s.transit_gateway_attachment_id}' % rname,
      tunnel2_bgp_holdtime:: '${aws_vpn_connection.%s.tunnel2_bgp_holdtime}' % rname,
      tunnel1_bgp_asn:: '${aws_vpn_connection.%s.tunnel1_bgp_asn}' % rname,
      tunnel1_bgp_holdtime:: '${aws_vpn_connection.%s.tunnel1_bgp_holdtime}' % rname,
      tunnel1_cgw_inside_address:: '${aws_vpn_connection.%s.tunnel1_cgw_inside_address}' % rname,
      customer_gateway_configuration:: '${aws_vpn_connection.%s.customer_gateway_configuration}' % rname,
      tunnel1_address:: '${aws_vpn_connection.%s.tunnel1_address}' % rname,
      tunnel2_address:: '${aws_vpn_connection.%s.tunnel2_address}' % rname,
      tunnel1_vgw_inside_address:: '${aws_vpn_connection.%s.tunnel1_vgw_inside_address}' % rname,
      tunnel2_bgp_asn:: '${aws_vpn_connection.%s.tunnel2_bgp_asn}' % rname,
      vgw_telemetry:: '${aws_vpn_connection.%s.vgw_telemetry}' % rname,
    },
    // aws_wafregional_rule - https://www.terraform.io/docs/providers/aws/r/wafregional_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rule.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/wafregional_rule.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/wafregional_rule.html#id.
    // @param predicate (optional) predicate block.
    aws_wafregional_rule(rname, metric_name, name, id=null, predicate={}):: {
      metric_name: metric_name,
      name: name,
      [if id != null then 'id']: id,
      [if predicate != null then 'predicate']: predicate,
      rname:: rname,
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
      [if distribution != null then 'distribution']: distribution,
      [if id != null then 'id']: id,
      [if role_arn != null then 'role_arn']: role_arn,
      rname:: rname,
    },
    // aws_cloudwatch_metric_alarm - https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param evaluation_periods (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#evaluation_periods.
    // @param threshold (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#threshold.
    // @param alarm_name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#alarm_name.
    // @param comparison_operator (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#comparison_operator.
    // @param insufficient_data_actions (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#insufficient_data_actions.
    // @param period (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#period.
    // @param alarm_description (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#alarm_description.
    // @param datapoints_to_alarm (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#datapoints_to_alarm.
    // @param evaluate_low_sample_count_percentiles (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#evaluate_low_sample_count_percentiles.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#tags.
    // @param alarm_actions (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#alarm_actions.
    // @param dimensions (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#dimensions.
    // @param extended_statistic (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#extended_statistic.
    // @param ok_actions (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#ok_actions.
    // @param treat_missing_data (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#treat_missing_data.
    // @param actions_enabled (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#actions_enabled.
    // @param metric_name (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#metric_name.
    // @param namespace (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#namespace.
    // @param statistic (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#statistic.
    // @param unit (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_metric_alarm.html#unit.
    // @param metric_query (optional) metric_query block.
    aws_cloudwatch_metric_alarm(rname, evaluation_periods, threshold, alarm_name, comparison_operator, insufficient_data_actions=null, period=null, alarm_description=null, datapoints_to_alarm=null, evaluate_low_sample_count_percentiles=null, id=null, tags=null, alarm_actions=null, dimensions=null, extended_statistic=null, ok_actions=null, treat_missing_data=null, actions_enabled=null, metric_name=null, namespace=null, statistic=null, unit=null, metric_query={}):: {
      evaluation_periods: evaluation_periods,
      threshold: threshold,
      alarm_name: alarm_name,
      comparison_operator: comparison_operator,
      [if insufficient_data_actions != null then 'insufficient_data_actions']: insufficient_data_actions,
      [if period != null then 'period']: period,
      [if alarm_description != null then 'alarm_description']: alarm_description,
      [if datapoints_to_alarm != null then 'datapoints_to_alarm']: datapoints_to_alarm,
      [if evaluate_low_sample_count_percentiles != null then 'evaluate_low_sample_count_percentiles']: evaluate_low_sample_count_percentiles,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if alarm_actions != null then 'alarm_actions']: alarm_actions,
      [if dimensions != null then 'dimensions']: dimensions,
      [if extended_statistic != null then 'extended_statistic']: extended_statistic,
      [if ok_actions != null then 'ok_actions']: ok_actions,
      [if treat_missing_data != null then 'treat_missing_data']: treat_missing_data,
      [if actions_enabled != null then 'actions_enabled']: actions_enabled,
      [if metric_name != null then 'metric_name']: metric_name,
      [if namespace != null then 'namespace']: namespace,
      [if statistic != null then 'statistic']: statistic,
      [if unit != null then 'unit']: unit,
      [if metric_query != null then 'metric_query']: metric_query,
      rname:: rname,
      arn:: '${aws_cloudwatch_metric_alarm.%s.arn}' % rname,
    },
    // aws_media_store_container_policy - https://www.terraform.io/docs/providers/aws/r/media_store_container_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param container_name (required) https://www.terraform.io/docs/providers/aws/r/media_store_container_policy.html#container_name.
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/media_store_container_policy.html#policy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/media_store_container_policy.html#id.
    aws_media_store_container_policy(rname, container_name, policy, id=null):: {
      container_name: container_name,
      policy: policy,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_ram_resource_share - https://www.terraform.io/docs/providers/aws/r/ram_resource_share.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ram_resource_share.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ram_resource_share.html#tags.
    // @param allow_external_principals (optional) https://www.terraform.io/docs/providers/aws/r/ram_resource_share.html#allow_external_principals.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ram_resource_share.html#id.
    // @param timeouts (optional) timeouts block.
    aws_ram_resource_share(rname, name, tags=null, allow_external_principals=null, id=null, timeouts={}):: {
      name: name,
      [if tags != null then 'tags']: tags,
      [if allow_external_principals != null then 'allow_external_principals']: allow_external_principals,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_ram_resource_share.%s.arn}' % rname,
    },
    // aws_waf_rate_based_rule - https://www.terraform.io/docs/providers/aws/r/waf_rate_based_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param metric_name (required) https://www.terraform.io/docs/providers/aws/r/waf_rate_based_rule.html#metric_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_rate_based_rule.html#name.
    // @param rate_key (required) https://www.terraform.io/docs/providers/aws/r/waf_rate_based_rule.html#rate_key.
    // @param rate_limit (required) https://www.terraform.io/docs/providers/aws/r/waf_rate_based_rule.html#rate_limit.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_rate_based_rule.html#id.
    // @param predicates (optional) predicates block.
    aws_waf_rate_based_rule(rname, metric_name, name, rate_key, rate_limit, id=null, predicates={}):: {
      metric_name: metric_name,
      name: name,
      rate_key: rate_key,
      rate_limit: rate_limit,
      [if id != null then 'id']: id,
      [if predicates != null then 'predicates']: predicates,
      rname:: rname,
    },
    // aws_cloudtrail - https://www.terraform.io/docs/providers/aws/r/cloudtrail.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param s3_bucket_name (required) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#s3_bucket_name.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#name.
    // @param is_organization_trail (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#is_organization_trail.
    // @param s3_key_prefix (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#s3_key_prefix.
    // @param cloud_watch_logs_group_arn (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#cloud_watch_logs_group_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#id.
    // @param include_global_service_events (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#include_global_service_events.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#kms_key_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#tags.
    // @param enable_log_file_validation (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#enable_log_file_validation.
    // @param enable_logging (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#enable_logging.
    // @param is_multi_region_trail (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#is_multi_region_trail.
    // @param cloud_watch_logs_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#cloud_watch_logs_role_arn.
    // @param sns_topic_name (optional) https://www.terraform.io/docs/providers/aws/r/cloudtrail.html#sns_topic_name.
    // @param event_selector (optional) event_selector block.
    aws_cloudtrail(rname, s3_bucket_name, name, is_organization_trail=null, s3_key_prefix=null, cloud_watch_logs_group_arn=null, id=null, include_global_service_events=null, kms_key_id=null, tags=null, enable_log_file_validation=null, enable_logging=null, is_multi_region_trail=null, cloud_watch_logs_role_arn=null, sns_topic_name=null, event_selector={}):: {
      s3_bucket_name: s3_bucket_name,
      name: name,
      [if is_organization_trail != null then 'is_organization_trail']: is_organization_trail,
      [if s3_key_prefix != null then 's3_key_prefix']: s3_key_prefix,
      [if cloud_watch_logs_group_arn != null then 'cloud_watch_logs_group_arn']: cloud_watch_logs_group_arn,
      [if id != null then 'id']: id,
      [if include_global_service_events != null then 'include_global_service_events']: include_global_service_events,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if tags != null then 'tags']: tags,
      [if enable_log_file_validation != null then 'enable_log_file_validation']: enable_log_file_validation,
      [if enable_logging != null then 'enable_logging']: enable_logging,
      [if is_multi_region_trail != null then 'is_multi_region_trail']: is_multi_region_trail,
      [if cloud_watch_logs_role_arn != null then 'cloud_watch_logs_role_arn']: cloud_watch_logs_role_arn,
      [if sns_topic_name != null then 'sns_topic_name']: sns_topic_name,
      [if event_selector != null then 'event_selector']: event_selector,
      rname:: rname,
      arn:: '${aws_cloudtrail.%s.arn}' % rname,
      home_region:: '${aws_cloudtrail.%s.home_region}' % rname,
    },
    // aws_db_option_group - https://www.terraform.io/docs/providers/aws/r/db_option_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param major_engine_version (required) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#major_engine_version.
    // @param engine_name (required) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#engine_name.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#name_prefix.
    // @param option_group_description (optional) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#option_group_description.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_option_group.html#id.
    // @param timeouts (optional) timeouts block.
    // @param option (optional) option block.
    aws_db_option_group(rname, major_engine_version, engine_name, name=null, name_prefix=null, option_group_description=null, tags=null, id=null, timeouts={}, option={}):: {
      major_engine_version: major_engine_version,
      engine_name: engine_name,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if option_group_description != null then 'option_group_description']: option_group_description,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      [if option != null then 'option']: option,
      rname:: rname,
      arn:: '${aws_db_option_group.%s.arn}' % rname,
    },
    // aws_main_route_table_association - https://www.terraform.io/docs/providers/aws/r/main_route_table_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param route_table_id (required) https://www.terraform.io/docs/providers/aws/r/main_route_table_association.html#route_table_id.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/main_route_table_association.html#vpc_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/main_route_table_association.html#id.
    aws_main_route_table_association(rname, route_table_id, vpc_id, id=null):: {
      route_table_id: route_table_id,
      vpc_id: vpc_id,
      [if id != null then 'id']: id,
      rname:: rname,
      original_route_table_id:: '${aws_main_route_table_association.%s.original_route_table_id}' % rname,
    },
    // aws_lambda_alias - https://www.terraform.io/docs/providers/aws/r/lambda_alias.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/lambda_alias.html#name.
    // @param function_name (required) https://www.terraform.io/docs/providers/aws/r/lambda_alias.html#function_name.
    // @param function_version (required) https://www.terraform.io/docs/providers/aws/r/lambda_alias.html#function_version.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lambda_alias.html#id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/lambda_alias.html#description.
    // @param routing_config (optional) routing_config block.
    aws_lambda_alias(rname, name, function_name, function_version, id=null, description=null, routing_config={}):: {
      name: name,
      function_name: function_name,
      function_version: function_version,
      [if id != null then 'id']: id,
      [if description != null then 'description']: description,
      [if routing_config != null then 'routing_config']: routing_config,
      rname:: rname,
      invoke_arn:: '${aws_lambda_alias.%s.invoke_arn}' % rname,
      arn:: '${aws_lambda_alias.%s.arn}' % rname,
    },
    // aws_redshift_cluster - https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_identifier.
    // @param node_type (required) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#node_type.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#vpc_security_group_ids.
    // @param cluster_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_subnet_group_name.
    // @param encrypted (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#encrypted.
    // @param iam_roles (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#iam_roles.
    // @param cluster_security_groups (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_security_groups.
    // @param master_password (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#master_password.
    // @param publicly_accessible (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#publicly_accessible.
    // @param snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#snapshot_identifier.
    // @param automated_snapshot_retention_period (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#automated_snapshot_retention_period.
    // @param bucket_name (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#bucket_name.
    // @param cluster_revision_number (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_revision_number.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#tags.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#kms_key_id.
    // @param snapshot_cluster_identifier (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#snapshot_cluster_identifier.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#availability_zone.
    // @param cluster_public_key (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_public_key.
    // @param final_snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#final_snapshot_identifier.
    // @param enable_logging (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#enable_logging.
    // @param cluster_parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_parameter_group_name.
    // @param cluster_version (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_version.
    // @param database_name (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#database_name.
    // @param enhanced_vpc_routing (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#enhanced_vpc_routing.
    // @param owner_account (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#owner_account.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#port.
    // @param endpoint (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#endpoint.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#id.
    // @param skip_final_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#skip_final_snapshot.
    // @param allow_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#allow_version_upgrade.
    // @param elastic_ip (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#elastic_ip.
    // @param number_of_nodes (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#number_of_nodes.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#preferred_maintenance_window.
    // @param s3_key_prefix (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#s3_key_prefix.
    // @param cluster_type (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#cluster_type.
    // @param master_username (optional) https://www.terraform.io/docs/providers/aws/r/redshift_cluster.html#master_username.
    // @param logging (optional) logging block.
    // @param snapshot_copy (optional) snapshot_copy block.
    // @param timeouts (optional) timeouts block.
    aws_redshift_cluster(rname, cluster_identifier, node_type, vpc_security_group_ids=null, cluster_subnet_group_name=null, encrypted=null, iam_roles=null, cluster_security_groups=null, master_password=null, publicly_accessible=null, snapshot_identifier=null, automated_snapshot_retention_period=null, bucket_name=null, cluster_revision_number=null, tags=null, kms_key_id=null, snapshot_cluster_identifier=null, availability_zone=null, cluster_public_key=null, final_snapshot_identifier=null, enable_logging=null, cluster_parameter_group_name=null, cluster_version=null, database_name=null, enhanced_vpc_routing=null, owner_account=null, port=null, endpoint=null, id=null, skip_final_snapshot=null, allow_version_upgrade=null, elastic_ip=null, number_of_nodes=null, preferred_maintenance_window=null, s3_key_prefix=null, cluster_type=null, master_username=null, logging={}, snapshot_copy={}, timeouts={}):: {
      cluster_identifier: cluster_identifier,
      node_type: node_type,
      [if vpc_security_group_ids != null then 'vpc_security_group_ids']: vpc_security_group_ids,
      [if cluster_subnet_group_name != null then 'cluster_subnet_group_name']: cluster_subnet_group_name,
      [if encrypted != null then 'encrypted']: encrypted,
      [if iam_roles != null then 'iam_roles']: iam_roles,
      [if cluster_security_groups != null then 'cluster_security_groups']: cluster_security_groups,
      [if master_password != null then 'master_password']: master_password,
      [if publicly_accessible != null then 'publicly_accessible']: publicly_accessible,
      [if snapshot_identifier != null then 'snapshot_identifier']: snapshot_identifier,
      [if automated_snapshot_retention_period != null then 'automated_snapshot_retention_period']: automated_snapshot_retention_period,
      [if bucket_name != null then 'bucket_name']: bucket_name,
      [if cluster_revision_number != null then 'cluster_revision_number']: cluster_revision_number,
      [if tags != null then 'tags']: tags,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if snapshot_cluster_identifier != null then 'snapshot_cluster_identifier']: snapshot_cluster_identifier,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if cluster_public_key != null then 'cluster_public_key']: cluster_public_key,
      [if final_snapshot_identifier != null then 'final_snapshot_identifier']: final_snapshot_identifier,
      [if enable_logging != null then 'enable_logging']: enable_logging,
      [if cluster_parameter_group_name != null then 'cluster_parameter_group_name']: cluster_parameter_group_name,
      [if cluster_version != null then 'cluster_version']: cluster_version,
      [if database_name != null then 'database_name']: database_name,
      [if enhanced_vpc_routing != null then 'enhanced_vpc_routing']: enhanced_vpc_routing,
      [if owner_account != null then 'owner_account']: owner_account,
      [if port != null then 'port']: port,
      [if endpoint != null then 'endpoint']: endpoint,
      [if id != null then 'id']: id,
      [if skip_final_snapshot != null then 'skip_final_snapshot']: skip_final_snapshot,
      [if allow_version_upgrade != null then 'allow_version_upgrade']: allow_version_upgrade,
      [if elastic_ip != null then 'elastic_ip']: elastic_ip,
      [if number_of_nodes != null then 'number_of_nodes']: number_of_nodes,
      [if preferred_maintenance_window != null then 'preferred_maintenance_window']: preferred_maintenance_window,
      [if s3_key_prefix != null then 's3_key_prefix']: s3_key_prefix,
      [if cluster_type != null then 'cluster_type']: cluster_type,
      [if master_username != null then 'master_username']: master_username,
      [if logging != null then 'logging']: logging,
      [if snapshot_copy != null then 'snapshot_copy']: snapshot_copy,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      dns_name:: '${aws_redshift_cluster.%s.dns_name}' % rname,
      arn:: '${aws_redshift_cluster.%s.arn}' % rname,
    },
    // aws_vpc_endpoint_service - https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param network_load_balancer_arns (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service.html#network_load_balancer_arns.
    // @param acceptance_required (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service.html#acceptance_required.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service.html#tags.
    // @param allowed_principals (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_service.html#allowed_principals.
    aws_vpc_endpoint_service(rname, network_load_balancer_arns, acceptance_required, id=null, tags=null, allowed_principals=null):: {
      network_load_balancer_arns: network_load_balancer_arns,
      acceptance_required: acceptance_required,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if allowed_principals != null then 'allowed_principals']: allowed_principals,
      rname:: rname,
      availability_zones:: '${aws_vpc_endpoint_service.%s.availability_zones}' % rname,
      base_endpoint_dns_names:: '${aws_vpc_endpoint_service.%s.base_endpoint_dns_names}' % rname,
      manages_vpc_endpoints:: '${aws_vpc_endpoint_service.%s.manages_vpc_endpoints}' % rname,
      private_dns_name:: '${aws_vpc_endpoint_service.%s.private_dns_name}' % rname,
      service_name:: '${aws_vpc_endpoint_service.%s.service_name}' % rname,
      service_type:: '${aws_vpc_endpoint_service.%s.service_type}' % rname,
      state:: '${aws_vpc_endpoint_service.%s.state}' % rname,
    },
    // aws_db_parameter_group - https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param family (required) https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html#family.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html#name.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html#name_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_parameter_group.html#tags.
    // @param parameter (optional) parameter block.
    aws_db_parameter_group(rname, family, description=null, id=null, name=null, name_prefix=null, tags=null, parameter={}):: {
      family: family,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if tags != null then 'tags']: tags,
      [if parameter != null then 'parameter']: parameter,
      rname:: rname,
      arn:: '${aws_db_parameter_group.%s.arn}' % rname,
    },
    // aws_efs_file_system - https://www.terraform.io/docs/providers/aws/r/efs_file_system.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param encrypted (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#encrypted.
    // @param performance_mode (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#performance_mode.
    // @param reference_name (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#reference_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#tags.
    // @param throughput_mode (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#throughput_mode.
    // @param creation_token (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#creation_token.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#id.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#kms_key_id.
    // @param provisioned_throughput_in_mibps (optional) https://www.terraform.io/docs/providers/aws/r/efs_file_system.html#provisioned_throughput_in_mibps.
    // @param lifecycle_policy (optional) lifecycle_policy block.
    aws_efs_file_system(rname, encrypted=null, performance_mode=null, reference_name=null, tags=null, throughput_mode=null, creation_token=null, id=null, kms_key_id=null, provisioned_throughput_in_mibps=null, lifecycle_policy={}):: {
      [if encrypted != null then 'encrypted']: encrypted,
      [if performance_mode != null then 'performance_mode']: performance_mode,
      [if reference_name != null then 'reference_name']: reference_name,
      [if tags != null then 'tags']: tags,
      [if throughput_mode != null then 'throughput_mode']: throughput_mode,
      [if creation_token != null then 'creation_token']: creation_token,
      [if id != null then 'id']: id,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if provisioned_throughput_in_mibps != null then 'provisioned_throughput_in_mibps']: provisioned_throughput_in_mibps,
      [if lifecycle_policy != null then 'lifecycle_policy']: lifecycle_policy,
      rname:: rname,
      dns_name:: '${aws_efs_file_system.%s.dns_name}' % rname,
      arn:: '${aws_efs_file_system.%s.arn}' % rname,
    },
    // aws_glacier_vault_lock - https://www.terraform.io/docs/providers/aws/r/glacier_vault_lock.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy (required) https://www.terraform.io/docs/providers/aws/r/glacier_vault_lock.html#policy.
    // @param vault_name (required) https://www.terraform.io/docs/providers/aws/r/glacier_vault_lock.html#vault_name.
    // @param complete_lock (required) https://www.terraform.io/docs/providers/aws/r/glacier_vault_lock.html#complete_lock.
    // @param ignore_deletion_error (optional) https://www.terraform.io/docs/providers/aws/r/glacier_vault_lock.html#ignore_deletion_error.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glacier_vault_lock.html#id.
    aws_glacier_vault_lock(rname, policy, vault_name, complete_lock, ignore_deletion_error=null, id=null):: {
      policy: policy,
      vault_name: vault_name,
      complete_lock: complete_lock,
      [if ignore_deletion_error != null then 'ignore_deletion_error']: ignore_deletion_error,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_ses_event_destination - https://www.terraform.io/docs/providers/aws/r/ses_event_destination.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param matching_types (required) https://www.terraform.io/docs/providers/aws/r/ses_event_destination.html#matching_types.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ses_event_destination.html#name.
    // @param configuration_set_name (required) https://www.terraform.io/docs/providers/aws/r/ses_event_destination.html#configuration_set_name.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/ses_event_destination.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_event_destination.html#id.
    // @param kinesis_destination (optional) kinesis_destination block.
    // @param sns_destination (optional) sns_destination block.
    // @param cloudwatch_destination (optional) cloudwatch_destination block.
    aws_ses_event_destination(rname, matching_types, name, configuration_set_name, enabled=null, id=null, kinesis_destination={}, sns_destination={}, cloudwatch_destination={}):: {
      matching_types: matching_types,
      name: name,
      configuration_set_name: configuration_set_name,
      [if enabled != null then 'enabled']: enabled,
      [if id != null then 'id']: id,
      [if kinesis_destination != null then 'kinesis_destination']: kinesis_destination,
      [if sns_destination != null then 'sns_destination']: sns_destination,
      [if cloudwatch_destination != null then 'cloudwatch_destination']: cloudwatch_destination,
      rname:: rname,
    },
    // aws_elasticsearch_domain_policy - https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param access_policies (required) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain_policy.html#access_policies.
    // @param domain_name (required) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain_policy.html#domain_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elasticsearch_domain_policy.html#id.
    aws_elasticsearch_domain_policy(rname, access_policies, domain_name, id=null):: {
      access_policies: access_policies,
      domain_name: domain_name,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_instance - https://www.terraform.io/docs/providers/aws/r/instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/instance.html#instance_type.
    // @param ami (required) https://www.terraform.io/docs/providers/aws/r/instance.html#ami.
    // @param associate_public_ip_address (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#associate_public_ip_address.
    // @param ebs_optimized (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#ebs_optimized.
    // @param host_id (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#host_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#id.
    // @param instance_initiated_shutdown_behavior (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#instance_initiated_shutdown_behavior.
    // @param key_name (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#key_name.
    // @param monitoring (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#monitoring.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#availability_zone.
    // @param cpu_core_count (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#cpu_core_count.
    // @param disable_api_termination (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#disable_api_termination.
    // @param placement_group (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#placement_group.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#security_groups.
    // @param user_data_base64 (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#user_data_base64.
    // @param cpu_threads_per_core (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#cpu_threads_per_core.
    // @param ipv6_address_count (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#ipv6_address_count.
    // @param source_dest_check (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#source_dest_check.
    // @param tenancy (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#tenancy.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#vpc_security_group_ids.
    // @param ipv6_addresses (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#ipv6_addresses.
    // @param iam_instance_profile (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#iam_instance_profile.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#tags.
    // @param get_password_data (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#get_password_data.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#subnet_id.
    // @param private_ip (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#private_ip.
    // @param user_data (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#user_data.
    // @param volume_tags (optional) https://www.terraform.io/docs/providers/aws/r/instance.html#volume_tags.
    // @param ephemeral_block_device (optional) ephemeral_block_device block.
    // @param network_interface (optional) network_interface block.
    // @param root_block_device (optional) root_block_device block.
    // @param timeouts (optional) timeouts block.
    // @param credit_specification (optional) credit_specification block.
    // @param ebs_block_device (optional) ebs_block_device block.
    aws_instance(rname, instance_type, ami, associate_public_ip_address=null, ebs_optimized=null, host_id=null, id=null, instance_initiated_shutdown_behavior=null, key_name=null, monitoring=null, availability_zone=null, cpu_core_count=null, disable_api_termination=null, placement_group=null, security_groups=null, user_data_base64=null, cpu_threads_per_core=null, ipv6_address_count=null, source_dest_check=null, tenancy=null, vpc_security_group_ids=null, ipv6_addresses=null, iam_instance_profile=null, tags=null, get_password_data=null, subnet_id=null, private_ip=null, user_data=null, volume_tags=null, ephemeral_block_device={}, network_interface={}, root_block_device={}, timeouts={}, credit_specification={}, ebs_block_device={}):: {
      instance_type: instance_type,
      ami: ami,
      [if associate_public_ip_address != null then 'associate_public_ip_address']: associate_public_ip_address,
      [if ebs_optimized != null then 'ebs_optimized']: ebs_optimized,
      [if host_id != null then 'host_id']: host_id,
      [if id != null then 'id']: id,
      [if instance_initiated_shutdown_behavior != null then 'instance_initiated_shutdown_behavior']: instance_initiated_shutdown_behavior,
      [if key_name != null then 'key_name']: key_name,
      [if monitoring != null then 'monitoring']: monitoring,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if cpu_core_count != null then 'cpu_core_count']: cpu_core_count,
      [if disable_api_termination != null then 'disable_api_termination']: disable_api_termination,
      [if placement_group != null then 'placement_group']: placement_group,
      [if security_groups != null then 'security_groups']: security_groups,
      [if user_data_base64 != null then 'user_data_base64']: user_data_base64,
      [if cpu_threads_per_core != null then 'cpu_threads_per_core']: cpu_threads_per_core,
      [if ipv6_address_count != null then 'ipv6_address_count']: ipv6_address_count,
      [if source_dest_check != null then 'source_dest_check']: source_dest_check,
      [if tenancy != null then 'tenancy']: tenancy,
      [if vpc_security_group_ids != null then 'vpc_security_group_ids']: vpc_security_group_ids,
      [if ipv6_addresses != null then 'ipv6_addresses']: ipv6_addresses,
      [if iam_instance_profile != null then 'iam_instance_profile']: iam_instance_profile,
      [if tags != null then 'tags']: tags,
      [if get_password_data != null then 'get_password_data']: get_password_data,
      [if subnet_id != null then 'subnet_id']: subnet_id,
      [if private_ip != null then 'private_ip']: private_ip,
      [if user_data != null then 'user_data']: user_data,
      [if volume_tags != null then 'volume_tags']: volume_tags,
      [if ephemeral_block_device != null then 'ephemeral_block_device']: ephemeral_block_device,
      [if network_interface != null then 'network_interface']: network_interface,
      [if root_block_device != null then 'root_block_device']: root_block_device,
      [if timeouts != null then 'timeouts']: timeouts,
      [if credit_specification != null then 'credit_specification']: credit_specification,
      [if ebs_block_device != null then 'ebs_block_device']: ebs_block_device,
      rname:: rname,
      arn:: '${aws_instance.%s.arn}' % rname,
      network_interface_id:: '${aws_instance.%s.network_interface_id}' % rname,
      primary_network_interface_id:: '${aws_instance.%s.primary_network_interface_id}' % rname,
      private_dns:: '${aws_instance.%s.private_dns}' % rname,
      public_dns:: '${aws_instance.%s.public_dns}' % rname,
      password_data:: '${aws_instance.%s.password_data}' % rname,
      instance_state:: '${aws_instance.%s.instance_state}' % rname,
      public_ip:: '${aws_instance.%s.public_ip}' % rname,
    },
    // aws_securityhub_account - https://www.terraform.io/docs/providers/aws/r/securityhub_account.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/securityhub_account.html#id.
    aws_securityhub_account(rname, id=null):: {
      [if id != null then 'id']: id,
      rname:: rname,
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
      [if aws_account_id != null then 'aws_account_id']: aws_account_id,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if namespace != null then 'namespace']: namespace,
      rname:: rname,
      arn:: '${aws_quicksight_group.%s.arn}' % rname,
    },
    // aws_macie_s3_bucket_association - https://www.terraform.io/docs/providers/aws/r/macie_s3_bucket_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket_name (required) https://www.terraform.io/docs/providers/aws/r/macie_s3_bucket_association.html#bucket_name.
    // @param prefix (optional) https://www.terraform.io/docs/providers/aws/r/macie_s3_bucket_association.html#prefix.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/macie_s3_bucket_association.html#id.
    // @param member_account_id (optional) https://www.terraform.io/docs/providers/aws/r/macie_s3_bucket_association.html#member_account_id.
    // @param classification_type (optional) classification_type block.
    aws_macie_s3_bucket_association(rname, bucket_name, prefix=null, id=null, member_account_id=null, classification_type={}):: {
      bucket_name: bucket_name,
      [if prefix != null then 'prefix']: prefix,
      [if id != null then 'id']: id,
      [if member_account_id != null then 'member_account_id']: member_account_id,
      [if classification_type != null then 'classification_type']: classification_type,
      rname:: rname,
    },
    // aws_vpc_dhcp_options_association - https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options_association.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param dhcp_options_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options_association.html#dhcp_options_id.
    // @param vpc_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options_association.html#vpc_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_dhcp_options_association.html#id.
    aws_vpc_dhcp_options_association(rname, dhcp_options_id, vpc_id, id=null):: {
      dhcp_options_id: dhcp_options_id,
      vpc_id: vpc_id,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_worklink_fleet - https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html#name.
    // @param display_name (optional) https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html#display_name.
    // @param audit_stream_arn (optional) https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html#audit_stream_arn.
    // @param device_ca_certificate (optional) https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html#device_ca_certificate.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html#id.
    // @param optimize_for_end_user_location (optional) https://www.terraform.io/docs/providers/aws/r/worklink_fleet.html#optimize_for_end_user_location.
    // @param network (optional) network block.
    // @param identity_provider (optional) identity_provider block.
    aws_worklink_fleet(rname, name, display_name=null, audit_stream_arn=null, device_ca_certificate=null, id=null, optimize_for_end_user_location=null, network={}, identity_provider={}):: {
      name: name,
      [if display_name != null then 'display_name']: display_name,
      [if audit_stream_arn != null then 'audit_stream_arn']: audit_stream_arn,
      [if device_ca_certificate != null then 'device_ca_certificate']: device_ca_certificate,
      [if id != null then 'id']: id,
      [if optimize_for_end_user_location != null then 'optimize_for_end_user_location']: optimize_for_end_user_location,
      [if network != null then 'network']: network,
      [if identity_provider != null then 'identity_provider']: identity_provider,
      rname:: rname,
      arn:: '${aws_worklink_fleet.%s.arn}' % rname,
      created_time:: '${aws_worklink_fleet.%s.created_time}' % rname,
      company_code:: '${aws_worklink_fleet.%s.company_code}' % rname,
      last_updated_time:: '${aws_worklink_fleet.%s.last_updated_time}' % rname,
    },
    // aws_alb_listener_rule - https://www.terraform.io/docs/providers/aws/r/alb_listener_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param listener_arn (required) https://www.terraform.io/docs/providers/aws/r/alb_listener_rule.html#listener_arn.
    // @param action (required) action block.
    // @param condition (required) condition block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener_rule.html#id.
    // @param priority (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener_rule.html#priority.
    aws_alb_listener_rule(rname, listener_arn, action, condition, id=null, priority=null):: {
      listener_arn: listener_arn,
      action: action,
      condition: condition,
      [if id != null then 'id']: id,
      [if priority != null then 'priority']: priority,
      rname:: rname,
      arn:: '${aws_alb_listener_rule.%s.arn}' % rname,
    },
    // aws_kms_grant - https://www.terraform.io/docs/providers/aws/r/kms_grant.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param grantee_principal (required) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#grantee_principal.
    // @param key_id (required) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#key_id.
    // @param operations (required) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#operations.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#name.
    // @param retiring_principal (optional) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#retiring_principal.
    // @param grant_creation_tokens (optional) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#grant_creation_tokens.
    // @param retire_on_delete (optional) https://www.terraform.io/docs/providers/aws/r/kms_grant.html#retire_on_delete.
    // @param constraints (optional) constraints block.
    aws_kms_grant(rname, grantee_principal, key_id, operations, id=null, name=null, retiring_principal=null, grant_creation_tokens=null, retire_on_delete=null, constraints={}):: {
      grantee_principal: grantee_principal,
      key_id: key_id,
      operations: operations,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if retiring_principal != null then 'retiring_principal']: retiring_principal,
      [if grant_creation_tokens != null then 'grant_creation_tokens']: grant_creation_tokens,
      [if retire_on_delete != null then 'retire_on_delete']: retire_on_delete,
      [if constraints != null then 'constraints']: constraints,
      rname:: rname,
      grant_id:: '${aws_kms_grant.%s.grant_id}' % rname,
      grant_token:: '${aws_kms_grant.%s.grant_token}' % rname,
    },
    // aws_lb - https://www.terraform.io/docs/providers/aws/r/lb.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#name.
    // @param enable_http2 (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#enable_http2.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#id.
    // @param load_balancer_type (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#load_balancer_type.
    // @param ip_address_type (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#ip_address_type.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#name_prefix.
    // @param subnets (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#subnets.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#tags.
    // @param idle_timeout (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#idle_timeout.
    // @param internal (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#internal.
    // @param security_groups (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#security_groups.
    // @param enable_cross_zone_load_balancing (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#enable_cross_zone_load_balancing.
    // @param enable_deletion_protection (optional) https://www.terraform.io/docs/providers/aws/r/lb.html#enable_deletion_protection.
    // @param access_logs (optional) access_logs block.
    // @param subnet_mapping (optional) subnet_mapping block.
    // @param timeouts (optional) timeouts block.
    aws_lb(rname, name=null, enable_http2=null, id=null, load_balancer_type=null, ip_address_type=null, name_prefix=null, subnets=null, tags=null, idle_timeout=null, internal=null, security_groups=null, enable_cross_zone_load_balancing=null, enable_deletion_protection=null, access_logs={}, subnet_mapping={}, timeouts={}):: {
      [if name != null then 'name']: name,
      [if enable_http2 != null then 'enable_http2']: enable_http2,
      [if id != null then 'id']: id,
      [if load_balancer_type != null then 'load_balancer_type']: load_balancer_type,
      [if ip_address_type != null then 'ip_address_type']: ip_address_type,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if subnets != null then 'subnets']: subnets,
      [if tags != null then 'tags']: tags,
      [if idle_timeout != null then 'idle_timeout']: idle_timeout,
      [if internal != null then 'internal']: internal,
      [if security_groups != null then 'security_groups']: security_groups,
      [if enable_cross_zone_load_balancing != null then 'enable_cross_zone_load_balancing']: enable_cross_zone_load_balancing,
      [if enable_deletion_protection != null then 'enable_deletion_protection']: enable_deletion_protection,
      [if access_logs != null then 'access_logs']: access_logs,
      [if subnet_mapping != null then 'subnet_mapping']: subnet_mapping,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      vpc_id:: '${aws_lb.%s.vpc_id}' % rname,
      zone_id:: '${aws_lb.%s.zone_id}' % rname,
      arn:: '${aws_lb.%s.arn}' % rname,
      dns_name:: '${aws_lb.%s.dns_name}' % rname,
      arn_suffix:: '${aws_lb.%s.arn_suffix}' % rname,
    },
    // aws_pinpoint_email_channel - https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application_id (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html#application_id.
    // @param from_address (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html#from_address.
    // @param identity (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html#identity.
    // @param role_arn (required) https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html#role_arn.
    // @param enabled (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html#enabled.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/pinpoint_email_channel.html#id.
    aws_pinpoint_email_channel(rname, application_id, from_address, identity, role_arn, enabled=null, id=null):: {
      application_id: application_id,
      from_address: from_address,
      identity: identity,
      role_arn: role_arn,
      [if enabled != null then 'enabled']: enabled,
      [if id != null then 'id']: id,
      rname:: rname,
      messages_per_second:: '${aws_pinpoint_email_channel.%s.messages_per_second}' % rname,
    },
    // aws_security_group_rule - https://www.terraform.io/docs/providers/aws/r/security_group_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param from_port (required) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#from_port.
    // @param protocol (required) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#protocol.
    // @param to_port (required) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#to_port.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#type.
    // @param security_group_id (required) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#security_group_id.
    // @param cidr_blocks (optional) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#cidr_blocks.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#description.
    // @param source_security_group_id (optional) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#source_security_group_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#id.
    // @param ipv6_cidr_blocks (optional) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#ipv6_cidr_blocks.
    // @param prefix_list_ids (optional) https://www.terraform.io/docs/providers/aws/r/security_group_rule.html#prefix_list_ids.
    aws_security_group_rule(rname, from_port, protocol, to_port, type, security_group_id, cidr_blocks=null, description=null, source_security_group_id=null, id=null, ipv6_cidr_blocks=null, prefix_list_ids=null):: {
      from_port: from_port,
      protocol: protocol,
      to_port: to_port,
      type: type,
      security_group_id: security_group_id,
      [if cidr_blocks != null then 'cidr_blocks']: cidr_blocks,
      [if description != null then 'description']: description,
      [if source_security_group_id != null then 'source_security_group_id']: source_security_group_id,
      [if id != null then 'id']: id,
      [if ipv6_cidr_blocks != null then 'ipv6_cidr_blocks']: ipv6_cidr_blocks,
      [if prefix_list_ids != null then 'prefix_list_ids']: prefix_list_ids,
      rname:: rname,
    },
    // aws_vpc_peering_connection_options - https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_options.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param vpc_peering_connection_id (required) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_options.html#vpc_peering_connection_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_peering_connection_options.html#id.
    // @param requester (optional) requester block.
    // @param accepter (optional) accepter block.
    aws_vpc_peering_connection_options(rname, vpc_peering_connection_id, id=null, requester={}, accepter={}):: {
      vpc_peering_connection_id: vpc_peering_connection_id,
      [if id != null then 'id']: id,
      [if requester != null then 'requester']: requester,
      [if accepter != null then 'accepter']: accepter,
      rname:: rname,
    },
    // aws_autoscaling_schedule - https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param autoscaling_group_name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#autoscaling_group_name.
    // @param scheduled_action_name (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#scheduled_action_name.
    // @param end_time (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#end_time.
    // @param min_size (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#min_size.
    // @param recurrence (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#recurrence.
    // @param start_time (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#start_time.
    // @param desired_capacity (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#desired_capacity.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#id.
    // @param max_size (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_schedule.html#max_size.
    aws_autoscaling_schedule(rname, autoscaling_group_name, scheduled_action_name, end_time=null, min_size=null, recurrence=null, start_time=null, desired_capacity=null, id=null, max_size=null):: {
      autoscaling_group_name: autoscaling_group_name,
      scheduled_action_name: scheduled_action_name,
      [if end_time != null then 'end_time']: end_time,
      [if min_size != null then 'min_size']: min_size,
      [if recurrence != null then 'recurrence']: recurrence,
      [if start_time != null then 'start_time']: start_time,
      [if desired_capacity != null then 'desired_capacity']: desired_capacity,
      [if id != null then 'id']: id,
      [if max_size != null then 'max_size']: max_size,
      rname:: rname,
      arn:: '${aws_autoscaling_schedule.%s.arn}' % rname,
    },
    // aws_directory_service_log_subscription - https://www.terraform.io/docs/providers/aws/r/directory_service_log_subscription.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param directory_id (required) https://www.terraform.io/docs/providers/aws/r/directory_service_log_subscription.html#directory_id.
    // @param log_group_name (required) https://www.terraform.io/docs/providers/aws/r/directory_service_log_subscription.html#log_group_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_log_subscription.html#id.
    aws_directory_service_log_subscription(rname, directory_id, log_group_name, id=null):: {
      directory_id: directory_id,
      log_group_name: log_group_name,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_iam_user_login_profile - https://www.terraform.io/docs/providers/aws/r/iam_user_login_profile.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param pgp_key (required) https://www.terraform.io/docs/providers/aws/r/iam_user_login_profile.html#pgp_key.
    // @param user (required) https://www.terraform.io/docs/providers/aws/r/iam_user_login_profile.html#user.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_login_profile.html#id.
    // @param password_length (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_login_profile.html#password_length.
    // @param password_reset_required (optional) https://www.terraform.io/docs/providers/aws/r/iam_user_login_profile.html#password_reset_required.
    aws_iam_user_login_profile(rname, pgp_key, user, id=null, password_length=null, password_reset_required=null):: {
      pgp_key: pgp_key,
      user: user,
      [if id != null then 'id']: id,
      [if password_length != null then 'password_length']: password_length,
      [if password_reset_required != null then 'password_reset_required']: password_reset_required,
      rname:: rname,
      encrypted_password:: '${aws_iam_user_login_profile.%s.encrypted_password}' % rname,
      key_fingerprint:: '${aws_iam_user_login_profile.%s.key_fingerprint}' % rname,
    },
    // aws_secretsmanager_secret_version - https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret_version.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param secret_id (required) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret_version.html#secret_id.
    // @param secret_binary (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret_version.html#secret_binary.
    // @param secret_string (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret_version.html#secret_string.
    // @param version_stages (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret_version.html#version_stages.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/secretsmanager_secret_version.html#id.
    aws_secretsmanager_secret_version(rname, secret_id, secret_binary=null, secret_string=null, version_stages=null, id=null):: {
      secret_id: secret_id,
      [if secret_binary != null then 'secret_binary']: secret_binary,
      [if secret_string != null then 'secret_string']: secret_string,
      [if version_stages != null then 'version_stages']: version_stages,
      [if id != null then 'id']: id,
      rname:: rname,
      version_id:: '${aws_secretsmanager_secret_version.%s.version_id}' % rname,
      arn:: '${aws_secretsmanager_secret_version.%s.arn}' % rname,
    },
    // aws_storagegateway_upload_buffer - https://www.terraform.io/docs/providers/aws/r/storagegateway_upload_buffer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param disk_id (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_upload_buffer.html#disk_id.
    // @param gateway_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_upload_buffer.html#gateway_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_upload_buffer.html#id.
    aws_storagegateway_upload_buffer(rname, disk_id, gateway_arn, id=null):: {
      disk_id: disk_id,
      gateway_arn: gateway_arn,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_cloud9_environment_ec2 - https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_type (required) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#instance_type.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#name.
    // @param owner_arn (optional) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#owner_arn.
    // @param subnet_id (optional) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#subnet_id.
    // @param automatic_stop_time_minutes (optional) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#automatic_stop_time_minutes.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloud9_environment_ec2.html#id.
    aws_cloud9_environment_ec2(rname, instance_type, name, owner_arn=null, subnet_id=null, automatic_stop_time_minutes=null, description=null, id=null):: {
      instance_type: instance_type,
      name: name,
      [if owner_arn != null then 'owner_arn']: owner_arn,
      [if subnet_id != null then 'subnet_id']: subnet_id,
      [if automatic_stop_time_minutes != null then 'automatic_stop_time_minutes']: automatic_stop_time_minutes,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
      type:: '${aws_cloud9_environment_ec2.%s.type}' % rname,
      arn:: '${aws_cloud9_environment_ec2.%s.arn}' % rname,
    },
    // aws_db_security_group - https://www.terraform.io/docs/providers/aws/r/db_security_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/db_security_group.html#name.
    // @param ingress (required) ingress block.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/db_security_group.html#tags.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/db_security_group.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/db_security_group.html#id.
    aws_db_security_group(rname, name, ingress, tags=null, description=null, id=null):: {
      name: name,
      ingress: ingress,
      [if tags != null then 'tags']: tags,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_db_security_group.%s.arn}' % rname,
    },
    // aws_dms_replication_subnet_group - https://www.terraform.io/docs/providers/aws/r/dms_replication_subnet_group.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param replication_subnet_group_description (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_subnet_group.html#replication_subnet_group_description.
    // @param replication_subnet_group_id (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_subnet_group.html#replication_subnet_group_id.
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/dms_replication_subnet_group.html#subnet_ids.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_subnet_group.html#tags.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dms_replication_subnet_group.html#id.
    aws_dms_replication_subnet_group(rname, replication_subnet_group_description, replication_subnet_group_id, subnet_ids, tags=null, id=null):: {
      replication_subnet_group_description: replication_subnet_group_description,
      replication_subnet_group_id: replication_subnet_group_id,
      subnet_ids: subnet_ids,
      [if tags != null then 'tags']: tags,
      [if id != null then 'id']: id,
      rname:: rname,
      vpc_id:: '${aws_dms_replication_subnet_group.%s.vpc_id}' % rname,
      replication_subnet_group_arn:: '${aws_dms_replication_subnet_group.%s.replication_subnet_group_arn}' % rname,
    },
    // aws_config_configuration_recorder_status - https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder_status.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param is_enabled (required) https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder_status.html#is_enabled.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder_status.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_configuration_recorder_status.html#id.
    aws_config_configuration_recorder_status(rname, is_enabled, name, id=null):: {
      is_enabled: is_enabled,
      name: name,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_opsworks_static_web_layer - https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param stack_id (required) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#stack_id.
    // @param auto_healing (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#auto_healing.
    // @param custom_undeploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_undeploy_recipes.
    // @param instance_shutdown_timeout (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#instance_shutdown_timeout.
    // @param system_packages (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#system_packages.
    // @param auto_assign_public_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#auto_assign_public_ips.
    // @param custom_deploy_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_deploy_recipes.
    // @param elastic_load_balancer (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#elastic_load_balancer.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#id.
    // @param install_updates_on_boot (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#install_updates_on_boot.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#name.
    // @param custom_configure_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_configure_recipes.
    // @param custom_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_security_group_ids.
    // @param custom_setup_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_setup_recipes.
    // @param custom_shutdown_recipes (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_shutdown_recipes.
    // @param auto_assign_elastic_ips (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#auto_assign_elastic_ips.
    // @param custom_instance_profile_arn (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_instance_profile_arn.
    // @param custom_json (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#custom_json.
    // @param drain_elb_on_shutdown (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#drain_elb_on_shutdown.
    // @param use_ebs_optimized_instances (optional) https://www.terraform.io/docs/providers/aws/r/opsworks_static_web_layer.html#use_ebs_optimized_instances.
    // @param ebs_volume (optional) ebs_volume block.
    aws_opsworks_static_web_layer(rname, stack_id, auto_healing=null, custom_undeploy_recipes=null, instance_shutdown_timeout=null, system_packages=null, auto_assign_public_ips=null, custom_deploy_recipes=null, elastic_load_balancer=null, id=null, install_updates_on_boot=null, name=null, custom_configure_recipes=null, custom_security_group_ids=null, custom_setup_recipes=null, custom_shutdown_recipes=null, auto_assign_elastic_ips=null, custom_instance_profile_arn=null, custom_json=null, drain_elb_on_shutdown=null, use_ebs_optimized_instances=null, ebs_volume={}):: {
      stack_id: stack_id,
      [if auto_healing != null then 'auto_healing']: auto_healing,
      [if custom_undeploy_recipes != null then 'custom_undeploy_recipes']: custom_undeploy_recipes,
      [if instance_shutdown_timeout != null then 'instance_shutdown_timeout']: instance_shutdown_timeout,
      [if system_packages != null then 'system_packages']: system_packages,
      [if auto_assign_public_ips != null then 'auto_assign_public_ips']: auto_assign_public_ips,
      [if custom_deploy_recipes != null then 'custom_deploy_recipes']: custom_deploy_recipes,
      [if elastic_load_balancer != null then 'elastic_load_balancer']: elastic_load_balancer,
      [if id != null then 'id']: id,
      [if install_updates_on_boot != null then 'install_updates_on_boot']: install_updates_on_boot,
      [if name != null then 'name']: name,
      [if custom_configure_recipes != null then 'custom_configure_recipes']: custom_configure_recipes,
      [if custom_security_group_ids != null then 'custom_security_group_ids']: custom_security_group_ids,
      [if custom_setup_recipes != null then 'custom_setup_recipes']: custom_setup_recipes,
      [if custom_shutdown_recipes != null then 'custom_shutdown_recipes']: custom_shutdown_recipes,
      [if auto_assign_elastic_ips != null then 'auto_assign_elastic_ips']: auto_assign_elastic_ips,
      [if custom_instance_profile_arn != null then 'custom_instance_profile_arn']: custom_instance_profile_arn,
      [if custom_json != null then 'custom_json']: custom_json,
      [if drain_elb_on_shutdown != null then 'drain_elb_on_shutdown']: drain_elb_on_shutdown,
      [if use_ebs_optimized_instances != null then 'use_ebs_optimized_instances']: use_ebs_optimized_instances,
      [if ebs_volume != null then 'ebs_volume']: ebs_volume,
      rname:: rname,
    },
    // aws_config_aggregate_authorization - https://www.terraform.io/docs/providers/aws/r/config_aggregate_authorization.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param account_id (required) https://www.terraform.io/docs/providers/aws/r/config_aggregate_authorization.html#account_id.
    // @param region (required) https://www.terraform.io/docs/providers/aws/r/config_aggregate_authorization.html#region.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/config_aggregate_authorization.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/config_aggregate_authorization.html#tags.
    aws_config_aggregate_authorization(rname, account_id, region, id=null, tags=null):: {
      account_id: account_id,
      region: region,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      arn:: '${aws_config_aggregate_authorization.%s.arn}' % rname,
    },
    // aws_mq_broker - https://www.terraform.io/docs/providers/aws/r/mq_broker.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param security_groups (required) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#security_groups.
    // @param engine_type (required) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#engine_type.
    // @param broker_name (required) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#broker_name.
    // @param engine_version (required) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#engine_version.
    // @param host_instance_type (required) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#host_instance_type.
    // @param user (required) user block.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#auto_minor_version_upgrade.
    // @param deployment_mode (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#deployment_mode.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#id.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#apply_immediately.
    // @param publicly_accessible (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#publicly_accessible.
    // @param subnet_ids (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#subnet_ids.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/mq_broker.html#tags.
    // @param maintenance_window_start_time (optional) maintenance_window_start_time block.
    // @param configuration (optional) configuration block.
    // @param logs (optional) logs block.
    aws_mq_broker(rname, security_groups, engine_type, broker_name, engine_version, host_instance_type, user, auto_minor_version_upgrade=null, deployment_mode=null, id=null, apply_immediately=null, publicly_accessible=null, subnet_ids=null, tags=null, maintenance_window_start_time={}, configuration={}, logs={}):: {
      security_groups: security_groups,
      engine_type: engine_type,
      broker_name: broker_name,
      engine_version: engine_version,
      host_instance_type: host_instance_type,
      user: user,
      [if auto_minor_version_upgrade != null then 'auto_minor_version_upgrade']: auto_minor_version_upgrade,
      [if deployment_mode != null then 'deployment_mode']: deployment_mode,
      [if id != null then 'id']: id,
      [if apply_immediately != null then 'apply_immediately']: apply_immediately,
      [if publicly_accessible != null then 'publicly_accessible']: publicly_accessible,
      [if subnet_ids != null then 'subnet_ids']: subnet_ids,
      [if tags != null then 'tags']: tags,
      [if maintenance_window_start_time != null then 'maintenance_window_start_time']: maintenance_window_start_time,
      [if configuration != null then 'configuration']: configuration,
      [if logs != null then 'logs']: logs,
      rname:: rname,
      arn:: '${aws_mq_broker.%s.arn}' % rname,
      instances:: '${aws_mq_broker.%s.instances}' % rname,
    },
    // aws_glue_security_configuration - https://www.terraform.io/docs/providers/aws/r/glue_security_configuration.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/glue_security_configuration.html#name.
    // @param encryption_configuration (required) encryption_configuration block.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/glue_security_configuration.html#id.
    aws_glue_security_configuration(rname, name, encryption_configuration, id=null):: {
      name: name,
      encryption_configuration: encryption_configuration,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_kms_ciphertext - https://www.terraform.io/docs/providers/aws/r/kms_ciphertext.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param key_id (required) https://www.terraform.io/docs/providers/aws/r/kms_ciphertext.html#key_id.
    // @param plaintext (required) https://www.terraform.io/docs/providers/aws/r/kms_ciphertext.html#plaintext.
    // @param context (optional) https://www.terraform.io/docs/providers/aws/r/kms_ciphertext.html#context.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kms_ciphertext.html#id.
    aws_kms_ciphertext(rname, key_id, plaintext, context=null, id=null):: {
      key_id: key_id,
      plaintext: plaintext,
      [if context != null then 'context']: context,
      [if id != null then 'id']: id,
      rname:: rname,
      ciphertext_blob:: '${aws_kms_ciphertext.%s.ciphertext_blob}' % rname,
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
      [if workgroup != null then 'workgroup']: workgroup,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_cloudwatch_dashboard - https://www.terraform.io/docs/providers/aws/r/cloudwatch_dashboard.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param dashboard_body (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_dashboard.html#dashboard_body.
    // @param dashboard_name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_dashboard.html#dashboard_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_dashboard.html#id.
    aws_cloudwatch_dashboard(rname, dashboard_body, dashboard_name, id=null):: {
      dashboard_body: dashboard_body,
      dashboard_name: dashboard_name,
      [if id != null then 'id']: id,
      rname:: rname,
      dashboard_arn:: '${aws_cloudwatch_dashboard.%s.dashboard_arn}' % rname,
    },
    // aws_elastic_beanstalk_configuration_template - https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param application (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html#application.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html#name.
    // @param solution_stack_name (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html#solution_stack_name.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html#description.
    // @param environment_id (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html#environment_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_configuration_template.html#id.
    // @param setting (optional) setting block.
    aws_elastic_beanstalk_configuration_template(rname, application, name, solution_stack_name=null, description=null, environment_id=null, id=null, setting={}):: {
      application: application,
      name: name,
      [if solution_stack_name != null then 'solution_stack_name']: solution_stack_name,
      [if description != null then 'description']: description,
      [if environment_id != null then 'environment_id']: environment_id,
      [if id != null then 'id']: id,
      [if setting != null then 'setting']: setting,
      rname:: rname,
    },
    // aws_dynamodb_table_item - https://www.terraform.io/docs/providers/aws/r/dynamodb_table_item.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param hash_key (required) https://www.terraform.io/docs/providers/aws/r/dynamodb_table_item.html#hash_key.
    // @param item (required) https://www.terraform.io/docs/providers/aws/r/dynamodb_table_item.html#item.
    // @param table_name (required) https://www.terraform.io/docs/providers/aws/r/dynamodb_table_item.html#table_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table_item.html#id.
    // @param range_key (optional) https://www.terraform.io/docs/providers/aws/r/dynamodb_table_item.html#range_key.
    aws_dynamodb_table_item(rname, hash_key, item, table_name, id=null, range_key=null):: {
      hash_key: hash_key,
      item: item,
      table_name: table_name,
      [if id != null then 'id']: id,
      [if range_key != null then 'range_key']: range_key,
      rname:: rname,
    },
    // aws_ses_email_identity - https://www.terraform.io/docs/providers/aws/r/ses_email_identity.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param email (required) https://www.terraform.io/docs/providers/aws/r/ses_email_identity.html#email.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_email_identity.html#id.
    aws_ses_email_identity(rname, email, id=null):: {
      email: email,
      [if id != null then 'id']: id,
      rname:: rname,
      arn:: '${aws_ses_email_identity.%s.arn}' % rname,
    },
    // aws_ebs_snapshot - https://www.terraform.io/docs/providers/aws/r/ebs_snapshot.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param volume_id (required) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot.html#volume_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot.html#id.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot.html#description.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/ebs_snapshot.html#tags.
    // @param timeouts (optional) timeouts block.
    aws_ebs_snapshot(rname, volume_id, id=null, description=null, tags=null, timeouts={}):: {
      volume_id: volume_id,
      [if id != null then 'id']: id,
      [if description != null then 'description']: description,
      [if tags != null then 'tags']: tags,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      encrypted:: '${aws_ebs_snapshot.%s.encrypted}' % rname,
      kms_key_id:: '${aws_ebs_snapshot.%s.kms_key_id}' % rname,
      owner_alias:: '${aws_ebs_snapshot.%s.owner_alias}' % rname,
      owner_id:: '${aws_ebs_snapshot.%s.owner_id}' % rname,
      data_encryption_key_id:: '${aws_ebs_snapshot.%s.data_encryption_key_id}' % rname,
      volume_size:: '${aws_ebs_snapshot.%s.volume_size}' % rname,
    },
    // aws_elastic_beanstalk_environment - https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#name.
    // @param application (required) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#application.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#description.
    // @param platform_arn (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#platform_arn.
    // @param poll_interval (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#poll_interval.
    // @param solution_stack_name (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#solution_stack_name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#tags.
    // @param tier (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#tier.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#id.
    // @param template_name (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#template_name.
    // @param cname_prefix (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#cname_prefix.
    // @param version_label (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#version_label.
    // @param wait_for_ready_timeout (optional) https://www.terraform.io/docs/providers/aws/r/elastic_beanstalk_environment.html#wait_for_ready_timeout.
    // @param setting (optional) setting block.
    aws_elastic_beanstalk_environment(rname, name, application, description=null, platform_arn=null, poll_interval=null, solution_stack_name=null, tags=null, tier=null, id=null, template_name=null, cname_prefix=null, version_label=null, wait_for_ready_timeout=null, setting={}):: {
      name: name,
      application: application,
      [if description != null then 'description']: description,
      [if platform_arn != null then 'platform_arn']: platform_arn,
      [if poll_interval != null then 'poll_interval']: poll_interval,
      [if solution_stack_name != null then 'solution_stack_name']: solution_stack_name,
      [if tags != null then 'tags']: tags,
      [if tier != null then 'tier']: tier,
      [if id != null then 'id']: id,
      [if template_name != null then 'template_name']: template_name,
      [if cname_prefix != null then 'cname_prefix']: cname_prefix,
      [if version_label != null then 'version_label']: version_label,
      [if wait_for_ready_timeout != null then 'wait_for_ready_timeout']: wait_for_ready_timeout,
      [if setting != null then 'setting']: setting,
      rname:: rname,
      triggers:: '${aws_elastic_beanstalk_environment.%s.triggers}' % rname,
      cname:: '${aws_elastic_beanstalk_environment.%s.cname}' % rname,
      all_settings:: '${aws_elastic_beanstalk_environment.%s.all_settings}' % rname,
      load_balancers:: '${aws_elastic_beanstalk_environment.%s.load_balancers}' % rname,
      autoscaling_groups:: '${aws_elastic_beanstalk_environment.%s.autoscaling_groups}' % rname,
      instances:: '${aws_elastic_beanstalk_environment.%s.instances}' % rname,
      queues:: '${aws_elastic_beanstalk_environment.%s.queues}' % rname,
      arn:: '${aws_elastic_beanstalk_environment.%s.arn}' % rname,
      launch_configurations:: '${aws_elastic_beanstalk_environment.%s.launch_configurations}' % rname,
    },
    // aws_kinesis_stream - https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param shard_count (required) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#shard_count.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#tags.
    // @param encryption_type (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#encryption_type.
    // @param enforce_consumer_deletion (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#enforce_consumer_deletion.
    // @param retention_period (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#retention_period.
    // @param shard_level_metrics (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#shard_level_metrics.
    // @param arn (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#id.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/kinesis_stream.html#kms_key_id.
    // @param timeouts (optional) timeouts block.
    aws_kinesis_stream(rname, shard_count, name, tags=null, encryption_type=null, enforce_consumer_deletion=null, retention_period=null, shard_level_metrics=null, arn=null, id=null, kms_key_id=null, timeouts={}):: {
      shard_count: shard_count,
      name: name,
      [if tags != null then 'tags']: tags,
      [if encryption_type != null then 'encryption_type']: encryption_type,
      [if enforce_consumer_deletion != null then 'enforce_consumer_deletion']: enforce_consumer_deletion,
      [if retention_period != null then 'retention_period']: retention_period,
      [if shard_level_metrics != null then 'shard_level_metrics']: shard_level_metrics,
      [if arn != null then 'arn']: arn,
      [if id != null then 'id']: id,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
    },
    // aws_lambda_function - https://www.terraform.io/docs/providers/aws/r/lambda_function.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param runtime (required) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#runtime.
    // @param function_name (required) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#function_name.
    // @param role (required) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#role.
    // @param handler (required) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#handler.
    // @param reserved_concurrent_executions (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#reserved_concurrent_executions.
    // @param layers (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#layers.
    // @param memory_size (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#memory_size.
    // @param timeout (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#timeout.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#tags.
    // @param s3_key (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#s3_key.
    // @param s3_object_version (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#s3_object_version.
    // @param source_code_hash (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#source_code_hash.
    // @param kms_key_arn (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#kms_key_arn.
    // @param publish (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#publish.
    // @param s3_bucket (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#s3_bucket.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#description.
    // @param filename (optional) https://www.terraform.io/docs/providers/aws/r/lambda_function.html#filename.
    // @param dead_letter_config (optional) dead_letter_config block.
    // @param environment (optional) environment block.
    // @param timeouts (optional) timeouts block.
    // @param tracing_config (optional) tracing_config block.
    // @param vpc_config (optional) vpc_config block.
    aws_lambda_function(rname, runtime, function_name, role, handler, reserved_concurrent_executions=null, layers=null, memory_size=null, timeout=null, id=null, tags=null, s3_key=null, s3_object_version=null, source_code_hash=null, kms_key_arn=null, publish=null, s3_bucket=null, description=null, filename=null, dead_letter_config={}, environment={}, timeouts={}, tracing_config={}, vpc_config={}):: {
      runtime: runtime,
      function_name: function_name,
      role: role,
      handler: handler,
      [if reserved_concurrent_executions != null then 'reserved_concurrent_executions']: reserved_concurrent_executions,
      [if layers != null then 'layers']: layers,
      [if memory_size != null then 'memory_size']: memory_size,
      [if timeout != null then 'timeout']: timeout,
      [if id != null then 'id']: id,
      [if tags != null then 'tags']: tags,
      [if s3_key != null then 's3_key']: s3_key,
      [if s3_object_version != null then 's3_object_version']: s3_object_version,
      [if source_code_hash != null then 'source_code_hash']: source_code_hash,
      [if kms_key_arn != null then 'kms_key_arn']: kms_key_arn,
      [if publish != null then 'publish']: publish,
      [if s3_bucket != null then 's3_bucket']: s3_bucket,
      [if description != null then 'description']: description,
      [if filename != null then 'filename']: filename,
      [if dead_letter_config != null then 'dead_letter_config']: dead_letter_config,
      [if environment != null then 'environment']: environment,
      [if timeouts != null then 'timeouts']: timeouts,
      [if tracing_config != null then 'tracing_config']: tracing_config,
      [if vpc_config != null then 'vpc_config']: vpc_config,
      rname:: rname,
      last_modified:: '${aws_lambda_function.%s.last_modified}' % rname,
      version:: '${aws_lambda_function.%s.version}' % rname,
      qualified_arn:: '${aws_lambda_function.%s.qualified_arn}' % rname,
      source_code_size:: '${aws_lambda_function.%s.source_code_size}' % rname,
      arn:: '${aws_lambda_function.%s.arn}' % rname,
      invoke_arn:: '${aws_lambda_function.%s.invoke_arn}' % rname,
    },
    // aws_cloudformation_stack - https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#name.
    // @param timeout_in_minutes (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#timeout_in_minutes.
    // @param notification_arns (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#notification_arns.
    // @param on_failure (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#on_failure.
    // @param parameters (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#parameters.
    // @param template_body (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#template_body.
    // @param capabilities (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#capabilities.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#id.
    // @param policy_body (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#policy_body.
    // @param policy_url (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#policy_url.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#tags.
    // @param disable_rollback (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#disable_rollback.
    // @param iam_role_arn (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#iam_role_arn.
    // @param template_url (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack.html#template_url.
    // @param timeouts (optional) timeouts block.
    aws_cloudformation_stack(rname, name, timeout_in_minutes=null, notification_arns=null, on_failure=null, parameters=null, template_body=null, capabilities=null, id=null, policy_body=null, policy_url=null, tags=null, disable_rollback=null, iam_role_arn=null, template_url=null, timeouts={}):: {
      name: name,
      [if timeout_in_minutes != null then 'timeout_in_minutes']: timeout_in_minutes,
      [if notification_arns != null then 'notification_arns']: notification_arns,
      [if on_failure != null then 'on_failure']: on_failure,
      [if parameters != null then 'parameters']: parameters,
      [if template_body != null then 'template_body']: template_body,
      [if capabilities != null then 'capabilities']: capabilities,
      [if id != null then 'id']: id,
      [if policy_body != null then 'policy_body']: policy_body,
      [if policy_url != null then 'policy_url']: policy_url,
      [if tags != null then 'tags']: tags,
      [if disable_rollback != null then 'disable_rollback']: disable_rollback,
      [if iam_role_arn != null then 'iam_role_arn']: iam_role_arn,
      [if template_url != null then 'template_url']: template_url,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      outputs:: '${aws_cloudformation_stack.%s.outputs}' % rname,
    },
    // aws_cloudhsm_v2_cluster - https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param hsm_type (required) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_cluster.html#hsm_type.
    // @param subnet_ids (required) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_cluster.html#subnet_ids.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_cluster.html#id.
    // @param source_backup_identifier (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_cluster.html#source_backup_identifier.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudhsm_v2_cluster.html#tags.
    // @param timeouts (optional) timeouts block.
    aws_cloudhsm_v2_cluster(rname, hsm_type, subnet_ids, id=null, source_backup_identifier=null, tags=null, timeouts={}):: {
      hsm_type: hsm_type,
      subnet_ids: subnet_ids,
      [if id != null then 'id']: id,
      [if source_backup_identifier != null then 'source_backup_identifier']: source_backup_identifier,
      [if tags != null then 'tags']: tags,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      cluster_id:: '${aws_cloudhsm_v2_cluster.%s.cluster_id}' % rname,
      security_group_id:: '${aws_cloudhsm_v2_cluster.%s.security_group_id}' % rname,
      cluster_certificates:: '${aws_cloudhsm_v2_cluster.%s.cluster_certificates}' % rname,
      cluster_state:: '${aws_cloudhsm_v2_cluster.%s.cluster_state}' % rname,
      vpc_id:: '${aws_cloudhsm_v2_cluster.%s.vpc_id}' % rname,
    },
    // aws_docdb_cluster_instance - https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param instance_class (required) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#instance_class.
    // @param cluster_identifier (required) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#cluster_identifier.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#apply_immediately.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#availability_zone.
    // @param promotion_tier (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#promotion_tier.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#engine.
    // @param identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#identifier_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#tags.
    // @param identifier (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#identifier.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#preferred_maintenance_window.
    // @param auto_minor_version_upgrade (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#auto_minor_version_upgrade.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster_instance.html#id.
    // @param timeouts (optional) timeouts block.
    aws_docdb_cluster_instance(rname, instance_class, cluster_identifier, apply_immediately=null, availability_zone=null, promotion_tier=null, engine=null, identifier_prefix=null, tags=null, identifier=null, preferred_maintenance_window=null, auto_minor_version_upgrade=null, id=null, timeouts={}):: {
      instance_class: instance_class,
      cluster_identifier: cluster_identifier,
      [if apply_immediately != null then 'apply_immediately']: apply_immediately,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if promotion_tier != null then 'promotion_tier']: promotion_tier,
      [if engine != null then 'engine']: engine,
      [if identifier_prefix != null then 'identifier_prefix']: identifier_prefix,
      [if tags != null then 'tags']: tags,
      [if identifier != null then 'identifier']: identifier,
      [if preferred_maintenance_window != null then 'preferred_maintenance_window']: preferred_maintenance_window,
      [if auto_minor_version_upgrade != null then 'auto_minor_version_upgrade']: auto_minor_version_upgrade,
      [if id != null then 'id']: id,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      dbi_resource_id:: '${aws_docdb_cluster_instance.%s.dbi_resource_id}' % rname,
      publicly_accessible:: '${aws_docdb_cluster_instance.%s.publicly_accessible}' % rname,
      arn:: '${aws_docdb_cluster_instance.%s.arn}' % rname,
      db_subnet_group_name:: '${aws_docdb_cluster_instance.%s.db_subnet_group_name}' % rname,
      storage_encrypted:: '${aws_docdb_cluster_instance.%s.storage_encrypted}' % rname,
      writer:: '${aws_docdb_cluster_instance.%s.writer}' % rname,
      preferred_backup_window:: '${aws_docdb_cluster_instance.%s.preferred_backup_window}' % rname,
      endpoint:: '${aws_docdb_cluster_instance.%s.endpoint}' % rname,
      engine_version:: '${aws_docdb_cluster_instance.%s.engine_version}' % rname,
      kms_key_id:: '${aws_docdb_cluster_instance.%s.kms_key_id}' % rname,
      port:: '${aws_docdb_cluster_instance.%s.port}' % rname,
    },
    // aws_storagegateway_working_storage - https://www.terraform.io/docs/providers/aws/r/storagegateway_working_storage.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param disk_id (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_working_storage.html#disk_id.
    // @param gateway_arn (required) https://www.terraform.io/docs/providers/aws/r/storagegateway_working_storage.html#gateway_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/storagegateway_working_storage.html#id.
    aws_storagegateway_working_storage(rname, disk_id, gateway_arn, id=null):: {
      disk_id: disk_id,
      gateway_arn: gateway_arn,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_waf_size_constraint_set - https://www.terraform.io/docs/providers/aws/r/waf_size_constraint_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/waf_size_constraint_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/waf_size_constraint_set.html#id.
    // @param size_constraints (optional) size_constraints block.
    aws_waf_size_constraint_set(rname, name, id=null, size_constraints={}):: {
      name: name,
      [if id != null then 'id']: id,
      [if size_constraints != null then 'size_constraints']: size_constraints,
      rname:: rname,
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
      [if base_path != null then 'base_path']: base_path,
      [if id != null then 'id']: id,
      [if stage_name != null then 'stage_name']: stage_name,
      rname:: rname,
    },
    // aws_cloudwatch_log_resource_policy - https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_resource_policy.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy_name (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_resource_policy.html#policy_name.
    // @param policy_document (required) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_resource_policy.html#policy_document.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_log_resource_policy.html#id.
    aws_cloudwatch_log_resource_policy(rname, policy_name, policy_document, id=null):: {
      policy_name: policy_name,
      policy_document: policy_document,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_sqs_queue - https://www.terraform.io/docs/providers/aws/r/sqs_queue.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param kms_data_key_reuse_period_seconds (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#kms_data_key_reuse_period_seconds.
    // @param kms_master_key_id (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#kms_master_key_id.
    // @param message_retention_seconds (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#message_retention_seconds.
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#name_prefix.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#policy.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#tags.
    // @param delay_seconds (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#delay_seconds.
    // @param fifo_queue (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#fifo_queue.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#name.
    // @param redrive_policy (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#redrive_policy.
    // @param receive_wait_time_seconds (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#receive_wait_time_seconds.
    // @param visibility_timeout_seconds (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#visibility_timeout_seconds.
    // @param content_based_deduplication (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#content_based_deduplication.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#id.
    // @param max_message_size (optional) https://www.terraform.io/docs/providers/aws/r/sqs_queue.html#max_message_size.
    aws_sqs_queue(rname, kms_data_key_reuse_period_seconds=null, kms_master_key_id=null, message_retention_seconds=null, name_prefix=null, policy=null, tags=null, delay_seconds=null, fifo_queue=null, name=null, redrive_policy=null, receive_wait_time_seconds=null, visibility_timeout_seconds=null, content_based_deduplication=null, id=null, max_message_size=null):: {
      [if kms_data_key_reuse_period_seconds != null then 'kms_data_key_reuse_period_seconds']: kms_data_key_reuse_period_seconds,
      [if kms_master_key_id != null then 'kms_master_key_id']: kms_master_key_id,
      [if message_retention_seconds != null then 'message_retention_seconds']: message_retention_seconds,
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if policy != null then 'policy']: policy,
      [if tags != null then 'tags']: tags,
      [if delay_seconds != null then 'delay_seconds']: delay_seconds,
      [if fifo_queue != null then 'fifo_queue']: fifo_queue,
      [if name != null then 'name']: name,
      [if redrive_policy != null then 'redrive_policy']: redrive_policy,
      [if receive_wait_time_seconds != null then 'receive_wait_time_seconds']: receive_wait_time_seconds,
      [if visibility_timeout_seconds != null then 'visibility_timeout_seconds']: visibility_timeout_seconds,
      [if content_based_deduplication != null then 'content_based_deduplication']: content_based_deduplication,
      [if id != null then 'id']: id,
      [if max_message_size != null then 'max_message_size']: max_message_size,
      rname:: rname,
      arn:: '${aws_sqs_queue.%s.arn}' % rname,
    },
    // aws_network_acl_rule - https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param protocol (required) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#protocol.
    // @param rule_action (required) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#rule_action.
    // @param rule_number (required) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#rule_number.
    // @param network_acl_id (required) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#network_acl_id.
    // @param ipv6_cidr_block (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#ipv6_cidr_block.
    // @param to_port (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#to_port.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#id.
    // @param egress (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#egress.
    // @param from_port (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#from_port.
    // @param icmp_code (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#icmp_code.
    // @param icmp_type (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#icmp_type.
    // @param cidr_block (optional) https://www.terraform.io/docs/providers/aws/r/network_acl_rule.html#cidr_block.
    aws_network_acl_rule(rname, protocol, rule_action, rule_number, network_acl_id, ipv6_cidr_block=null, to_port=null, id=null, egress=null, from_port=null, icmp_code=null, icmp_type=null, cidr_block=null):: {
      protocol: protocol,
      rule_action: rule_action,
      rule_number: rule_number,
      network_acl_id: network_acl_id,
      [if ipv6_cidr_block != null then 'ipv6_cidr_block']: ipv6_cidr_block,
      [if to_port != null then 'to_port']: to_port,
      [if id != null then 'id']: id,
      [if egress != null then 'egress']: egress,
      [if from_port != null then 'from_port']: from_port,
      [if icmp_code != null then 'icmp_code']: icmp_code,
      [if icmp_type != null then 'icmp_type']: icmp_type,
      [if cidr_block != null then 'cidr_block']: cidr_block,
      rname:: rname,
    },
    // aws_default_vpc - https://www.terraform.io/docs/providers/aws/r/default_vpc.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc.html#tags.
    // @param enable_dns_support (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc.html#enable_dns_support.
    // @param enable_classiclink (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc.html#enable_classiclink.
    // @param enable_classiclink_dns_support (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc.html#enable_classiclink_dns_support.
    // @param enable_dns_hostnames (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc.html#enable_dns_hostnames.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/default_vpc.html#id.
    aws_default_vpc(rname, tags=null, enable_dns_support=null, enable_classiclink=null, enable_classiclink_dns_support=null, enable_dns_hostnames=null, id=null):: {
      [if tags != null then 'tags']: tags,
      [if enable_dns_support != null then 'enable_dns_support']: enable_dns_support,
      [if enable_classiclink != null then 'enable_classiclink']: enable_classiclink,
      [if enable_classiclink_dns_support != null then 'enable_classiclink_dns_support']: enable_classiclink_dns_support,
      [if enable_dns_hostnames != null then 'enable_dns_hostnames']: enable_dns_hostnames,
      [if id != null then 'id']: id,
      rname:: rname,
      cidr_block:: '${aws_default_vpc.%s.cidr_block}' % rname,
      default_route_table_id:: '${aws_default_vpc.%s.default_route_table_id}' % rname,
      dhcp_options_id:: '${aws_default_vpc.%s.dhcp_options_id}' % rname,
      main_route_table_id:: '${aws_default_vpc.%s.main_route_table_id}' % rname,
      owner_id:: '${aws_default_vpc.%s.owner_id}' % rname,
      instance_tenancy:: '${aws_default_vpc.%s.instance_tenancy}' % rname,
      arn:: '${aws_default_vpc.%s.arn}' % rname,
      default_security_group_id:: '${aws_default_vpc.%s.default_security_group_id}' % rname,
      ipv6_association_id:: '${aws_default_vpc.%s.ipv6_association_id}' % rname,
      assign_generated_ipv6_cidr_block:: '${aws_default_vpc.%s.assign_generated_ipv6_cidr_block}' % rname,
      default_network_acl_id:: '${aws_default_vpc.%s.default_network_acl_id}' % rname,
      ipv6_cidr_block:: '${aws_default_vpc.%s.ipv6_cidr_block}' % rname,
    },
    // aws_docdb_cluster - https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param enabled_cloudwatch_logs_exports (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#enabled_cloudwatch_logs_exports.
    // @param preferred_backup_window (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#preferred_backup_window.
    // @param snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#snapshot_identifier.
    // @param cluster_members (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#cluster_members.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#id.
    // @param master_username (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#master_username.
    // @param skip_final_snapshot (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#skip_final_snapshot.
    // @param vpc_security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#vpc_security_group_ids.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#apply_immediately.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#availability_zones.
    // @param backup_retention_period (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#backup_retention_period.
    // @param master_password (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#master_password.
    // @param db_subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#db_subnet_group_name.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#engine.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#engine_version.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#kms_key_id.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#port.
    // @param preferred_maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#preferred_maintenance_window.
    // @param final_snapshot_identifier (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#final_snapshot_identifier.
    // @param storage_encrypted (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#storage_encrypted.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#tags.
    // @param cluster_identifier (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#cluster_identifier.
    // @param cluster_identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#cluster_identifier_prefix.
    // @param db_cluster_parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/docdb_cluster.html#db_cluster_parameter_group_name.
    // @param timeouts (optional) timeouts block.
    aws_docdb_cluster(rname, enabled_cloudwatch_logs_exports=null, preferred_backup_window=null, snapshot_identifier=null, cluster_members=null, id=null, master_username=null, skip_final_snapshot=null, vpc_security_group_ids=null, apply_immediately=null, availability_zones=null, backup_retention_period=null, master_password=null, db_subnet_group_name=null, engine=null, engine_version=null, kms_key_id=null, port=null, preferred_maintenance_window=null, final_snapshot_identifier=null, storage_encrypted=null, tags=null, cluster_identifier=null, cluster_identifier_prefix=null, db_cluster_parameter_group_name=null, timeouts={}):: {
      [if enabled_cloudwatch_logs_exports != null then 'enabled_cloudwatch_logs_exports']: enabled_cloudwatch_logs_exports,
      [if preferred_backup_window != null then 'preferred_backup_window']: preferred_backup_window,
      [if snapshot_identifier != null then 'snapshot_identifier']: snapshot_identifier,
      [if cluster_members != null then 'cluster_members']: cluster_members,
      [if id != null then 'id']: id,
      [if master_username != null then 'master_username']: master_username,
      [if skip_final_snapshot != null then 'skip_final_snapshot']: skip_final_snapshot,
      [if vpc_security_group_ids != null then 'vpc_security_group_ids']: vpc_security_group_ids,
      [if apply_immediately != null then 'apply_immediately']: apply_immediately,
      [if availability_zones != null then 'availability_zones']: availability_zones,
      [if backup_retention_period != null then 'backup_retention_period']: backup_retention_period,
      [if master_password != null then 'master_password']: master_password,
      [if db_subnet_group_name != null then 'db_subnet_group_name']: db_subnet_group_name,
      [if engine != null then 'engine']: engine,
      [if engine_version != null then 'engine_version']: engine_version,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if port != null then 'port']: port,
      [if preferred_maintenance_window != null then 'preferred_maintenance_window']: preferred_maintenance_window,
      [if final_snapshot_identifier != null then 'final_snapshot_identifier']: final_snapshot_identifier,
      [if storage_encrypted != null then 'storage_encrypted']: storage_encrypted,
      [if tags != null then 'tags']: tags,
      [if cluster_identifier != null then 'cluster_identifier']: cluster_identifier,
      [if cluster_identifier_prefix != null then 'cluster_identifier_prefix']: cluster_identifier_prefix,
      [if db_cluster_parameter_group_name != null then 'db_cluster_parameter_group_name']: db_cluster_parameter_group_name,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      arn:: '${aws_docdb_cluster.%s.arn}' % rname,
      reader_endpoint:: '${aws_docdb_cluster.%s.reader_endpoint}' % rname,
      endpoint:: '${aws_docdb_cluster.%s.endpoint}' % rname,
      cluster_resource_id:: '${aws_docdb_cluster.%s.cluster_resource_id}' % rname,
      hosted_zone_id:: '${aws_docdb_cluster.%s.hosted_zone_id}' % rname,
    },
    // aws_iam_role_policy_attachment - https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param policy_arn (required) https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html#policy_arn.
    // @param role (required) https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html#role.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/iam_role_policy_attachment.html#id.
    aws_iam_role_policy_attachment(rname, policy_arn, role, id=null):: {
      policy_arn: policy_arn,
      role: role,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_elasticache_cluster - https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param cluster_id (required) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#cluster_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#id.
    // @param num_cache_nodes (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#num_cache_nodes.
    // @param replication_group_id (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#replication_group_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#tags.
    // @param apply_immediately (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#apply_immediately.
    // @param az_mode (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#az_mode.
    // @param node_type (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#node_type.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#availability_zone.
    // @param availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#availability_zones.
    // @param parameter_group_name (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#parameter_group_name.
    // @param snapshot_window (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#snapshot_window.
    // @param engine (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#engine.
    // @param notification_topic_arn (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#notification_topic_arn.
    // @param snapshot_retention_limit (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#snapshot_retention_limit.
    // @param subnet_group_name (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#subnet_group_name.
    // @param engine_version (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#engine_version.
    // @param snapshot_arns (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#snapshot_arns.
    // @param snapshot_name (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#snapshot_name.
    // @param preferred_availability_zones (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#preferred_availability_zones.
    // @param security_group_ids (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#security_group_ids.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#port.
    // @param security_group_names (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#security_group_names.
    // @param maintenance_window (optional) https://www.terraform.io/docs/providers/aws/r/elasticache_cluster.html#maintenance_window.
    aws_elasticache_cluster(rname, cluster_id, id=null, num_cache_nodes=null, replication_group_id=null, tags=null, apply_immediately=null, az_mode=null, node_type=null, availability_zone=null, availability_zones=null, parameter_group_name=null, snapshot_window=null, engine=null, notification_topic_arn=null, snapshot_retention_limit=null, subnet_group_name=null, engine_version=null, snapshot_arns=null, snapshot_name=null, preferred_availability_zones=null, security_group_ids=null, port=null, security_group_names=null, maintenance_window=null):: {
      cluster_id: cluster_id,
      [if id != null then 'id']: id,
      [if num_cache_nodes != null then 'num_cache_nodes']: num_cache_nodes,
      [if replication_group_id != null then 'replication_group_id']: replication_group_id,
      [if tags != null then 'tags']: tags,
      [if apply_immediately != null then 'apply_immediately']: apply_immediately,
      [if az_mode != null then 'az_mode']: az_mode,
      [if node_type != null then 'node_type']: node_type,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      [if availability_zones != null then 'availability_zones']: availability_zones,
      [if parameter_group_name != null then 'parameter_group_name']: parameter_group_name,
      [if snapshot_window != null then 'snapshot_window']: snapshot_window,
      [if engine != null then 'engine']: engine,
      [if notification_topic_arn != null then 'notification_topic_arn']: notification_topic_arn,
      [if snapshot_retention_limit != null then 'snapshot_retention_limit']: snapshot_retention_limit,
      [if subnet_group_name != null then 'subnet_group_name']: subnet_group_name,
      [if engine_version != null then 'engine_version']: engine_version,
      [if snapshot_arns != null then 'snapshot_arns']: snapshot_arns,
      [if snapshot_name != null then 'snapshot_name']: snapshot_name,
      [if preferred_availability_zones != null then 'preferred_availability_zones']: preferred_availability_zones,
      [if security_group_ids != null then 'security_group_ids']: security_group_ids,
      [if port != null then 'port']: port,
      [if security_group_names != null then 'security_group_names']: security_group_names,
      [if maintenance_window != null then 'maintenance_window']: maintenance_window,
      rname:: rname,
      configuration_endpoint:: '${aws_elasticache_cluster.%s.configuration_endpoint}' % rname,
      cache_nodes:: '${aws_elasticache_cluster.%s.cache_nodes}' % rname,
      cluster_address:: '${aws_elasticache_cluster.%s.cluster_address}' % rname,
    },
    // aws_route53_resolver_rule - https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param domain_name (required) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html#domain_name.
    // @param rule_type (required) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html#rule_type.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html#id.
    // @param resolver_endpoint_id (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html#resolver_endpoint_id.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html#tags.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/route53_resolver_rule.html#name.
    // @param target_ip (optional) target_ip block.
    // @param timeouts (optional) timeouts block.
    aws_route53_resolver_rule(rname, domain_name, rule_type, id=null, resolver_endpoint_id=null, tags=null, name=null, target_ip={}, timeouts={}):: {
      domain_name: domain_name,
      rule_type: rule_type,
      [if id != null then 'id']: id,
      [if resolver_endpoint_id != null then 'resolver_endpoint_id']: resolver_endpoint_id,
      [if tags != null then 'tags']: tags,
      [if name != null then 'name']: name,
      [if target_ip != null then 'target_ip']: target_ip,
      [if timeouts != null then 'timeouts']: timeouts,
      rname:: rname,
      share_status:: '${aws_route53_resolver_rule.%s.share_status}' % rname,
      arn:: '${aws_route53_resolver_rule.%s.arn}' % rname,
      owner_id:: '${aws_route53_resolver_rule.%s.owner_id}' % rname,
    },
    // aws_sagemaker_endpoint - https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param endpoint_config_name (required) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint.html#endpoint_config_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint.html#name.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/sagemaker_endpoint.html#tags.
    aws_sagemaker_endpoint(rname, endpoint_config_name, id=null, name=null, tags=null):: {
      endpoint_config_name: endpoint_config_name,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      arn:: '${aws_sagemaker_endpoint.%s.arn}' % rname,
    },
    // aws_ses_configuration_set - https://www.terraform.io/docs/providers/aws/r/ses_configuration_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/ses_configuration_set.html#name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/ses_configuration_set.html#id.
    aws_ses_configuration_set(rname, name, id=null):: {
      name: name,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_api_gateway_usage_plan_key - https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan_key.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param key_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan_key.html#key_id.
    // @param key_type (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan_key.html#key_type.
    // @param usage_plan_id (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan_key.html#usage_plan_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_usage_plan_key.html#id.
    aws_api_gateway_usage_plan_key(rname, key_id, key_type, usage_plan_id, id=null):: {
      key_id: key_id,
      key_type: key_type,
      usage_plan_id: usage_plan_id,
      [if id != null then 'id']: id,
      rname:: rname,
      name:: '${aws_api_gateway_usage_plan_key.%s.name}' % rname,
      value:: '${aws_api_gateway_usage_plan_key.%s.value}' % rname,
    },
    // aws_autoscaling_notification - https://www.terraform.io/docs/providers/aws/r/autoscaling_notification.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param notifications (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_notification.html#notifications.
    // @param topic_arn (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_notification.html#topic_arn.
    // @param group_names (required) https://www.terraform.io/docs/providers/aws/r/autoscaling_notification.html#group_names.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/autoscaling_notification.html#id.
    aws_autoscaling_notification(rname, notifications, topic_arn, group_names, id=null):: {
      notifications: notifications,
      topic_arn: topic_arn,
      group_names: group_names,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_cloudwatch_event_rule - https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name_prefix (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#name_prefix.
    // @param schedule_expression (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#schedule_expression.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#description.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#id.
    // @param name (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#name.
    // @param role_arn (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#role_arn.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#tags.
    // @param event_pattern (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#event_pattern.
    // @param is_enabled (optional) https://www.terraform.io/docs/providers/aws/r/cloudwatch_event_rule.html#is_enabled.
    aws_cloudwatch_event_rule(rname, name_prefix=null, schedule_expression=null, description=null, id=null, name=null, role_arn=null, tags=null, event_pattern=null, is_enabled=null):: {
      [if name_prefix != null then 'name_prefix']: name_prefix,
      [if schedule_expression != null then 'schedule_expression']: schedule_expression,
      [if description != null then 'description']: description,
      [if id != null then 'id']: id,
      [if name != null then 'name']: name,
      [if role_arn != null then 'role_arn']: role_arn,
      [if tags != null then 'tags']: tags,
      [if event_pattern != null then 'event_pattern']: event_pattern,
      [if is_enabled != null then 'is_enabled']: is_enabled,
      rname:: rname,
      arn:: '${aws_cloudwatch_event_rule.%s.arn}' % rname,
    },
    // aws_api_gateway_rest_api - https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#name.
    // @param binary_media_types (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#binary_media_types.
    // @param body (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#body.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#description.
    // @param policy (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#policy.
    // @param api_key_source (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#api_key_source.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#id.
    // @param minimum_compression_size (optional) https://www.terraform.io/docs/providers/aws/r/api_gateway_rest_api.html#minimum_compression_size.
    // @param endpoint_configuration (optional) endpoint_configuration block.
    aws_api_gateway_rest_api(rname, name, binary_media_types=null, body=null, description=null, policy=null, api_key_source=null, id=null, minimum_compression_size=null, endpoint_configuration={}):: {
      name: name,
      [if binary_media_types != null then 'binary_media_types']: binary_media_types,
      [if body != null then 'body']: body,
      [if description != null then 'description']: description,
      [if policy != null then 'policy']: policy,
      [if api_key_source != null then 'api_key_source']: api_key_source,
      [if id != null then 'id']: id,
      [if minimum_compression_size != null then 'minimum_compression_size']: minimum_compression_size,
      [if endpoint_configuration != null then 'endpoint_configuration']: endpoint_configuration,
      rname:: rname,
      root_resource_id:: '${aws_api_gateway_rest_api.%s.root_resource_id}' % rname,
      created_date:: '${aws_api_gateway_rest_api.%s.created_date}' % rname,
      execution_arn:: '${aws_api_gateway_rest_api.%s.execution_arn}' % rname,
    },
    // aws_batch_compute_environment - https://www.terraform.io/docs/providers/aws/r/batch_compute_environment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param service_role (required) https://www.terraform.io/docs/providers/aws/r/batch_compute_environment.html#service_role.
    // @param type (required) https://www.terraform.io/docs/providers/aws/r/batch_compute_environment.html#type.
    // @param compute_environment_name (required) https://www.terraform.io/docs/providers/aws/r/batch_compute_environment.html#compute_environment_name.
    // @param state (optional) https://www.terraform.io/docs/providers/aws/r/batch_compute_environment.html#state.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/batch_compute_environment.html#id.
    // @param compute_resources (optional) compute_resources block.
    aws_batch_compute_environment(rname, service_role, type, compute_environment_name, state=null, id=null, compute_resources={}):: {
      service_role: service_role,
      type: type,
      compute_environment_name: compute_environment_name,
      [if state != null then 'state']: state,
      [if id != null then 'id']: id,
      [if compute_resources != null then 'compute_resources']: compute_resources,
      rname:: rname,
      ecc_cluster_arn:: '${aws_batch_compute_environment.%s.ecc_cluster_arn}' % rname,
      ecs_cluster_arn:: '${aws_batch_compute_environment.%s.ecs_cluster_arn}' % rname,
      status:: '${aws_batch_compute_environment.%s.status}' % rname,
      status_reason:: '${aws_batch_compute_environment.%s.status_reason}' % rname,
      arn:: '${aws_batch_compute_environment.%s.arn}' % rname,
    },
    // aws_directory_service_conditional_forwarder - https://www.terraform.io/docs/providers/aws/r/directory_service_conditional_forwarder.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param directory_id (required) https://www.terraform.io/docs/providers/aws/r/directory_service_conditional_forwarder.html#directory_id.
    // @param dns_ips (required) https://www.terraform.io/docs/providers/aws/r/directory_service_conditional_forwarder.html#dns_ips.
    // @param remote_domain_name (required) https://www.terraform.io/docs/providers/aws/r/directory_service_conditional_forwarder.html#remote_domain_name.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/directory_service_conditional_forwarder.html#id.
    aws_directory_service_conditional_forwarder(rname, directory_id, dns_ips, remote_domain_name, id=null):: {
      directory_id: directory_id,
      dns_ips: dns_ips,
      remote_domain_name: remote_domain_name,
      [if id != null then 'id']: id,
      rname:: rname,
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
      [if allow_ssh != null then 'allow_ssh']: allow_ssh,
      [if allow_sudo != null then 'allow_sudo']: allow_sudo,
      [if id != null then 'id']: id,
      [if level != null then 'level']: level,
      [if stack_id != null then 'stack_id']: stack_id,
      rname:: rname,
    },
    // aws_redshift_snapshot_schedule - https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param definitions (required) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#definitions.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#description.
    // @param force_destroy (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#force_destroy.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#id.
    // @param identifier (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#identifier.
    // @param identifier_prefix (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#identifier_prefix.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/redshift_snapshot_schedule.html#tags.
    aws_redshift_snapshot_schedule(rname, definitions, description=null, force_destroy=null, id=null, identifier=null, identifier_prefix=null, tags=null):: {
      definitions: definitions,
      [if description != null then 'description']: description,
      [if force_destroy != null then 'force_destroy']: force_destroy,
      [if id != null then 'id']: id,
      [if identifier != null then 'identifier']: identifier,
      [if identifier_prefix != null then 'identifier_prefix']: identifier_prefix,
      [if tags != null then 'tags']: tags,
      rname:: rname,
      arn:: '${aws_redshift_snapshot_schedule.%s.arn}' % rname,
    },
    // aws_s3_bucket_object - https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param bucket (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#bucket.
    // @param key (required) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#key.
    // @param content (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#content.
    // @param etag (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#etag.
    // @param kms_key_id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#kms_key_id.
    // @param server_side_encryption (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#server_side_encryption.
    // @param website_redirect (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#website_redirect.
    // @param content_type (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#content_type.
    // @param source (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#source.
    // @param storage_class (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#storage_class.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#tags.
    // @param acl (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#acl.
    // @param content_language (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#content_language.
    // @param metadata (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#metadata.
    // @param cache_control (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#cache_control.
    // @param content_base64 (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#content_base64.
    // @param content_disposition (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#content_disposition.
    // @param content_encoding (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#content_encoding.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/s3_bucket_object.html#id.
    aws_s3_bucket_object(rname, bucket, key, content=null, etag=null, kms_key_id=null, server_side_encryption=null, website_redirect=null, content_type=null, source=null, storage_class=null, tags=null, acl=null, content_language=null, metadata=null, cache_control=null, content_base64=null, content_disposition=null, content_encoding=null, id=null):: {
      bucket: bucket,
      key: key,
      [if content != null then 'content']: content,
      [if etag != null then 'etag']: etag,
      [if kms_key_id != null then 'kms_key_id']: kms_key_id,
      [if server_side_encryption != null then 'server_side_encryption']: server_side_encryption,
      [if website_redirect != null then 'website_redirect']: website_redirect,
      [if content_type != null then 'content_type']: content_type,
      [if source != null then 'source']: source,
      [if storage_class != null then 'storage_class']: storage_class,
      [if tags != null then 'tags']: tags,
      [if acl != null then 'acl']: acl,
      [if content_language != null then 'content_language']: content_language,
      [if metadata != null then 'metadata']: metadata,
      [if cache_control != null then 'cache_control']: cache_control,
      [if content_base64 != null then 'content_base64']: content_base64,
      [if content_disposition != null then 'content_disposition']: content_disposition,
      [if content_encoding != null then 'content_encoding']: content_encoding,
      [if id != null then 'id']: id,
      rname:: rname,
      version_id:: '${aws_s3_bucket_object.%s.version_id}' % rname,
    },
    // aws_vpc_endpoint_connection_notification - https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_connection_notification.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param connection_events (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_connection_notification.html#connection_events.
    // @param connection_notification_arn (required) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_connection_notification.html#connection_notification_arn.
    // @param vpc_endpoint_service_id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_connection_notification.html#vpc_endpoint_service_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_connection_notification.html#id.
    // @param vpc_endpoint_id (optional) https://www.terraform.io/docs/providers/aws/r/vpc_endpoint_connection_notification.html#vpc_endpoint_id.
    aws_vpc_endpoint_connection_notification(rname, connection_events, connection_notification_arn, vpc_endpoint_service_id=null, id=null, vpc_endpoint_id=null):: {
      connection_events: connection_events,
      connection_notification_arn: connection_notification_arn,
      [if vpc_endpoint_service_id != null then 'vpc_endpoint_service_id']: vpc_endpoint_service_id,
      [if id != null then 'id']: id,
      [if vpc_endpoint_id != null then 'vpc_endpoint_id']: vpc_endpoint_id,
      rname:: rname,
      notification_type:: '${aws_vpc_endpoint_connection_notification.%s.notification_type}' % rname,
      state:: '${aws_vpc_endpoint_connection_notification.%s.state}' % rname,
    },
    // aws_alb_listener_certificate - https://www.terraform.io/docs/providers/aws/r/alb_listener_certificate.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param certificate_arn (required) https://www.terraform.io/docs/providers/aws/r/alb_listener_certificate.html#certificate_arn.
    // @param listener_arn (required) https://www.terraform.io/docs/providers/aws/r/alb_listener_certificate.html#listener_arn.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/alb_listener_certificate.html#id.
    aws_alb_listener_certificate(rname, certificate_arn, listener_arn, id=null):: {
      certificate_arn: certificate_arn,
      listener_arn: listener_arn,
      [if id != null then 'id']: id,
      rname:: rname,
    },
    // aws_alb_target_group_attachment - https://www.terraform.io/docs/providers/aws/r/alb_target_group_attachment.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param target_group_arn (required) https://www.terraform.io/docs/providers/aws/r/alb_target_group_attachment.html#target_group_arn.
    // @param target_id (required) https://www.terraform.io/docs/providers/aws/r/alb_target_group_attachment.html#target_id.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group_attachment.html#id.
    // @param port (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group_attachment.html#port.
    // @param availability_zone (optional) https://www.terraform.io/docs/providers/aws/r/alb_target_group_attachment.html#availability_zone.
    aws_alb_target_group_attachment(rname, target_group_arn, target_id, id=null, port=null, availability_zone=null):: {
      target_group_arn: target_group_arn,
      target_id: target_id,
      [if id != null then 'id']: id,
      [if port != null then 'port']: port,
      [if availability_zone != null then 'availability_zone']: availability_zone,
      rname:: rname,
    },
    // aws_cloudformation_stack_set - https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html
    // @param rname (required) Workaround for not having `here` reference (https://github.com/google/jsonnet/issues/437).
    // @param administration_role_arn (required) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#administration_role_arn.
    // @param name (required) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#name.
    // @param capabilities (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#capabilities.
    // @param description (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#description.
    // @param execution_role_name (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#execution_role_name.
    // @param parameters (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#parameters.
    // @param tags (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#tags.
    // @param template_body (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#template_body.
    // @param id (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#id.
    // @param template_url (optional) https://www.terraform.io/docs/providers/aws/r/cloudformation_stack_set.html#template_url.
    aws_cloudformation_stack_set(rname, administration_role_arn, name, capabilities=null, description=null, execution_role_name=null, parameters=null, tags=null, template_body=null, id=null, template_url=null):: {
      administration_role_arn: administration_role_arn,
      name: name,
      [if capabilities != null then 'capabilities']: capabilities,
      [if description != null then 'description']: description,
      [if execution_role_name != null then 'execution_role_name']: execution_role_name,
      [if parameters != null then 'parameters']: parameters,
      [if tags != null then 'tags']: tags,
      [if template_body != null then 'template_body']: template_body,
      [if id != null then 'id']: id,
      [if template_url != null then 'template_url']: template_url,
      rname:: rname,
      arn:: '${aws_cloudformation_stack_set.%s.arn}' % rname,
      stack_set_id:: '${aws_cloudformation_stack_set.%s.stack_set_id}' % rname,
    },
  },
}