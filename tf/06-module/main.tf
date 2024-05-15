module "containers" {
  source = # Import the module from ./modules/containers
  for_each = # Fill in the variable "images" 

  name = "${each.value.name}"
  image = "${each.value.image}"
  image_version = "${each.value.image_version}"
  repo = "${each.value.repo}"
  env = "${each.value.env}"
}

