provider "aws" {
  region     = "us-east-1"
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

