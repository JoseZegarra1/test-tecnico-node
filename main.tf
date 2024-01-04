provider "aws" {
  region = "us-west-2" # Puedes cambiar esto a tu región preferida
}

# Definición del módulo para crear una instancia EC2
module "mi_instancia_ec2" {
  source = "./modules/mi_instancia_ec2"

  # Variables que puedes pasar al módulo
  instance_type = "t2.micro"
  ami_id        = "ami-0abcdef1234567890" # Reemplaza con una AMI válida en tu región
}