variable "name" {
  type = string
}

module "bootstrap" {
  source  = "../"
  name = var.name
}