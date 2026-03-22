provider "local" {}

variable "filename" {}
variable "message" {}

resource "local_file" "file" {
  content  = var.message
  filename = var.filename
}