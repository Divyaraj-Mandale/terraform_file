data "aws_subnet" "selected" {
   filter {
    name   = "tag:Name"
    values = [var.subnet_name]
  }
}

data "aws_security_group" "sg" {
   filter {
    name   = "tag:Name"
    values = [var.security_group]
  }
}
