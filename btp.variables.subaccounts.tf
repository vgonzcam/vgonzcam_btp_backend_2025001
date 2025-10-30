# variable "subaccounts" {
#   type = map(object({
#     name               = string
#     region             = string
#     subdomain          = string
#     beta_enabled       = optional(bool)
#     description        = optional(string)
#     labels             = optional(map(set(string)))
#     parent_name        = optional(string)
#     usage              = optional(string)
#     env                = optional(string)
#     type_of_subaccount = optional(string)
#   }))
#   description = "Mapa de subaccounts a crear"
#   default = {}
# }