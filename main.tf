
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }

  required_version = ">= 1.5.0"
}

# Connect to local Docker Desktop on Windows
provider "docker" {
  host = "npipe:////.//pipe//docker_engine"
}

# Download the NGINX image
resource "docker_image" "nginx_image" {
  name         = "nginx:latest"
  keep_locally = true
}

# Create a local Docker container
resource "docker_container" "nginx_container" {
  name  = "uday-terraform-nginx"
  image = docker_image.nginx_image.image_id

  ports {
    internal = 80
    external = 8080
  }
}

# Display container information
output "container_name" {
  value = docker_container.nginx_container.name
}

output "container_url" {
  value = "http://localhost:8080"
}
