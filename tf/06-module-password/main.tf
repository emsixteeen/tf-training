locals {
  password=["MYSQL_PASSWORD=${var.password}"]
}

module "containers" {
  source = "./modules/containers"
  for_each = var.images


  name = "${each.value.name}"
  image = "${each.value.image}"
  image_version = "${each.value.image_version}"
  repo = "${each.value.repo}"
  env = "${concat(each.value.env, local.password)}"
}
