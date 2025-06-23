module "vpn" {
#source ="../../5.12.terraform-aws-securitygroup"
source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
project_name = var.project_name
environment =  var.environment
sg_description = "SG for VPN Instances"
vpc_id =  data.aws_ssm_parameter.vpc_id.value #We are getting the vpc_id from SSM parameter for Bastion Security group
common_tags = var.common_tags
ingress_rules   = var.vpn_sg_rules
sg_name = "vpn"
}

# module "bastion" {
# #source ="../../5.12.terraform-aws-securitygroup"
# source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
# project_name = var.project_name
# environment =  var.environment
# sg_description = "SG for Bastion Instances"
# vpc_id =  data.aws_ssm_parameter.vpc_id.value #We are getting the vpc_id from SSM parameter for Bastion Security group
# common_tags = var.common_tags
# #ingress_rules   = var.vpn_sg_rules
# sg_name = "Bastion"
# }

module "mongodb" {
  source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
  #source ="../../5.12.terraform-aws-securitygroup"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for MongoDB"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  sg_name        = "mongodb"
  common_tags    = var.common_tags
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "redis" {
  source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
  #source ="../../5.12.terraform-aws-securitygroup"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for redis"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  sg_name        = "redis"
  common_tags    = var.common_tags
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "mysql" {
  source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
  #source ="../../5.12.terraform-aws-securitygroup"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for mysql"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  sg_name        = "mysql"
  common_tags    = var.common_tags
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "rabbitmq" {
  source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
  #source ="../../5.12.terraform-aws-securitygroup"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for rabbitmq"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  sg_name        = "rabbitmq"
  common_tags    = var.common_tags
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "catalogue" {
  source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
  #source ="../../5.12.terraform-aws-securitygroup"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for catalogue"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  sg_name        = "catalogue"
  common_tags    = var.common_tags
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "user" {
  source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
  #source ="../../5.12.terraform-aws-securitygroup"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for user"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  sg_name        = "user"
  common_tags    = var.common_tags
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "cart" {
  source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
  #source ="../../5.12.terraform-aws-securitygroup"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for cart"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  sg_name        = "cart"
  common_tags    = var.common_tags
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "shipping" {
  source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
  #source ="../../5.12.terraform-aws-securitygroup"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for shipping"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  sg_name        = "shipping"
  common_tags    = var.common_tags
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "payment" {
  source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
  #source ="../../5.12.terraform-aws-securitygroup"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for payment"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  sg_name        = "payment"
  common_tags    = var.common_tags
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}
module "dispatch" {
  source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
  #source ="../../5.12.terraform-aws-securitygroup"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for Dispatch"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  sg_name        = "dispatch"
  common_tags    = var.common_tags
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "web" {
  source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
  #source ="../../5.12.terraform-aws-securitygroup"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for web"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  sg_name        = "web"
   common_tags    = var.common_tags
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "app_alb" {
  source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
  #source ="../../5.12.terraform-aws-securitygroup"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for APP ALB"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  sg_name        = "app-alb"
   common_tags    = var.common_tags
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

module "web_alb" {
  source = "git::https://github.com/Lingaiahthammisetti/5.12.terraform-aws-securitygroup.git?ref=main"
  #source ="../../5.12.terraform-aws-securitygroup"
  project_name   = var.project_name
  environment    = var.environment
  sg_description = "SG for Web ALB"
  vpc_id         = data.aws_ssm_parameter.vpc_id.value
  sg_name        = "web-alb"
   common_tags    = var.common_tags
  #sg_ingress_rules = var.mongodb_sg_ingress_rules
}

# App ALB should accept connections only from VPN, since it is internal
resource "aws_security_group_rule" "mongodb_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.mongodb.sg_id
}
# resource "aws_security_group_rule" "mongodb_bastion" {
#   source_security_group_id = module.bastion.sg_id
#   type                     = "ingress"
#   from_port                = 22
#   to_port                  = 22
#   protocol                 = "tcp"
#   security_group_id        = module.mongodb.sg_id
# }
#mongodb accepting connections from catalogue instance
resource "aws_security_group_rule" "mongodb_catalogue" {
  source_security_group_id = module.catalogue.sg_id
  type                     = "ingress"
  from_port                = 27017
  to_port                  = 27017
  protocol                 = "tcp"
  security_group_id        = module.mongodb.sg_id
}

resource "aws_security_group_rule" "mongodb_user" {
  source_security_group_id = module.user.sg_id
  type                     = "ingress"
  from_port                = 27017
  to_port                  = 27017
  protocol                 = "tcp"
  security_group_id        = module.mongodb.sg_id
}

resource "aws_security_group_rule" "redis_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.redis.sg_id
}
# resource "aws_security_group_rule" "redis_bastion" {
#   source_security_group_id = module.bastion.sg_id
#   type                     = "ingress"
#   from_port                = 22
#   to_port                  = 22
#   protocol                 = "tcp"
#   security_group_id        = module.redis.sg_id
# }

resource "aws_security_group_rule" "redis_user" {
  source_security_group_id = module.user.sg_id
  type                     = "ingress"
  from_port                = 6379
  to_port                  = 6379
  protocol                 = "tcp"
  security_group_id        = module.redis.sg_id
}

resource "aws_security_group_rule" "redis_cart" {
  source_security_group_id = module.cart.sg_id
  type                     = "ingress"
  from_port                = 6379
  to_port                  = 6379
  protocol                 = "tcp"
  security_group_id        = module.redis.sg_id
}

resource "aws_security_group_rule" "mysql_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.mysql.sg_id
}

# resource "aws_security_group_rule" "mysql_bastion" {
#   source_security_group_id = module.bastion.sg_id
#   type                     = "ingress"
#   from_port                = 22
#   to_port                  = 22
#   protocol                 = "tcp"
#   security_group_id        = module.mysql.sg_id
# }

resource "aws_security_group_rule" "mysql_shipping" {
  source_security_group_id = module.shipping.sg_id
  type                     = "ingress"
  from_port                = 3306
  to_port                  = 3306
  protocol                 = "tcp"
  security_group_id        = module.mysql.sg_id
}

resource "aws_security_group_rule" "rabbitmq_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.rabbitmq.sg_id
}
# resource "aws_security_group_rule" "rabbitmq_bastion" {
#   source_security_group_id = module.bastion.sg_id
#   type                     = "ingress"
#   from_port                = 22
#   to_port                  = 22
#   protocol                 = "tcp"
#   security_group_id        = module.rabbitmq.sg_id
# }

resource "aws_security_group_rule" "rabbitmq_payment" {
  source_security_group_id = module.payment.sg_id
  type                     = "ingress"
  from_port                = 5672
  to_port                  = 5672
  protocol                 = "tcp"
  security_group_id        = module.rabbitmq.sg_id
}



resource "aws_security_group_rule" "catalogue_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.catalogue.sg_id
}

# resource "aws_security_group_rule" "catalogue_bastion" {
#   source_security_group_id = module.bastion.sg_id
#   type                     = "ingress"
#   from_port                = 22
#   to_port                  = 22
#   protocol                 = "tcp"
#   security_group_id        = module.catalogue.sg_id
# }

# resource "aws_security_group_rule" "catalogue_web" {
#   source_security_group_id = module.web.sg_id
#   type                     = "ingress"
#   from_port                = 8080
#   to_port                  = 8080
#   protocol                 = "tcp"
#   security_group_id        = module.catalogue.sg_id
# }

resource "aws_security_group_rule" "catalogue_app_alb" {
  source_security_group_id = module.app_alb.sg_id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = module.catalogue.sg_id
}
#I think it is repeated, look into it.
# resource "aws_security_group_rule" "catalogue_cart" {
#   source_security_group_id = module.cart.sg_id
#   type                     = "ingress"
#   from_port                = 8080
#   to_port                  = 8080
#   protocol                 = "tcp"
#   security_group_id        = module.catalogue.sg_id
# }

resource "aws_security_group_rule" "user_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.user.sg_id
}
# resource "aws_security_group_rule" "user_bastion" {
#   source_security_group_id = module.bastion.sg_id
#   type                     = "ingress"
#   from_port                = 22
#   to_port                  = 22
#   protocol                 = "tcp"
#   security_group_id        = module.user.sg_id
# }

resource "aws_security_group_rule" "user_app_alb" {
  source_security_group_id = module.app_alb.sg_id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = module.user.sg_id
}

resource "aws_security_group_rule" "cart_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.cart.sg_id
}
# resource "aws_security_group_rule" "cart_bastion" {
#   source_security_group_id = module.bastion.sg_id
#   type                     = "ingress"
#   from_port                = 22
#   to_port                  = 22
#   protocol                 = "tcp"
#   security_group_id        = module.cart.sg_id
# }

# resource "aws_security_group_rule" "cart_web" {
#   source_security_group_id = module.web.sg_id
#   type                     = "ingress"
#   from_port                = 8080
#   to_port                  = 8080
#   protocol                 = "tcp"
#   security_group_id        = module.cart.sg_id
# }

resource "aws_security_group_rule" "cart_app_alb" {
  source_security_group_id = module.app_alb.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.cart.sg_id
}

resource "aws_security_group_rule" "cart_shipping" {
  source_security_group_id = module.shipping.sg_id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = module.cart.sg_id
}

resource "aws_security_group_rule" "cart_payment" {
  source_security_group_id = module.payment.sg_id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = module.cart.sg_id
}

resource "aws_security_group_rule" "shipping_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.shipping.sg_id
}

# resource "aws_security_group_rule" "shipping_bastion" {
#   source_security_group_id = module.bastion.sg_id
#   type                     = "ingress"
#   from_port                = 22
#   to_port                  = 22
#   protocol                 = "tcp"
#   security_group_id        = module.shipping.sg_id
# }

# resource "aws_security_group_rule" "shipping_web" {
#   source_security_group_id = module.web.sg_id
#   type                     = "ingress"
#   from_port                = 8080
#   to_port                  = 8080
#   protocol                 = "tcp"
#   security_group_id        = module.shipping.sg_id
# }

resource "aws_security_group_rule" "shipping_app_alb" {
  source_security_group_id = module.app_alb.sg_id
  type                     = "ingress"
  from_port                = 8080
  to_port                  = 8080
  protocol                 = "tcp"
  security_group_id        = module.shipping.sg_id
}

resource "aws_security_group_rule" "payment_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.payment.sg_id
}

# resource "aws_security_group_rule" "payment_bastion" {
#   source_security_group_id = module.bastion.sg_id
#   type                     = "ingress"
#   from_port                = 22
#   to_port                  = 22
#   protocol                 = "tcp"
#   security_group_id        = module.payment.sg_id
# }

# resource "aws_security_group_rule" "payment_web" {
#   source_security_group_id = module.web.sg_id
#   type                     = "ingress"
#   from_port                = 8080
#   to_port                  = 8080
#   protocol                 = "tcp"
#   security_group_id        = module.payment.sg_id
# }

resource "aws_security_group_rule" "payment_app_alb" {
  source_security_group_id = module.app_alb.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.payment.sg_id
}
resource "aws_security_group_rule" "app_alb_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.app_alb.sg_id
}

# resource "aws_security_group_rule" "app_alb_bastion" {
#   source_security_group_id = module.bastion.sg_id
#   type                     = "ingress"
#   from_port                = 80
#   to_port                  = 80
#   protocol                 = "tcp"
#   security_group_id        = module.app_alb.sg_id
# }

resource "aws_security_group_rule" "app_alb_web" {
  source_security_group_id = module.web.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.app_alb.sg_id
}

resource "aws_security_group_rule" "web_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.web.sg_id
}

