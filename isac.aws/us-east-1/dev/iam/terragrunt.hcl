terraform {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-iam.git//modules/iam-assumable-role?ref=v3.0.0"
}


include {
  path = find_in_parent_folders()
}


inputs = {
  create_role = true

  trusted_role_arns = [
    "arn:aws:iam::482533029342:root",
    "arn:aws:iam::482533029342:user/isac-challenge",
  ]

  role_name         = "EC2_Can_Access_ELK"
  
}
