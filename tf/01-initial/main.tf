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
  name         = ""
  keep_locally = false
}

resource "docker_image" "app" {
  name         = ""
  keep_locally = false
}

resource "docker_image" "db" {
  name         = ""
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
  env = ["MYSQL_HOST=127.0.0.1"]
}

resource "docker_container" "db" {
  image   = docker_image.db.image_id
  name = "app-db"
  network_mode = "host"
}


