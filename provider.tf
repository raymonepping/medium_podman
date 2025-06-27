terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
  }
}

# Standard Docker (Docker Desktop)
provider "docker" {
  alias = "docker"
  host  = "unix:///var/run/docker.sock"
}

# Podman (via Docker-compatible API socket)
provider "docker" {
  alias = "pod"
  host  = "unix:///var/folders/yx/5vkcx21x6h99nz2r0r3glcpw0000gn/T/podman/podman-machine-default-api.sock"
}
