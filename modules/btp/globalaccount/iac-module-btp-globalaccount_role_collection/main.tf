resource "btp_globalaccount_role_collection" "globalaccountRoleCollections" {
  name        = var.globalAccountRoleCollections.name
  description = var.globalAccountRoleCollections.description
  roles       = var.globalAccountRoleCollections.roles
  lifecycle {
    prevent_destroy = false
  }
}
