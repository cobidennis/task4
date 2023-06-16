variable "ami_id" {
  description = "The AMI to base the meachine from"
  type        = string
}

variable "instance_type" {
  description = "The Instance type that the machine should be"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The Pem Key Name"
  type        = string
}

variable "default_tags" {
  description = "Default Tags for instances"
  type        = map(any)
  default = {
    "Name" = "WebApp Node"
  }
}

variable "subnet_id_1a" {
  description = "The machine will sit in EU-WEST-1A"
  type        = string
}

variable "subnet_id_1b" {
  description = "The machine will sit in EU-WEST-1B"
  type        = string
}

variable "instance_count" {
  description = "The number of instances to provision"
  type        = number
  default     = 1
}

variable "vpc_security_group_ids" {
  description = "The security groups id to add the instance to"
  type = list(string)
}