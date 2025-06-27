resource "podman_image" "nginx_podman" {
  name     = "docker.io/library/nginx:latest"
  provider = podman.pod
}

resource "podman_container" "nginx_podman" {
  name  = "nginx-pod"
  image = podman_image.nginx_podman.name

  ports {
    container_port = 80
    host_port      = 8082
  }

  provider = podman.pod
}