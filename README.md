# AWS Terraform Configuration

Este proyecto utiliza Terraform para provisionar una instancia EC2 en AWS.

## Configuración

### Proveedor AWS

Configuramos AWS con la región deseada.

```hcl
provider "aws" {
  region = "us-west-2" # Cambia esto a tu región preferida
}
