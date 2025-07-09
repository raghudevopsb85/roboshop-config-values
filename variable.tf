variable "token" {}

variable "secret-mounts" {
  default = {
    roboshop-dev = {
      description = "RoboShop Project Dev Secrets"
    }
    roboshop-infra = {
      description = "RoboShop Project Infra Secrets"
    }
  }
}

variable "secrets" {
  default = {
    cart = {
      secret_mount = "roboshop-dev"
      kv = {
        REDIS_HOST       = "redis-dev.rdevopsb85.online",
        CATALOGUE_HOST       = "catalogue-dev.rdevopsb85.online",
        CATALOGUE_PORT       = 8080
      }
    }

    frontend = {
      secret_mount = "roboshop-dev"
      kv = {
        CATALOGUE_URL       = "http://catalogue-dev.rdevopsb85.online:8080/",
        USER_URL       = "http://user-dev.rdevopsb85.online:8080/",
        CART_URL       = "http://cart-dev.rdevopsb85.online:8080/",
        SHIPPING_URL       = "http://shipping-dev.rdevopsb85.online:8080/",
        PAYMENT_URL       = "http://payment-dev.rdevopsb85.online:8080/"
      }
    }

    catalogue = {
      secret_mount = "roboshop-dev"
      kv = {
        MONGO       = "true",
        MONGO_URL       = "mongodb://mongodb-dev.rdevopsb85.online:27017/catalogue"
      }
    }

    user = {
      secret_mount = "roboshop-dev"
      kv = {
        MONGO       = "true",
        REDIS_URL       = "redis://redis-dev.rdevopsb85.online:6379",
        MONGO_URL       = "mongodb://mongodb-dev.rdevopsb85.online:27017/users"
      }
    }

    mysql = {
      secret_mount = "roboshop-dev"
      kv = {
        ROOT_PASSWORD       = "RoboShop@1"
      }
    }

    rabbitmq = {
      secret_mount = "roboshop-dev"
      kv = {
        APP_USER       = "roboshop",
        APP_PASSWORD       = "roboshop123"
      }
    }

    shipping = {
      secret_mount = "roboshop-dev"
      kv = {
        CART_ENDPOINT       = "cart-dev.rdevopsb85.online:8080",
        DB_HOST       = "mysql-dev.rdevopsb85.online",
        DB_USER       = "root",
        DB_PASS       = "RoboShop@1"
      }
    }

    payment = {
      secret_mount = "roboshop-dev"
      kv = {
        CART_HOST       = "cart-dev.rdevopsb85.online",
        CART_PORT       = 8080,
        USER_HOST       = "user-dev.rdevopsb85.online",
        USER_PORT       = 8080,
        AMQP_HOST       = "rabbitmq-dev.rdevopsb85.online",
        AMQP_USER       = "roboshop",
        AMQP_PASS       = "roboshop123"
      }
    }

    ssh = {
      secret_mount = "roboshop-infra"
      kv = {
        username       = "ec2-user",
        password       = "DevOps321"
      }
    }

  }
}



