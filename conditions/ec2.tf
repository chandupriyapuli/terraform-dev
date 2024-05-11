resource "aws_instance" "db" {
  ami = var.variable-example
  # here we want to control the Instance.
  instance_type = var.Type_of_instance
  #instance_type = var.Type_of_instance=="db"?"t3.small":"t3.micro" this os not work for me.
  tags = var.tags
  # left side are arguments and right side are values.
}
