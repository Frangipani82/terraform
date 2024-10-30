# Variables for the aws provider
variable "region" {
  type = string
}

#Variables for the vpc
variable "vpc_cidr" {
  type = string
}

# Variables for the subnets
variable "subnet_cidr_blocks" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}

variable "private_ips" {
  type = list(string)
}

#Variables for the launch template
variable "image_id" {
  type = string
}

variable "instance_type" {
  type = string
}

#Variables for the key pair
variable "key_name" {
  type = string
}

variable "key_path" {
  type = string
}

#Variables for the auto scaling group
variable "min_size" {
  type = number
}

variable "max_size" {
  type = number
}

variable "desired_size" {
  type = number
}

variable "target_scaling" {
  type = number
}

#Variables for route53
variable "domain" {
  type = string
}

variable "route_identifier" {
  type = string
}

#Variables for the security group
variable "tcp_protocol" {
  type = string
}

variable "icmp_protocol" {
  type = string
}

variable "general_cidr_block" {
  type = string
}