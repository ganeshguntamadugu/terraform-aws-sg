resource "aws_security_group" "mysql" {
  for_each = var.sgs
  name        = "${local.sg_fullname}-${each.key}"
  description = "Allow traffic for ${each.key}"
  vpc_id      = var.vpc_id

  dynamic "ingress" {
      for_each = each.value.ingress
      content {
        description = ingress.value.description
        from_port = ingress.value.port
        to_port = ingress.value.port
        protocol = ingress.value.protocol
        cidr_blocks = ingress.value.cidr_blocks
      }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = merge(
    var.common_tags,
    var.sg_tags,
    {
        Name = "${local.sg_fullname}-${each.key}"
    }
  )
    
}
