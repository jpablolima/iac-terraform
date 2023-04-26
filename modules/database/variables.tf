variable "database_instance_name" {
    type = string
  
}

variable "database_instance_name_host" {
    description = "O endereço do servidor do banco de dados PostgresSQL"
}

variable "port" {
  description = "A porta do servidor do banco de dados PostgreSQL"
}

variable "username" {
  description = "O nome do usuário do banco de dados PostgreSQL"
}

variable "password" {
  description = "O nome do usuário do banco de dados PostgreSQL"
}

variable "database" {
  description = "O nome do banco de dados PostgreSQL"
}