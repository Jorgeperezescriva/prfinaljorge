# terraform {
#   required_version = "~> 1.3"

#   backend "s3" {
#     bucket         = "nombre-del-bucket-s3"
#     key            = "ruta/del/archivo.tfstate"
#     region         = "eu-west-1"
#     encrypt        = true
#     dynamodb_table = "nombre-de-la-tabla-dynamodb"
#   }

#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.0"
#     }
#   }
# }
# The configuration for the `remote` backend.
     terraform {
       backend "remote" {
         # The name of your Terraform Cloud organization.
         organization = "prfinaljorge"

         # The name of the Terraform Cloud workspace to store Terraform state files in.
         workspaces {
           name = "prfinlajorge"
         }
       }
     }

     # An example resource that does nothing.
     resource "null_resource" "example" {
       triggers = {
         value = "A example resource that does nothing!"
       }
     }
