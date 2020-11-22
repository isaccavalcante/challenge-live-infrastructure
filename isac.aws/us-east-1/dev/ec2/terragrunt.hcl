terraform {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=v2.0.0"
}


include {
  path = find_in_parent_folders()
}


dependencies {
  paths = ["../vpc", "../iam"]
}

dependency "vpc" {
  config_path = "../vpc"
}

dependency "iam" {
  config_path = "../iam"
}


inputs = {
  name                   = "my-ec2-cluster"
  instance_count         = 2
  ami                    = "ami-04bf6dcdc9ab498ca"
  instance_type          = "t2.micro"
  key_name               = "isac-challenge"
  monitoring             = true
  vpc_security_group_ids = [dependency.vpc.outputs.default_security_group_id]
  subnet_ids             = dependency.vpc.outputs.private_subnets
  iam_instance_profile   = dependency.iam.outputs.this_iam_instance_profile_name

}
