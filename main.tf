resource "aws_security_group" "mysql" {
  name        = "${local.sg_fullname}"
  description = "Allow traffic for ${[count.index]}"
  vpc_id      = var.vpc_id

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
        Name = "${local.sg_fullname}"
    }
  )
    
}

resource "aws_security_group" "backend" {
  name        = "${local.sg_fullname}"
  description = "Allow traffic for ${[count.index]}"
  vpc_id      = var.vpc_id

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
        Name = "${local.sg_fullname}"
    }
  )
    
}

resource "aws_security_group" "frontend" {
  name        = "${local.sg_fullname}"
  description = "Allow traffic for ${[count.index]}"
  vpc_id      = var.vpc_id

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
        Name = "${local.sg_fullname}"
    }
  )
    
}