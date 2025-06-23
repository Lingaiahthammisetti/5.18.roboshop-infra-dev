module "roboshop" {
  #source = "../5.9.terraform-aws-vpc-peering"
  source = "git::https://github.com/Lingaiahthammisetti/5.9.terraform-aws-vpc-peering.git?ref=main"
    
  project_name = var.project_name
  environment = var.environment
  common_tags = var.common_tags
  vpc_tags = var.vpc_tags

  # public subnet
  public_subnet_cidrs = var.public_subnet_cidrs

  # private subnet
  private_subnet_cidrs = var.private_subnet_cidrs

  # database subnet
  database_subnet_cidrs = var.database_subnet_cidrs

  #peering
  is_peering_required = var.is_peering_required

}