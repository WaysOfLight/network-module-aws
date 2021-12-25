region      = "us-east-1"
environment = "development"
team        = "devops"
project     = "<project>"

# Configurations
create_vpc              = true
name                    = "development"
cidr                    = "10.108.0.0/16"
azs                     = ["us-east-1a", "us-east-1b", "us-east-1c"]
public_subnets          = ["10.108.0.0/20", "10.108.16.0/20", "10.108.32.0/20"]
map_public_ip_on_launch = true
private_subnets         = ["10.108.192.0/20", "10.108.208.0/20", "10.108.224.0/20"]
enable_dns_hostnames    = true
enable_dns_support      = true
enable_nat_gateway      = true
single_nat_gateway      = true
one_nat_gateway_per_az  = false