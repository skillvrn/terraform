variable "vm_suffixes" {
  default     = ["frontend","backend"]
  type        = list
  description = "List of VMs suffix-names"
}

variable "instance_name" {
  default     = "chapter5-lesson2-std-014-40"
  type        = string
  description = "Name of instance name on Yandex Cloud"
  nullable    = false
}

variable "vm_type" {
  default     = "standard-v1"
  type        = string
  description = "(Optional) The type of virtual machine to create"
  validation {
    condition     = contains(toset(["standard-v1", "standard-v2", "standard-v3"]), var.vm_type)
    error_message = "Select type of virtual machine from the list: standard-v1, standard-v2, standard-v3."
  }
  nullable    = false
}

variable "zone" {
  default     = "ru-central1-a"
  type        = string
  description = "Zone for instance on Yandex Cloud"
  validation {
    condition     = contains(toset(["ru-central1-a", "ru-central1-b", "ru-central1-c"]), var.zone)
    error_message = "Select availability zone from the list: ru-central1-a, ru-central1-b, ru-central1-c."
  }
  nullable    = false
}

variable "preemptible" {
  default     = true
  type        = bool
  description = "(Optional) Specifies if the machine is preemptible"
}

variable "resources_cores" {
  default     = 2
  type        = number
  description = "CPU cores"
  nullable    = false
}

variable "resources_memory" {
  default     = 2
  type        = number
  description = "RAM size in GB"
  nullable    = false
}

variable "disk_image_id" {
  default     = "fd80qm01ah03dkqb14lc"
  type        = string
  description = "(Optional) A disk image to initialize this disk from"
}

variable "disk_size" {
  default     = 50
  type        = string
  description = "(Optional) Size of the disk in GB"
}

variable "subnet_id" {
  type        = string
  description = "ID of the subnet to attach this interface to"
  nullable    = false
}

variable "nat" {
  default     = true
  type        = bool
  description = "(Optional) Provide a public address, for instance, to access from Internet"
}
