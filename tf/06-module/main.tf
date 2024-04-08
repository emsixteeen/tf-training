module "containers" {
  source = "./modules/containers"
  for_each = var.images

  name = "${each.value.name}"
  image = "${each.value.image}"
  image_version = "${each.value.image_version}"
  repo = "${each.value.repo}"
  env = "${each.value.env}"
}

