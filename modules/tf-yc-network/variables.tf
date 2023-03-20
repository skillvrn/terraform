variable "vpc_subnet_zone" {
  default     = "ru-central1-a"
  type        = string
  description = "Default zone for infrastructure"
  validation {
    condition     = contains(toset(["ru-central1-a", "ru-central1-b", "ru-central1-c"]), var.vpc_subnet_zone)
    error_message = "Select availability zone from the list: ru-central1-a, ru-central1-b, ru-central1-c."
  }
  nullable = false
}
