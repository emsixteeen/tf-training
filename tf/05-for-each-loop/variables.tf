variable "images" {
  type = map
  default = {
    app = {
      image = "emsixteeen/tf-training-app:0.1",
      env = ["MYSQL_HOST=127.0.0.1"],
    },
    db = {
      image = "emsixteeen/tf-training-mysql:0.1",
      env = [],
    },
    lb = {
      image = "emsixteeen/tf-training-lb:0.1",
      env = [],
    },
  }
}
