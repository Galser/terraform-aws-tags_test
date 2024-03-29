provider "aws" {
  region     = "eu-central-1"
}


resource "aws_instance" "web" {
  ami           = "ami-095b5e709476cf293" # Packer Ubuntu Basic 18 Bionic
  instance_type = "t3.micro"

  tags = {
    "Name"      = "web01"
    "andriitag" = "true"
    "Cost_Centre" = "jamaice-dept-A"
  }

}


data "aws_caller_identity" "current" {}
output "account_id" {
  value = data.aws_caller_identity.current.account_id
}
output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}
output "caller_user" {
  value = data.aws_caller_identity.current.user_id
}
