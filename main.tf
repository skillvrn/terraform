module "tf-yc-instance" {
  source          = "./modules/tf-yc-instance"
  zone            = var.zone
  subnet_id       = module.tf-yc-network.yandex_vpc_subnet
  disk_image_id   = var.disk_image_id
}

module "tf-yc-network" {
  source          = "./modules/tf-yc-network"
  vpc_subnet_zone = module.tf-yc-instance.zone
}
