terraform {
  required_providers {
    postgresql = {
      source  = "cyrilgdn/postgresql"
      version = ">= 1.13.0"
    }
  }
}

provider "postgresql" {
    host    = var.database_instance_name_host
    port = var.port
    username = var.username
    password = var.password
    database = var.database
    
}

resource "postgresql_database" "db" {
    name = var.database_instance_name
        
    
  
}

# resource "postgresql_grant" "grant" {
#     database = postgresql_database.db.name
#     # grantee_name = postgresql_user.user.name
 
#     privileges = [ "ALL" ]
# }

