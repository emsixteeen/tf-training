variable "images" {
  type = list 
  default = [
  ]
}

variable "names" {
  type = list
  default = [
    "app",
    "db",
    "lb",
  ]
}

variable "db_host" {
  type = string
  default = "127.0.0.1"
}
