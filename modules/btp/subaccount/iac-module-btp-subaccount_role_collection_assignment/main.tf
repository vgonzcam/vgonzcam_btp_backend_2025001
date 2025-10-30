resource "btp_subaccount_role_collection_assignment" "btp_subaccount_role_collection_assignment" {
  subaccount_id        = var.subaccountRoleCollectionAssignment.subaccount_id
  role_collection_name = var.subaccountRoleCollectionAssignment.role_collection_name
  user_name            = var.subaccountRoleCollectionAssignment.user_name
  group_name           = var.subaccountRoleCollectionAssignment.group_name
  origin               = var.subaccountRoleCollectionAssignment.origin
  lifecycle {
    prevent_destroy = false
  }
}
