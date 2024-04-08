output "container_names" {
  value = ["${docker_container.container.*.name}"]
}

output "container_ids" {
  value = ["${docker_container.container.*.id}"]
}
