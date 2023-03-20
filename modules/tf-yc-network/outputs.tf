locals {
  zone_subnet_id = [for each in data.yandex_vpc_subnet.default : each.subnet_id if each.zone == var.vpc_subnet_zone]
}

output "yandex_vpc_network" {
  description    = "Yandex.Cloud Network map"
  value          = data.yandex_vpc_network.default
}

output "yandex_vpc_subnet" {
  description    = "Yandex.Cloud Subnets ID"
  value          = local.zone_subnet_id[0]
}
