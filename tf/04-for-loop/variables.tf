variable "images" {
  type = list 
  default = [
    "emsixteeen/tf-training-app:0.1",
    "emsixteeen/tf-training-mysql:0.1",
    "emsixteeen/tf-training-lb:0.1",
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
