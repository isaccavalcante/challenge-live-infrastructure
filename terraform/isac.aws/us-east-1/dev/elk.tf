module "elk" {
  source = "git@github.com:isaccavalcante/terraform-aws-elasticsearch.git?ref=master"

  stack_name              = "challenge"
  domain_name             = "esdomain"
  elasticsearch_version   = 7.1
  instance_count          = 1
  instance_type           = "t2.small.elasticsearch"
  volume_size             = 20
  encrypt_at_rest_enabled = false

  subnet_ids = [module.vpc.public_subnets[0]]

  whitelist_roles_readonly_access = [
    "*"
  ]

  whitelist_roles_admin_access = [
    module.iam.this_iam_role_arn,
    "*"
  ]

  tags = {
    "Environment" = "Dev"
    "Cost"        = "I hope its free"
  }
}

