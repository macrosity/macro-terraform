provider "aws" {
  region = "${var.aws_region}"
}

# deploy S3 resource

module "storage" {
  source       = "./storage"
  project_name = "${var.project_name}"
}

# deploy Network resource

module "networking" {
  source       = "./networking"
  vpc_cidr     = "${var.vpc_cidr}"
  public_cidrs = "${var.public_cidrs}"
  access_ip    = "${var.access_ip}"
}

# deploy Comute resource

module "compute" {
  source          = "./compute"
  instance_count  = "${var.instance_count}"
  key_name        = "${var.key_name}"
  public_key_path = "${var.public_key_path}"
  instance_type   = "${var.instance_type}"
  subnets         = "${module.networking.public_subnets}"
  subnet_ips      = "${module.networking.subnet_ips}"
  security_group  = "${module.networking.public_sg}"
}
