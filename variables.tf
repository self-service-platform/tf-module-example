variable "file_path" {
  description = "The path where the file will be created"
  type        = string
}

variable "file_content" {
  description = "The content of the file"
  type        = string
}

variable "directory_path" {
  description = "The path where the directory will be created"
  type        = string
}

variable "complex_variable" {
  type = object({
    name         = string
    enabled      = bool
    retries      = number
    settings     = map(object({
      speed        = number
      acceleration = bool
    }))
    map          = map(string) 
    tags         = list(string)
    config       = object({
      size  = number
      scale = bool
    })
  })
}
