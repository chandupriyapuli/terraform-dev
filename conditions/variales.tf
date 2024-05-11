variable "variable-example"{
    type = string
    default = "ami-090252cbe067a9e58"
    description = "Vriale Example"
}

variable "Type_of_instance" {
  default = "dab"
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
