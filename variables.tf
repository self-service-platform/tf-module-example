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
  description = <<EOD
The path where the directory will be created
@options_from_function
function getList() {
  return ['value1', 'value2'];
}
EOD
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
  
  default = {
    name     = "default_name"
    enabled  = true
    retries  = 3
    settings = {
      setting1 = {
        speed        = 100
        acceleration = true
      }
      setting2 = {
        speed        = 50
        acceleration = false
      }
    }
    map = {
      key1 = "value1"
      key2 = "value2"
    }
    tags = ["tag1", "tag2", "tag3"]
    config = {
      size  = 10
      scale = true
    }
  }
}

