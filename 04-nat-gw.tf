resource "aws_eip" "elastic_ip" {
  tags = {
    Name = local.elastic_ip_name
  }
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id     = aws_eip.elastic_ip.id
  connectivity_type = "public"
  subnet_id         = aws_subnet.public_subnet[0].id

  tags = {
    Name = local.nat_gateway_name
  }

  depends_on = [aws_internet_gateway.internet_gateway]
}