resource "aws_db_subnet_group" "default" {
  name       = "erb-main"
  subnet_ids = [for subnet in aws_subnet.private_subnet : subnet.id]
#   vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "My DB subnet group"
  }
}

output "private_subnet_ids" {
  value = aws_subnet.private_subnet[*].id
}