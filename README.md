# Challenge Live Infrastructure

This repository contains terragrunt configuration defining the infrastructure as a code of the challenge for DevOps Engineer job position at [Pagar.me](http://pagar.me/).


# Challenge description

Create a monitoring infrastructure. The objective is to deploy an Elastic Stack (ELK) and be able to aggregate log data from an EC2 instance. 

What will be evaluated:

- Usage of an IaC tool (we use Terraform & Packer)
- Cloud knowledge (we use AWS)
- Mastery of good practices of infrastructure and systems resilience
- Practices of monitoring/observability
- Code organization

# Getting started

## Prerequisites

asdf plugin add terragrunt
asdf plugin add terraform

asdf install terraform 0.13.5
asdf install terragrunt 0.26.4

asdf global terraform 0.13.5
asdf global terragrunt 0.26.4