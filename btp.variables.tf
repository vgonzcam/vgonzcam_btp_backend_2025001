variable "globalaccount" {
  type        = string
  description = "The subdomain of the global account in which you want to manage resources. To be found in the cockpit, in the global account view"
  validation {
    condition     = var.globalaccount != null && var.globalaccount != "needsToBePassedAsAnInputVariable"
    error_message = "Provide a valid value foralue for the Global Account [Input Variable]"
  }
}

