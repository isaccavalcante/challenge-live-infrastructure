output "ec2_public_ip" {
  value = module.ec2.public_ip
}

output "elasticsearch_endpoint" {
  value = module.elk.endpoint
}