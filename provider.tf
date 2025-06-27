terraform {
  required_providers {
    podman = {
      source = "project0/podman"
    }
  }
}

provider "podman" {
  alias = "pod"
  uri   = "unix:///var/folders/yx/5vkcx21x6h99nz2r0r3glcpw0000gn/T/podman/podman-machine-default-api.sock"
}
