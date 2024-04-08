variable "image_app" {
  type = string
  default = "emsixteeen/tf-training-app:0.1"
}

variable "image_db" {
  type = string
  default = "emsixteeen/tf-training-mysql:0.1"
}

variable "image_lb" {
  type = string
  default = "emsixteeen/tf-training-lb:0.1"
}

variable "db_host" {
  type = string
  default = "127.0.0.1"
}
