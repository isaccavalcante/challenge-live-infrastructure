
module elk {
  source                  = "git::https://github.com/cloudposse/terraform-aws-elasticsearch.git?ref=0.24.1"
  namespace               = "challenge"
  stage                   = "dev"
  name                    = "es"
  security_groups         = [module.vpc.default_security_group_id]
  vpc_id                  = module.vpc.vpc_id
  subnet_ids              = module.vpc.public_subnets
  zone_awareness_enabled  = true
  availability_zone_count = 3
  elasticsearch_version   = "7.1"
  instance_type           = "t2.small.elasticsearch"
  instance_count          = 3
  ebs_volume_size         = 10
  iam_role_arns           = [module.iam.this_iam_role_arn, "*"]
  iam_actions             = ["es:ESHttpGet", "es:ESHttpPut", "es:ESHttpPost"]
  encrypt_at_rest_enabled = false

  kibana_subdomain_name = "kibana-es"

  advanced_options = {
    "rest.action.multi.allow_explicit_index" = "true"
  }
}

# output "elasticsearch_url" {
#   description = "Elasticsearch URL endpoint"
#   value       = module.elk.domain_endpoint
# }