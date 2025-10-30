variable "btpSubaccountEntitlements" {
  type = object({
    plan_name     = string
    service_name  = string
    subaccount_id = string
    amount        = optional(number)
  })

  validation {
    condition     = tobool(var.btpSubaccountEntitlements.plan_name != null && var.btpSubaccountEntitlements.service_name != null && var.btpSubaccountEntitlements.subaccount_id != null)
    error_message = "All subaccount entitlements must have a plan_name and a service_name"
  }
}

