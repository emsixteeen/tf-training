output "container_names" {
  value = values(docker_container.container).*.name
}

output "container_ids" {
  value = values(docker_container.container).*.id
}
