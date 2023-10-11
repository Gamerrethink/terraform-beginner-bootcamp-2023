terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
#resource "aws_s3_bucket" "website_bucket" {
#  bucket = var.bucket_name
#
#  tags = {
#    UserUuid = var.user_uuid
#  }
#}
  cloud {
    organization = "terraformbootcamp2023"
    workspaces {
      name = "terra-house-1"
    }
  }
}

provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.terratowns_access_token
}

module "home_quake2_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.Quake2.public_path
  content_version = var.Quake2.content_version
}

resource "terratowns_home" "home_quake2" {
  name = "How to play Quake II (1997) in 2023"
  description = <<DESCRIPTION
Quake II is a 1997 first-person-shooter video game developed by id Software.
This guide will show you how to play the game on modern hardware.
DESCRIPTION
  domain_name = module.home_quake2_hosting.domain_name
  #domain_name = "3fdq3gz.cloudfront.net"
  town = "gamers-grotto"
  content_version = var.Quake2.content_version
}

module "home_doom_1993_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.DOOM1993.public_path
  content_version = var.DOOM1993.content_version
}

resource "terratowns_home" "home_doom_1993" {
  name = "How to play DOOM (1993) in 2023"
  description = <<DESCRIPTION
DOOM is a 1993 first-person-shooter video game developed by id Software.
This guide will show you how to play the game on modern hardware.
DESCRIPTION
  domain_name = module.home_doom_1993_hosting.domain_name
  #domain_name = "3fdq3gz.cloudfront.net"
  town = "gamers-grotto"
  content_version = var.DOOM1993.content_version
}