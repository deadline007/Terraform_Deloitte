terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.83.0"
    }
    azure = {
      source  = "hashicorp/azurerm"
      version = ">= 3.21.0"
    }
    google = {
      source  = "hashicorp/google"
      version = ">= 4.32.0"
    }
  }
}
