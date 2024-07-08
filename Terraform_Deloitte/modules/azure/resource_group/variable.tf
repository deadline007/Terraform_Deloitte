variable "name" {
    type        = list(object({
      name      = string
      location  = string
    }))
}