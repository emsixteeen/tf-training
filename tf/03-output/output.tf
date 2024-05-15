output "app-container-id" {
  value = docker_container.app.id
}

output "db-container-id" {
  # Output the database container ID
  value = 
}

output "lb-container-id" {
  value = docker_container.lb.id
}


