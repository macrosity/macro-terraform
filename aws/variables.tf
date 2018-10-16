variable "aws_region" {}

#-----Storage Variables

variable "project_name" {}

#----- Networking Variables

variable "vpc_cidr" {}
variable "public_cidrs" {
  type = "list"
}
variable "access_ip" {}

#----- Compute Variables

variable "key_name" {}
variable "public_key_path" {}
variable "instance_count" {
  default = 1
}
variable "instance_type" {}
