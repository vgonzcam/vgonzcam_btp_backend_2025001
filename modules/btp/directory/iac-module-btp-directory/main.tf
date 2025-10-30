resource "btp_directory" "directories" {
  name        = var.directory.name
  description = var.directory.description
  features    = var.directory.features
  labels      = var.directory.labels
  parent_id   = var.directory.parent_id
  subdomain   = var.directory.subdomain
  lifecycle {
    prevent_destroy = true
  }
}
