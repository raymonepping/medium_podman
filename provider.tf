terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
    podman = {
      source = "project0/podman"
    }
  }
}

provider "podman" {
  alias        = "pod"
  socket_path  = "unix:///var/folders/yx/5vkcx21x6h99nz2r0r3glcpw0000gn/T/podman/podman-machine-default-api.sock"
}