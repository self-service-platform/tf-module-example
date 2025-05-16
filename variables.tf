variable "repo_name" {
  type        = string
  description = "The name of the repository"
}

variable "description" {
  type        = string
  description = "The description of the repository"
}

variable "public" {
  type        = bool
  description = "Whether the repository is public"
}

variable "token" {
  type        = string
  description = "The token for the GitHub API"
}

variable "github_organization" {
  type        = string
  description = "The organization name"
}
