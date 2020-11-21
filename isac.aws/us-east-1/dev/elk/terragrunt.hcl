# terraform {
#     source = "git::https://github.com/cloudposse/terraform-aws-elasticsearch.git?ref=0.24.1"
# }

# include {
#   path = find_in_parent_folders()
# }

# dependency "vpc" {
#   config_path = "../vpc"
# }

# inputs = {
#   namespace               = "challenge"
#   stage                   = "dev"
#   name                    = "es"
#   //dns_zone_id             = "Z14EN2YD427LRQ"
#   security_groups         = [dependency.vpc.outputs.default_security_group_id]
#   vpc_id                  = dependency.vpc.outputs.vpc_id
#   subnet_ids              = dependency.vpc.outputs.public_subnets
#   zone_awareness_enabled  = false
#   elasticsearch_version   = "7.1"
#   instance_type           = "t2.small.elasticsearch"
#   instance_count          = 4
#   ebs_volume_size         = 10
#   iam_role_arns           = []
#   iam_actions             = ["es:ESHttpGet", "es:ESHttpPut", "es:ESHttpPost"]
#   encrypt_at_rest_enabled = false
#   kibana_subdomain_name   = "kibana-es"

#   advanced_options = {
#     "rest.action.multi.allow_explicit_index" = "true"
#   }
# }