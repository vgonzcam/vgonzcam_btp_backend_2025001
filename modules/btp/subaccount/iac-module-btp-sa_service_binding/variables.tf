variable "service_bindings" {
  description = "Service binding configurations for BTP service instances"
  type = object({
    subaccount_id       = string
    service_instance_id = string
    # Optional - all attributes are optional for bindings
    name       = optional(string)
    parameters = optional(string) # JSON-encoded string
    labels     = optional(map(set(string)))
    timeouts = optional(object({
      create = optional(string)
      update = optional(string)
      delete = optional(string)
    }))
  })
}
