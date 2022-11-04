
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAXH3EJPEM5RDNTL6L"
  secret_key = "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"
}

############## BACKEND IS TERRAFORM CLOUD #########
terraform {
  backend "remote" {
    organization = "sun_org"

    workspaces {
      name = "sun_workspace"
    }
  }
}

############## CRATE EC2 INSTANCE ###########
resource "aws_instance" "dev-webserver" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
}

