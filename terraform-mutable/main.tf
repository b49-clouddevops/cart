# module "vpc" {
#   source = "git::https://github.com/b49-clouddevops/tf-module-vpc.git?ref=main"
# }

module "mongodb" {
  source           = "./vendor/modules/mongodb"
  ENV              = var.ENV
  WORKSPATION_IP   = var.WORKSPATION_IP
  DOCDB_PORT       = var.DOCDB_PORT 
  DOCDB_INSTACE_CLASS = var.DOCDB_INSTACE_CLASS
  DOCDB_INSTACE_COUNT = var.DOCDB_INSTACE_COUNT
}

}

# You cannot parameterise the source section of the terraform module : Branc name cannot be parameterised. 
# That's the challenge with terraform : Terrafile from coretech
