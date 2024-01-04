variable "instance_type" {
  description = "Tipo de instancia EC2"
  type        = string
}

variable "ami_id" {
  description = "ID de la AMI a utilizar"
  type        = string
}

# Recurso para la instancia EC2
resource "aws_instance" "mi_instancia" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "MiInstanciaEC2"
  }
}
