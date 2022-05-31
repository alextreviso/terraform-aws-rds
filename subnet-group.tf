resource "aws_db_subnet_group" "db_subnet_group" {
  name       = "db-${var.database_name}-subnet-group"
  subnet_ids = var.private_subnets_ids

  tags = {
    Name = "db-${var.database_name}-subnet-group"
  }
}