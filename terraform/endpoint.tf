resource "aws_vpc_endpoint" "test_ssm" {
  auto_accept         = null
  ip_address_type     = "ipv4"
  policy              = file("./policy/endpoint/test-ssm.json")
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids  = [aws_security_group.ssm_endpoint_sg.id]
  service_name        = "com.amazonaws.ap-northeast-1.ssm"
  subnet_ids          = [aws_subnet.private_subnet.id]
  tags = {
    Name = "test-ssm"
  }
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.test_vpc.id
  dns_options {
    dns_record_ip_type                             = "ipv4"
    private_dns_only_for_inbound_resolver_endpoint = false
  }
}

resource "aws_vpc_endpoint" "test_ec2messages" {
  auto_accept         = null
  ip_address_type     = "ipv4"
  policy              = file("./policy/endpoint/test-ec2messages.json")
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids  = [aws_security_group.ssm_endpoint_sg.id]
  service_name        = "com.amazonaws.ap-northeast-1.ec2messages"
  subnet_ids          = [aws_subnet.private_subnet.id]
  tags = {
    Name = "test-ec2messages"
  }
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.test_vpc.id
  dns_options {
    dns_record_ip_type                             = "ipv4"
    private_dns_only_for_inbound_resolver_endpoint = false
  }
}

resource "aws_vpc_endpoint" "test_ssmmessages" {
  auto_accept         = null
  ip_address_type     = "ipv4"
  policy              = file("./policy/endpoint/test-ssmmessages.json")
  private_dns_enabled = true
  route_table_ids     = []
  security_group_ids  = [aws_security_group.ssm_endpoint_sg.id]
  service_name        = "com.amazonaws.ap-northeast-1.ssmmessages"
  subnet_ids          = [aws_subnet.private_subnet.id]
  tags = {
    Name = "test-ssmmessages"
  }
  vpc_endpoint_type = "Interface"
  vpc_id            = aws_vpc.test_vpc.id
  dns_options {
    dns_record_ip_type                             = "ipv4"
    private_dns_only_for_inbound_resolver_endpoint = false
  }
}
