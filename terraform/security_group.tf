resource "aws_security_group" "ssm_endpoint_sg" {
  description = "ssm-endpoint-sg"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["20.0.0.0/16"]
    description      = ""
    from_port        = 443
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 443
  }]
  name                   = "ssm-endpoint-sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Name = "ssm-endpoint-sg"
  }
  vpc_id = aws_vpc.test_vpc.id
}

# __generated__ by Terraform from "sg-03beb18afe87189c1"
resource "aws_security_group" "test_pri_instance_sg" {
  description = "test-pri-instance-sg"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress                = []
  name                   = "test-pri-instance-sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Name = "test-pri-instance-sg"
  }
  vpc_id = aws_vpc.test_vpc.id
}

resource "aws_security_group" "nat_instance_sg" {
  description = "NAT instance security group"
  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "-1"
    security_groups  = []
    self             = false
    to_port          = 0
  }]
  ingress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = ""
    from_port        = 22
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 22
    }, {
    cidr_blocks      = ["20.0.0.0/16"]
    description      = ""
    from_port        = -1
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "icmp"
    security_groups  = []
    self             = false
    to_port          = -1
    }, {
    cidr_blocks      = ["20.0.0.0/16"]
    description      = ""
    from_port        = 80
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = "tcp"
    security_groups  = []
    self             = false
    to_port          = 80
  }]
  name                   = "nat-instance-sg"
  name_prefix            = null
  revoke_rules_on_delete = null
  tags = {
    Name = "nat-instance-sg"
  }
  vpc_id = aws_vpc.test_vpc.id
}