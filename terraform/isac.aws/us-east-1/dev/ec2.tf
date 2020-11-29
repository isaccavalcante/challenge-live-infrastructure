
locals {
  user_data = <<EOF
#!/bin/bash
sed -i 's|ES_ENDPOINT|${module.elk.domain_endpoint}|' /etc/logstash/conf.d/httpd-pipeline.conf
EOF
}

module ec2 {
  source                      = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=v2.15.0"
  name                        = "my-ec2-cluster"
  instance_count              = 1
  ami                         = "ami-04bf6dcdc9ab498ca"
  instance_type               = "t2.small"
  key_name                    = "isac-challenge"
  monitoring                  = true
  associate_public_ip_address = true
  vpc_security_group_ids      = [module.vpc.default_security_group_id]
  subnet_ids                  = module.vpc.public_subnets
  iam_instance_profile        = module.iam.this_iam_instance_profile_name
  user_data_base64            = base64encode(local.user_data)

  depends_on = [module.vpc]
}
                       