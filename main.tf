resource "btp_subaccount" "create_subaccount" {
  name      = var.subaccount_name
  subdomain = var.subaccount_name
  region    = lower(var.region)
}
