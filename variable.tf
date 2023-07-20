variable "ami" {
  type    = string
  default = "ami-07ce6ac5ac8a0ee6f"
}

variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "tags" {
  type = string
  default =  "web_server"
}

variable "SG_Name" {
    type = string
    default = "sg"
}
