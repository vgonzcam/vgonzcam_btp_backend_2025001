resource "btp_globalaccount_role_collection_assignment" "globalaccountRoleCollectionAssignment" {
  role_collection_name = var.globalAccountRoleCollectionsAssignment.role_collection_name
  user_name            = var.globalAccountRoleCollectionsAssignment.user_name
  group_name           = var.globalAccountRoleCollectionsAssignment.group_name
  origin               = var.globalAccountRoleCollectionsAssignment.origin
  lifecycle {
    prevent_destroy = false
  }
}
