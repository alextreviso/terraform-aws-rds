resource "aws_security_group" "sg-db" {
    name = "sg_db-${var.database_name}"
    vpc_id = var.vpc_id

    ingress {
        from_port       = var.db_port
        to_port         = var.db_port
        protocol        = "tcp"
        cidr_blocks = var.allowed_cidrs
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "sg_db-${var.database_name}"
        env = var.env
    }
}