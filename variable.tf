variable "token" {}

variable "secret-mounts" {
  default = {
    roboshop-dev = {
      description = "RoboShop Project Dev Secrets"
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

  }
}



