

module ec2 {
  source                      = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=v2.0.0"
  name                        = "my-ec2-cluster"
  instance_count              = 1
  ami                         = "ami-04bf6dcdc9ab498ca"
  instance_type               = "t2.micro"
  key_name                    = "isac-challenge"
  monitoring                  = true
  associate_public_ip_address = true
  vpc_security_group_ids      = [module.vpc.default_security_group_id]
  subnet_ids                  = module.vpc.public_subnets
  iam_instance_profile        = module.iam.this_iam_instance_profile_name

  depends_on = [module.vpc]
}
