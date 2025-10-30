resource "btp_subaccount_entitlement" "btp_subaccount_entitlement" {
  subaccount_id = var.btpSubaccountEntitlements.subaccount_id
  service_name  = var.btpSubaccountEntitlements.service_name
  plan_name     = var.btpSubaccountEntitlements.plan_name
  amount        = var.btpSubaccountEntitlements.amount
  lifecycle {
    prevent_destroy = true
  }
}
