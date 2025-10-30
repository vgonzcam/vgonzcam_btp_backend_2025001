variable "directoryEntitlement" {
  type = object({
    directory_id           = string
    plan_name              = string
    service_name           = string
    amount                 = optional(number)
    auto_assign            = optional(bool)
    auto_distribute_amount = optional(number)
    distribute             = optional(bool)
  })
}

