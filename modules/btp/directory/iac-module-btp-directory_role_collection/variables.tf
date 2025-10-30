variable "roleCollections" {
  type = object({
    directory_id = string
    name         = string
    description  = string
    roles = list(object(
      {
        name                 = string
        role_template_app_id = string
        role_template_name   = string
    }))
  })
}