terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}

resource "docker_image" "lb" {
  name         = "${var.image_lb}"
  keep_locally = false
}

resource "docker_image" "app" {
  name         = "${var.image_app}"
  keep_locally = false
}

resource "docker_image" "db" {
  name         = "${var.image_db}"
  keep_locally = false
}

resource "docker_container" "lb" {
  image   = docker_image.lb.image_id
  name = "app-lb"
  network_mode = "host"
}

resource "docker_container" "app" {
  image   = docker_image.app.image_id
  name = "app-app"
  network_mode = "host"
  env = ["MYSQL_HOST=${var.db_host}"]
}

resource "docker_container" "db" {
  image   = docker_image.db.image_id
  name = "app-db"
  network_mode = "host"
}
