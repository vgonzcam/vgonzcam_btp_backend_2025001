variable "roleCollectionAssignment" {
  type = object({
    directory_id         = string
    role_collection_name = string
    attribute_name       = optional(string)
    attribute_value      = optional(string)
    group_name           = optional(string)
    origin               = optional(string)
    user_name            = optional(string)
  })
}


