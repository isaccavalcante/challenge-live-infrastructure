terraform {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=v2.0.0"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  name = "my-ec2-cluster"
  //region = var.region
  instance_count         = 2
  ami                    = "ami-04bf6dcdc9ab498ca"
  instance_type          = "t2.micro"
  key_name               = "isac-challenge"
  monitoring             = true
  vpc_security_group_ids = ["sg-92b9c1a0"]
  subnet_id              = "subnet-55cb7133"


}
