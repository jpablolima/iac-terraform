output "database_name" {
    value = postgresql_database.db.name
}


output "port" {
    value = 5432
}

output "username" {
  value = "admin"
}

output "password" {
  value = "admin"
}

output "database" {
  value = "mydb"
}

output "host" {
  value = postgresql_database.db.id
}

