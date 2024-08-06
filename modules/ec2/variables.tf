variable "subnet_id" {
  description = "The ID of the subnet where the EC2 instance will be launched."
  type        = string
}

variable "key_name" {
  description = "The name of the key pair to use for the EC2 instance."
  type        = string
}
