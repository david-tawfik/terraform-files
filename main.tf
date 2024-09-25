terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "image" {
  name         = "${var.image_name}:${var.image_version}"
  keep_locally = false
}

resource "docker_container" "nginx" {
  count = var.number_of_containers
  image = docker_image.image.name
  name  = "tutorial_${count.index}"

  ports {
    internal = 80
    external = 8000 + count.index
  }
}
