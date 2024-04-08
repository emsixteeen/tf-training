terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "image" {
  for_each = var.images
  name = each.value.image
  keep_locally = false
}

resource "docker_container" "container" {
  for_each = var.images
  image   = each.value.image
  name = "app-${each.key}"
  network_mode = "host"
  env = each.value.env
}
