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
  count = length(var.images)
  name = var.images[count.index]
  keep_locally = false
}

resource "docker_container" "container" {
  count = length(var.images)
  image = docker_image.image[count.index].image_id
  name = "app-${var.names[count.index]}"
  network_mode = "host"
  env = "${var.names[count.index]}" == "app" ? ["MYSQL_HOST=127.0.0.1"] : []
}
