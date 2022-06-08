resource "aws_vpc" "mtc_vpc" {
    cidr_block = "172.31.0.0/16"
    enable_dns_hostnames = true
    enable_dns_support = true

    tags = {
      "Name" = "dev"
    }
}

resource "aws_subnet" "mtc_public_subnet" {
  
}