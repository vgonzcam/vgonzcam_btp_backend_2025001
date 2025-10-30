variable "subaccountTrustConfiguration" {
  type = object({
    identity_provider        = string
    subaccount_id            = string
    auto_create_shadow_users = optional(bool)
    available_for_user_logon = optional(bool)
    description              = optional(string)
    domain                   = optional(string)
    link_text                = optional(string)
    name                     = optional(string)
    status                   = optional(string)
  })
  validation {
    condition     = var.subaccountTrustConfiguration.identity_provider != null && var.subaccountTrustConfiguration.subaccount_id != null
    error_message = "Identity provider and subaccount ID are required fields."
  }

  validation {
    condition     = can(regex("^(active|inactive)$", var.subaccountTrustConfiguration.status))
    error_message = "The status must be either 'active' or 'inactive'."
  }

  validation {
    condition     = var.subaccountTrustConfiguration.domain == null || can(regex("^[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$", var.subaccountTrustConfiguration.domain))
    error_message = "The domain must be either a valid domain format (e.g., example.com) or be omitted."
  }

  validation {
    condition     = var.subaccountTrustConfiguration.auto_create_shadow_users != null
    error_message = "auto_create_shadow_users should be specified as true or false."
  }

  validation {
    condition     = var.subaccountTrustConfiguration.available_for_user_logon != null
    error_message = "available_for_user_logon should be specified as true or false."
  }
}
