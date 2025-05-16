output "repo_url" {
  description = "The URL of the repository"
  value       = github_repository.this.html_url
}
