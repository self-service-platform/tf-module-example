output "created_file_path" {
  description = "The path of the created file"
  value       = local_file.example_file.filename
}

output "created_directory_path" {
  description = "The path of the created directory"
  value       = local_file.example_directory.filename
}
