terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "nginx" {
  name = "nginx:latest"
}

variable "container_config" {
  type = list(object({
    name = string
    port = number
  }))

  default = [
    {
      name = "web1"
      port = 8081
    },
    {
      name = "web2"
      port = 8082
    },
    {
      name = "web3"
      port = 8083
    }
  ]
}

module "nginx_containers" {

  source = "../day4/modules/nginx_container"

  for_each = {
    for container in var.container_config :
    container.name => container
  }

  container_name = each.value.name
  container_port = each.value.port
  image_name     = docker_image.nginx.name
}

output "container_urls" {
  value = [
    for container in var.container_config :
    "http://localhost:${container.port}"
  ]
}