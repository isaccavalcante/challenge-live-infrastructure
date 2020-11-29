module iam {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-iam.git//modules/iam-assumable-role?ref=v3.4.0"

  create_role             = true
  role_name               = "EC2_Can_Access_ELK"
  create_instance_profile = true
  role_requires_mfa       = false

  trusted_role_arns = [
    "arn:aws:iam::482533029342:root",
    "arn:aws:iam::482533029342:user/isac-challenge",
  ]

  trusted_role_services = [
    "ssm.amazonaws.com",
    "ec2.amazonaws.com"
  ]

  custom_role_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonESFullAccess"
  ]

  number_of_custom_role_policy_arns = 1

  tags = {
    Role = "EC2_Can_Access_ELK"
  }
}

