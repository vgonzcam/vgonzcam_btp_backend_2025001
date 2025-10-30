variable "btpSubaccountSubscriptions" {
  description = "Map of application configurations"
  type = object({
    app_name      = string
    plan_name     = string
    subaccount_id = string
    parameters    = optional(string) # Represents anything or can be null
    timeouts = optional(object(
      { create = optional(string)
        delete = optional(string)
      })
    )
  })
}

