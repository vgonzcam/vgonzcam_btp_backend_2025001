# variable "mainDirectories" {
#   type = map(object(
#     {
#       name        = string
#       description = optional(string)
#       features    = optional(set(string))
#       labels      = optional(map(set(string)))
#       parent_name = optional(string)
#       subdomain   = optional(string)
#     }
#   ))
#   validation {
#     condition     = alltrue([for o in var.mainDirectories : o.name != null])
#     error_message = "All MainDirectories must have a name"
#   }
#   default = {}
# }

# variable "subdirectories" {
#   type = map(object(
#     {
#       name        = string
#       description = optional(string)
#       features    = optional(set(string))
#       labels      = optional(map(set(string)))
#       parent_name = optional(string)
#       subdomain   = optional(string)
#     }
#   ))
#   validation {
#     condition     = alltrue([for o in var.subdirectories : o.name != null])
#     error_message = "All Subdirectories must have a name"
#   }
#   default = {}
# }

# variable "subdirectories-app" {
#   type = map(object(
#     {
#       name        = string
#       description = optional(string)
#       features    = optional(set(string))
#       labels      = optional(map(set(string)))
#       parent_name = optional(string)
#       subdomain   = optional(string)
#     }
#   ))
#   validation {
#     condition     = alltrue([for o in var.subdirectories-app : o.name != null])
#     error_message = "All Subdirectories APP must have a name"
#   }
#   default = {}
# }
