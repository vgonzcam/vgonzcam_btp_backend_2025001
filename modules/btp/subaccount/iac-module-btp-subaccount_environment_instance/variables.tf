variable "deploymentEnvironmentList" {
  type    = list(string)
  default = ["dev", "qua", "pro"]
}
variable "deploymentEnvironment" {
  type        = string
  description = "Deployment Environment"
  validation {
    condition     = contains(var.deploymentEnvironmentList, var.deploymentEnvironment)
    error_message = "Provide a valid value foralue for the Deployment Environment [Input Variable]"
  }
}
variable "environmentType" {
  type    = list(string)
  default = ["cloudfoundry", "kyma"]
}
variable "subaccountEnvironmentInstance" {

  type = object({
    subaccount_id    = string
    environment_type = string
    name             = string
    plan_name        = string
    service_name     = string
    parameters       = string
    landscape_label  = optional(string)
    timeouts = optional(object({
      create = string
      update = string
      delete = string
    }))
  })

  validation {
    condition     = tobool(contains(var.environmentType, var.subaccountEnvironmentInstance.environment_type) == true)
    error_message = "Review subaccountEnvironmentInstanceCF conditions"
  }
}
