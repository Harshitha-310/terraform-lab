terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

provider "local" {}

variable "message" {
  default = "Hello from Terraform"
}

resource "local_file" "hello" {
  content  = var.message
  filename = "hello.txt"
}

output "file_path" {
  value = local_file.hello.filename
}