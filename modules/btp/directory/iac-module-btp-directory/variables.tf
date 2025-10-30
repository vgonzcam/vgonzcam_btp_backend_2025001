variable "directory" {
  type = object({
    name        = string
    description = optional(string)
    features    = optional(set(string))
    labels      = optional(map(set(string)))
    parent_id   = optional(string)
    subdomain   = optional(string)
  })
}
variable "directory_key" {
  type = string
}



