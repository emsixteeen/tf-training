variable "images" {
  type = map
  default = {
    app = {
      image = "",
      env = ["MYSQL_HOST=127.0.0.1"],
    },
    db = {
      image = "",
      env = [],
    },
    lb = {
      image = "",
      env = [],
    },
  }
}
