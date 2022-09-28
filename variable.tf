variable "subnet_name" {
  type        = string
  default     = "subnet-2b"
  description = "The id of the machine image (AMI) to use for the server."
}

variable "key_name" {
  type        = string
  default     = "LG"  
}

variable "ami" {
  type        = string
  default     = "ami-0568773882d492fc8"
}

variable "instance" {
  type        = string
  default     = "t2.medium"
}

variable "count_no" {
  type        = number
  default     = 1
}

variable "security_group" {
  type        = string
  default     = "all"
}
