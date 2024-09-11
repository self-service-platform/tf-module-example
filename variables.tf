variable "path" {
  type = object({
    map = string
    t = list(object({x = number, y = string})
  )})
}
# A complex object variable containing maps, lists, and nested objects
variable "config" {
  type = object({
    name        = string
    environment = string
    resources   = map(object({
      cpu    = number
      memory = string
      tags   = map(string)
      instances = list(object({
        instance_type = string
        instance_id   = string
        volumes = list(object({
          size  = number
          type  = string
        }))
      }))
    }))
    metadata = object({
      created_by = string
      created_at = string
      version    = number
    })
  })
}

# A list of objects with a mix of types
variable "paths" {
  type = list(object({
    name    = string
    details = object({
      url    = string
      params = map(string)
      headers = map(list(string))
    })
    enabled = bool
  }))
}

# A map where the keys are strings, and the values are lists of objects
variable "services" {
  type = map(list(object({
    service_name = string
    endpoints    = list(string)
    metrics = object({
      latency = number
      throughput = number
    })
    region = string
  })))
}

# A list of maps with nested objects
variable "applications" {
  type = list(map(object({
    app_name  = string
    app_id    = string
    versions  = list(object({
      version   = string
      released  = string
      changelog = string
    }))
  })))
}

# A more complex nested structure combining all types
variable "infrastructure" {
  type = object({
    servers = map(object({
      count = number
      types = list(string)
      specs = object({
        cpu    = number
        memory = string
      })
      os_version = string
    }))
    network = object({
      subnets = map(list(object({
        cidr_block = string
        az         = string
      })))
      security_groups = list(object({
        name   = string
        rules  = list(object({
          protocol = string
          port     = number
          cidr     = string
        }))
      }))
    })
  })
}
