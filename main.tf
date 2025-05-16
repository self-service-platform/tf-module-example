terraform {
  required_version = "~> 1.7"
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.0"
    }
  }
}

provider "github" {
  owner = var.github_organization
  token = var.token
}

resource "github_repository" "this" {
  name        = var.repo_name
  description = var.description
  visibility  = var.public ? "public" : "private"
}
