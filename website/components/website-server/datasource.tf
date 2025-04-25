data "aws_security_group" "allow-http" {
  name = "${var.project}-allow-http"
}

data "aws_subnets" "subnets" {
  filter {
    name   = "tag:Name"
    values = ["sale-capstone-vpc-subnet-*"]
  }
}