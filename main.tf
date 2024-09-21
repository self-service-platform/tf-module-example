terraform {
  required_version = "~> 1.7"
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.1"
    }
  }
}
provider "local" {
}

resource "local_file" "foo" {
  content  = "foo!"
  filename = "${path.module}/foo.bar"
}
