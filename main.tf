terraform {
  required_version = "~> 1.3"

  backend "s3" {
    bucket         = "nombre-del-bucket-s3"
    key            = "ruta/del/archivo.tfstate"
    region         = "eu-west-1"
    encrypt        = true
    dynamodb_table = "nombre-de-la-tabla-dynamodb"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}
/* 
terraform {
  required_version = "~> 1.3"
}

provider "local" {
  # Configuración específica del proveedor local, si es necesario
}

# Aquí puedes definir los recursos y configuraciones para tu entorno local
# Utiliza los bloques de recursos y configuraciones adecuados según tus necesidades

resource "local_file" "ejemplo" {
  filename = "ruta/al/archivo.txt"
  content  = "Contenido de ejemplo"
}
 */