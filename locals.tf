locals {
  read_capacity  = ("PROVISION" == var.billing_mode) ? 1 : 0
  write_capacity = ("PROVISION" == var.billing_mode) ? 1 : 0
}