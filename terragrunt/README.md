


# Challenge Live Infrastructure (Terragrunt)

> **DEPRECATED**: I've been told to use Terraform only, this folder is being kept as a PoC

This folder contains [Terragrunt](https://terragrunt.gruntwork.io/) configuration defining the infrastructure as a code of the challenge for DevOps Engineer job position at [Pagar.me](http://pagar.me/).

# Getting started

## Prerequisites

Install and setup the version manager [asdf-vm](https://asdf-vm.com/#/) by running the following commands:

```
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.8.0

echo ". $HOME/.asdf/asdf.sh" >> ~/.bashrc  

asdf plugin add terragrunt
asdf plugin add terraform

asdf install terraform 0.13.5
asdf install terragrunt 0.26.4

asdf global terraform 0.13.5
asdf global terragrunt 0.26.4
```

## Creating & Destroying

To apply all the infrastructure, run the following command:

```sh
terragrunt apply --terragrunt-non-interactive -auto-approve
```

To destroy all the infrastructure, run the following command:

```sh
terragrunt destroy --terragrunt-non-interactive -auto-approve
```