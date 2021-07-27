provider "aws" {
  profile    = "default"
  region     = "eu-central-1"
}


resource "aws_instance" "web" {
  ami           = "ami-0050dc92851799082",
  instance_type = "t3.micro",

  tags = {
    "Name"      = "web01",
    "andriitag" = "true",
    "Cost Centre" = "jamaice-dept-A",
  }

}
