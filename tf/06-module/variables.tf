variable "images" {
  type = map(object({
    name = string
    image = string
    image_version = string
    repo = optional(string)
    env = optional(list(string))
  }))
  default = {
    app = {
      name = "app",
      image = "tf-training-app",
      image_version = "0.1",
      env = ["MYSQL_HOST=127.0.0.1"],
    },
    db = {
      name = "db",
      image = "tf-training-mysql",
      image_version = "0.1",
    },
    lb = {
      name = "lb",
      repo = "emsixteeen.com",
      image = "tf-training-lb",
      image_version = "0.1",
    },
  }
}