# resource "aws_security_group_rule" "web_bastion" {
#   source_security_group_id = module.bastion.sg_id
#   type                     = "ingress"
#   from_port                = 22
#   to_port                  = 22
#   protocol                 = "tcp"
#   security_group_id        = module.web.sg_id
# }
resource "aws_security_group_rule" "web_web_alb" {
  source_security_group_id = module.web_alb.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.web.sg_id
}


resource "aws_security_group_rule" "web_alb_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.web_alb.sg_id
}
# resource "aws_security_group_rule" "web_alb_bastion" {
#   source_security_group_id = module.bastion.sg_id
#   type                     = "ingress"
#   from_port                = 80
#   to_port                  = 80
#   protocol                 = "tcp"
#   security_group_id        = module.web_alb.sg_id
# }
resource "aws_security_group_rule" "web_alb_internet_http" {
  cidr_blocks = ["0.0.0.0/0"]
  type                     = "ingress"
  from_port                = 80
  to_port                  = 80
  protocol                 = "tcp"
  security_group_id        = module.web_alb.sg_id
}
resource "aws_security_group_rule" "web_alb_internet_https" {
  cidr_blocks = ["0.0.0.0/0"]
  type                     = "ingress"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
  security_group_id        = module.web_alb.sg_id
}

#openvpn
resource "aws_security_group_rule" "vpn_home_public" {
  cidr_blocks = ["0.0.0.0/0"] #ideally your home public IP address, but it frequently changes
  type                     = "ingress"
  from_port                = 0
  to_port                  = 65535
  protocol                 = "-1"
  security_group_id = module.vpn.sg_id
}

