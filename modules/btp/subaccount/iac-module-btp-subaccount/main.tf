resource "btp_subaccount" "btp_subaccounts" {
  name         = var.subaccounts.name
  region       = var.subaccounts.region
  subdomain    = var.subaccounts.subdomain
  beta_enabled = var.subaccounts.beta_enabled
  description  = var.subaccounts.description
  labels       = var.subaccounts.labels
  parent_id    = var.subaccounts.parent
  usage        = var.subaccounts.usage

  lifecycle {
    precondition {
      condition     = local.btpRegionValidation == true
      error_message = "Check regions for your subaccounts"
    }
    prevent_destroy = false
  }
}
