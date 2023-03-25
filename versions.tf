terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = ">= 0.87"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "terraform-state"
    region     = "ru-central1"
    key        = "terraform.tfstate"
    #access_key = "I AM IN config.<backendname>.tfbackend"
    #secret_key = "I AM IN config.<backendname>.tfbackend too"

    skip_region_validation = true
    skip_credentials_validation = true
  }

  required_version = ">= 1.4.0"
}
