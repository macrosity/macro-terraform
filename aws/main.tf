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
