resource "btp_subaccount_role_collection" "btp_subaccount_role_collection" {
  subaccount_id = var.subaccountsRoleCollections.subaccount_id
  name          = var.subaccountsRoleCollections.name
  description   = var.subaccountsRoleCollections.description
  roles         = var.subaccountsRoleCollections.roles
  lifecycle {
    prevent_destroy = false
  }

}
