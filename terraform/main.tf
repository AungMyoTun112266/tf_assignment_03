# Pulls the image
resource "docker_image" "nginx" {
  name = var.image_name
}

# Create a container
resource "docker_container" "nginx_container" {
  image = docker_image.nginx.image_id
  name  = var.container_name
  ports {
    internal = 1918
    external = 9090
  }
}