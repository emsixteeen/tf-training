terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

locals {
  container_name = var.name
  container_repo = var.repo
  container_image = var.image
  container_env = var.env
  container_image_full = "${var.repo}/${var.image}:${var.image_version}"
}

resource "docker_image" "image" {
  name = local.container_image_full
  keep_locally = false
}

resource "docker_container" "container" {
  image   = docker_image.image.image_id
  name = "${local.container_name}"
  network_mode = "host"
  env = local.container_env
}
