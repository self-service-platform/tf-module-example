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

# Create a directory
resource "local_file" "example_directory" {
  filename = "${var.directory_path}/"
  directory_permission = "0755"
}

# Create a file inside the directory
resource "local_file" "example_file" {
  filename = "${var.directory_path}/${var.file_path}"
  content  = var.file_content
  file_permission = "0644"

  # Ensure the directory is created before the file
  depends_on = [local_file.example_directory]
}
