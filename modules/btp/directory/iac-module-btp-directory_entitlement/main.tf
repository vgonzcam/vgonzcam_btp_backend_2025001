# entitle service plan in a directory
resource "btp_directory_entitlement" "directoryEntitlement" {
  directory_id           = var.directoryEntitlement.directory_id
  plan_name              = var.directoryEntitlement.plan_name
  service_name           = var.directoryEntitlement.service_name
  amount                 = var.directoryEntitlement.amount
  auto_assign            = var.directoryEntitlement.auto_assign
  auto_distribute_amount = var.directoryEntitlement.auto_distribute_amount
  distribute             = var.directoryEntitlement.distribute
  lifecycle {
    prevent_destroy = true
  }
}
