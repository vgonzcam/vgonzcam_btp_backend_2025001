# Assign a single user  or group to a role collection on directory level
resource "btp_directory_role_collection_assignment" "directoriesRoleCollections" {
  directory_id         = var.roleCollectionAssignment.directory_id
  role_collection_name = var.roleCollectionAssignment.role_collection_name
  user_name            = var.roleCollectionAssignment.user_name
  group_name           = var.roleCollectionAssignment.group_name
  origin               = var.roleCollectionAssignment.origin
  lifecycle {
    prevent_destroy = false
  }
}
