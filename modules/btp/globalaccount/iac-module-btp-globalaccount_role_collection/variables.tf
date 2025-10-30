variable "globalAccountRoleCollections" {
  type = object({
    name        = string
    description = optional(string)
    roles = list(object(
      {
        name                 = string
        role_template_app_id = string
        role_template_name   = string
    }))
  })
}

