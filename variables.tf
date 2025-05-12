variable "file_path" {
  description = "The path where the file will be created"
  type        = string
}

variable "env_test" {
  type        = string
}

variable "file_content" {
  description = "The content of the file"
  type        = string
}

variable "directory_path" {
  type        = string
  description = "The path where the directory will be created"
}
