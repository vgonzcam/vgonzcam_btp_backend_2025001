variable "subaccountsRoles" {
  type = object({
    subaccount_id      = string
    name               = string
    role_template_name = string
    app_id             = string
    description        = optional(string)
    attribute_list = optional(list(object({
      attribute_name         = string
      attribute_value_origin = string
      attribute_values       = list(string)   // Changed to list of strings to accommodate multiple values
      value_required         = optional(bool) // Added to reflect the optional requirement
    })))
  })
}
