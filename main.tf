resource "aws_instance" "web" {
  ami           = "ami-1239x231
  instance_type = "t3.micro"

  tags = {
    "Name"      = "web01",
    "andriitag" = "true",
    "Cost Centre" = "jamaice-dept-A"
  }
  
}
