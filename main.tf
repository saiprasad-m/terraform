resource "aws_vpc" "mtc_vpc" {
  cidr_block           = "172.31.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    "Name" = "dev"
  }
}

resource "aws_subnet" "mtc_public_subnet" {
  vpc_id                  = aws_vpc.mtc_vpc.id
  cidr_block              = "172.31.44.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "ap-south-1a"

  tags = {
    Name = "dev-public"
  }
}

resource "aws_internet_gateway" "mtc_internet_gateway" {
  vpc_id = aws_vpc.mtc_vpc.id

  tags = {
    "Name" = "dev-igwy"
  }

}