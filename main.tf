# 🔁 Use Podman via Docker provider alias
resource "docker_image" "nginx_pod" {
  name     = "nginx:latest"
  provider = docker.pod
}

resource "docker_container" "nginx_pod" {
  name  = "nginx-pod"
  image = docker_image.nginx_pod.image_id

  ports {
    internal = 80
    external = 8082
  }

  provider = docker.pod
}

# 🐳 Optional: Docker Desktop variant for comparison
resource "docker_image" "nginx_docker" {
  name     = "nginx:latest"
  provider = docker.docker
}

resource "docker_container" "nginx_docker" {
  name  = "nginx-docker"
  image = docker_image.nginx_docker.image_id

  ports {
    internal = 80
    external = 8081
  }

  provider = docker.docker
}
