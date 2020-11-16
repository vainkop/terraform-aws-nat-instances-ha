variable "name" {
  type    = string
  default = "default"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "A map of tags to add to all resources"
}

variable "ami_name_pattern" {
  default     = "ubuntu/images/hvm-ssd/ubuntu-xenial-16.04-amd64-server-*"
  description = "The name filter to use in data.aws_ami"
}

variable "ami_publisher" {
  default     = "099720109477" # Canonical
  description = "The AWS account ID of the AMI publisher"
}

variable "instance_type" {
  type    = string
  default = "t3a.micro"
}

variable "instance_count" {
  type    = number
  default = 1
}

variable "az_list" {
  type = list(string)
}

variable "public_subnet_ids" {
  type = list(string)
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "vpc_security_group_ids" {
  type = list(string)
}

variable "aws_key_name" {}

variable "awsnycast_deb_url" {
  default = "https://github.com/bobtfish/AWSnycast/releases/download/v0.1.5/awsnycast_0.1.5-425_amd64.deb"
}

variable "route_table_identifier" {
  description = "Indentifier used by AWSnycast route table regexp"
  default     = "private"
}