# resource "aws_security_group_rule" "bastion_public" {
#   cidr_blocks = ["0.0.0.0/0"]
#   type                     = "ingress"
#   from_port                = 22
#   to_port                  = 22
#   protocol                 = "tcp"
#   security_group_id        = module.bastion.sg_id
# }
resource "aws_security_group_rule" "dispatch_vpn" {
  source_security_group_id = module.vpn.sg_id
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.dispatch.sg_id
}

# resource "aws_security_group_rule" "dispatch_bastion" {
#   source_security_group_id = module.bastion.sg_id
#   type                     = "ingress"
#   from_port                = 22
#   to_port                  = 22
#   protocol                 = "tcp"
#   security_group_id        = module.dispatch.sg_id
# }

resource "aws_security_group_rule" "dispatch_ssh_public" {
  cidr_blocks = ["0.0.0.0/0"]
  type                     = "ingress"
  from_port                = 22
  to_port                  = 22
  protocol                 = "tcp"
  security_group_id        = module.dispatch.sg_id
}

resource "aws_security_group_rule" "dispatch_rabbitmq" {
  source_security_group_id =  module.rabbitmq.sg_id
  type                     = "ingress"
  from_port                = 5672
  to_port                  = 5672
  protocol                 = "tcp"
  security_group_id        = module.dispatch.sg_id
}

