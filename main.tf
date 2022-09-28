resource "aws_instance" "ec2-1" {
  ami           = var.ami
  instance_type = var.instance
   subnet_id   = data.aws_subnet.selected.id
  security_groups = [data.aws_security_group.sg.id]
  key_name    = var.key_name
  count     = var.count_no
  tags = {
   Name = "jenkin-master"
}

root_block_device {
  volume_size         = "30"
  volume_type         = "gp2"
  encrypted           = true
  delete_on_termination  = true
}

}
