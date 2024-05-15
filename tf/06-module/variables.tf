variable "images" {
  type = map(object({
    name = string
    image = string
    image_version = string
    repo = optional(string)
    env = optional(list(string))
  }))
  default = {
  }
}
