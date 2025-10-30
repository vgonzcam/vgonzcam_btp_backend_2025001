variable "subaccountServiceInstance" {
  description = "Service instance configurations for BTP subaccounts"
  type = object({
    # Required
    subaccount_id       = string
    offering_name       = string
    plan_name           = string
    serviceplan_id      = string
    consider_parameters = bool # Not for the resource, for validations 
    # Optional
    instance_name = optional(string)
    parameters    = optional(string) # JSON-encoded string
    labels        = optional(map(set(string)))
    timeouts = optional(object({
      create = optional(string)
      update = optional(string)
      delete = optional(string)
    }))
  })
}
