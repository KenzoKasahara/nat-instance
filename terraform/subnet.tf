resource "aws_subnet" "public_subnet" {
  assign_ipv6_address_on_creation                = false
  availability_zone_id                           = "apne1-az4"
  cidr_block                                     = "20.0.0.0/20"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  # enable_lni_at_device_index                     = 0
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  # map_customer_owned_ip_on_launch                = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "test-subnet-public1-ap-northeast-1a"
  }
  vpc_id = aws_vpc.test_vpc.id
}

resource "aws_subnet" "private_subnet" {
  assign_ipv6_address_on_creation                = false
  availability_zone_id                           = "apne1-az4"
  cidr_block                                     = "20.0.128.0/20"
  customer_owned_ipv4_pool                       = null
  enable_dns64                                   = false
  # enable_lni_at_device_index                     = 0
  enable_resource_name_dns_a_record_on_launch    = false
  enable_resource_name_dns_aaaa_record_on_launch = false
  ipv6_cidr_block                                = null
  ipv6_native                                    = false
  # map_customer_owned_ip_on_launch                = false
  map_public_ip_on_launch                        = false
  outpost_arn                                    = null
  private_dns_hostname_type_on_launch            = "ip-name"
  tags = {
    Name = "test-subnet-private1-ap-northeast-1a"
  }
  vpc_id = aws_vpc.test_vpc.id
}