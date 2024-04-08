variable "images" {
  type = map
  default = {
    app = {
      image = "emsixteeen.com/tf-training-app:0.1",
      env = ["MYSQL_HOST=127.0.0.1"],
    },
    db = {
      image = "emsixteeen.com/tf-training-mysql:0.1",
      env = [],
    },
    lb = {
      image = "emsixteeen.com/tf-training-lb:0.1",
      env = [],
    },
  }
}
