resource "btp_directory_role_collection" "directories_role_collections" {
  directory_id = var.roleCollections.directory_id
  name         = var.roleCollections.name
  description  = var.roleCollections.description
  roles        = var.roleCollections.roles
  lifecycle {
    prevent_destroy = false
  }
}
