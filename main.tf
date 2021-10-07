variable "project" {
    type = string
}

variable "name" {
    type = string
}

module "memorystore" {
  source  = "terraform-google-modules/memorystore/google"
  version = "4.1.0"

  name    = var.name
  project = var.project
}

terraform {
  backend "gcs" {
    bucket  = "gilles-terraform-bucket"
    prefix  = "terraform/state"
  }
}
