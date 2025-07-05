resource "aws_security_group" "main" {
  name        = var.sg_name
  description = var.sg_descrption
  vpc_id      = var.vpc_id

  tags = {
    Name = "allow_tls"
  }
}