resource "btp_subaccount_subscription" "btp_subaccount_subscription" {
  subaccount_id = var.btpSubaccountSubscriptions.subaccount_id
  app_name      = var.btpSubaccountSubscriptions.app_name
  plan_name     = var.btpSubaccountSubscriptions.plan_name
  parameters    = try(var.btpSubaccountSubscriptions.parameters, null)
  timeouts      = try(var.btpSubaccountSubscriptions.timeouts, null)
  lifecycle {
    prevent_destroy = true
  }
}