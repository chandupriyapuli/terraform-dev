variable "variable-example"{
    type = string
    default = "ami-090252cbe067a9e58"
    description = "Vriale Example"
}

variable "Type_of_instance" {
  default = "t3.micro"
  type = string
}

variable "tags" {
    default = {
        project = "Expence"
        Environment = "Dev"
        module = "bd"
        name = "db"
    }
}

variable "sg-group" {
    default = "allow_ssh"
}

variable "sg_description" {
  default = "allow port 22"
}

variable "ssh_port" {
  default = 22
}
variable "protocol" {
  default = "tcp"
}
variable "allowed_cidr" {
    type = list
  default =["0.0.0.0/0"]
}