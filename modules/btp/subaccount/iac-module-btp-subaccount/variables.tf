# ---------- Input variables
variable "subaccounts" {

  type = object({
    name         = string
    region       = string
    subdomain    = string
    beta_enabled = optional(bool)
    description  = optional(string)
    labels       = optional(map(set(string)))
    parent       = optional(string)
    usage        = optional(string)
    env          = optional(string)
    # Values for validations, not part of the resource...
    type_of_subaccount = optional(string)
  })

  validation {
    condition = (
      var.subaccounts.type_of_subaccount == "alm" || (
        var.subaccounts.name != null &&
        var.subaccounts.region != null &&
        var.subaccounts.subdomain == var.subaccounts.name &&
      var.subaccounts.type_of_subaccount == null)
    )
    error_message = "Invalid parameters for subaccounts"
  }

  validation {
    condition = (
      var.subaccounts.type_of_subaccount == "alm" || (
        var.subaccounts.type_of_subaccount == null &&
      (var.subaccounts.env == null || endswith(var.subaccounts.name, var.subaccounts.env)) || (var.subaccounts.env != null && endswith(var.subaccounts.name, var.subaccounts.region) && strcontains(var.subaccounts.name, var.subaccounts.env)))
    )
    error_message = "The name must end with the value of env if env is provided or with the region and contain the env."
  }

}

variable "subaccount_key" {
  type = string
}
