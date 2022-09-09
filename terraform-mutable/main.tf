# module "vpc" {
#   source = "git::https://github.com/b49-clouddevops/tf-module-vpc.git?ref=main"
# }

module "cart" {
  source           = "./vendor/modules/app"
  # COMPONENT        = var.COMPONENT
}


variable "INSTANCE_TYPE" {}
variable "ENV" {}
variable "SPOT_INSTANCE_COUNT" {}
variable "OD_INSTANCE_COUNT" {}
variable "COMPONENT" {}
variable "APP_PORT" {}
variable "WORKSPATION_IP" {}


# You cannot parameterise the source section of the terraform module : Branc name cannot be parameterised. 
# That's the challenge with terraform : Terrafile from coretech
