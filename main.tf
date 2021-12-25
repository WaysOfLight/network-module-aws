module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "2.64.0"

  create_vpc = var.create_vpc

  name        = var.name
  cidr        = var.cidr
  enable_ipv6 = var.enable_ipv6

  azs = var.azs

  private_subnets  = var.private_subnets
  public_subnets   = var.public_subnets
  database_subnets = var.database_subnets

  map_public_ip_on_launch = var.map_public_ip_on_launch

  create_database_internet_gateway_route = var.create_database_internet_gateway_route
  create_database_subnet_group           = var.create_database_subnet_group
  create_database_subnet_route_table     = var.create_database_subnet_route_table
  create_database_nat_gateway_route      = var.create_database_nat_gateway_route

  enable_nat_gateway     = var.enable_nat_gateway
  single_nat_gateway     = var.single_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az

  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  public_subnet_tags = {
    Tier = "public"
  }

  private_subnet_tags = {
    Tier = "private"
  }

  database_subnet_tags = {
    Tier = "database"
  }

}