#====================================================

# resource "aws_security_group_rule" "catalogue_vpn_http" {
#   source_security_group_id = module.vpn.sg_id
#   type                     = "ingress"
#   from_port                = 8080
#   to_port                  = 8080
#   protocol                 = "tcp"
#   security_group_id        = module.catalogue.sg_id
# }
# resource "aws_security_group_rule" "user_payment" {
#   source_security_group_id = module.payment.sg_id
#   type                     = "ingress"
#   from_port                = 8080
#   to_port                  = 8080
#   protocol                 = "tcp"
#   security_group_id        = module.user.sg_id
# }

# resource "aws_security_group_rule" "app_alb_cart" {
#   source_security_group_id = module.cart.sg_id
#   type                     = "ingress"
#   from_port                = 80
#   to_port                  = 80
#   protocol                 = "tcp"
#   security_group_id        = module.app_alb.sg_id
# }

# resource "aws_security_group_rule" "app_alb_shipping" {
#   source_security_group_id = module.shipping.sg_id
#   type                     = "ingress"
#   from_port                = 80
#   to_port                  = 80
#   protocol                 = "tcp"
#   security_group_id        = module.app_alb.sg_id
# }

# resource "aws_security_group_rule" "app_alb_user" {
#   source_security_group_id = module.user.sg_id
#   type                     = "ingress"
#   from_port                = 80
#   to_port                  = 80
#   protocol                 = "tcp"
#   security_group_id        = module.app_alb.sg_id
# }

# resource "aws_security_group_rule" "app_alb_catalogue" {
#   source_security_group_id = module.catalogue.sg_id
#   type                     = "ingress"
#   from_port                = 80
#   to_port                  = 80
#   protocol                 = "tcp"
#   security_group_id        = module.app_alb.sg_id
# }

# resource "aws_security_group_rule" "app_alb_payment" {
#   source_security_group_id = module.payment.sg_id
#   type                     = "ingress"
#   from_port                = 80
#   to_port                  = 80
#   protocol                 = "tcp"
#   security_group_id        = module.app_alb.sg_id
# }



# resource "aws_security_group_rule" "web_alb_internet" {
#   cidr_blocks = ["0.0.0.0/0"]
#   type                     = "ingress"
#   from_port                = 443
#   to_port                  = 443
#   protocol                 = "tcp"
#   security_group_id        = module.web_alb.sg_id
# }

# resource "aws_security_group_rule" "user_web" {
#   source_security_group_id = module.web.sg_id
#   type                     = "ingress"
#   from_port                = 8080
#   to_port                  = 8080
#   protocol                 = "tcp"
#   security_group_id        = module.user.sg_id
# }

# resource "aws_security_group_rule" "web_internet" {
#   cidr_blocks = ["0.0.0.0/0"]
#   type                     = "ingress"
#   from_port                = 80
#   to_port                  = 80
#   protocol                 = "tcp"
#   security_group_id        = module.web.sg_id
# }