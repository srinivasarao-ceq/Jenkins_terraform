variable "vpc-Id" {
  type = string
  default = "vpc-b03f52da"
}


variable "ssh_port" {
  type    = number
  default = "22"
}

variable "web_port" {
  type    = number
  default = "80"
}

variable "tags" {
    type = string
    default = "web security_group"
  
}

variable "SG_Name"{
    type = string
    default = "SG"
}

