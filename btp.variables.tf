variable "globalaccount" {
  type        = string
  description = "The globalaccount subdomain where the sub account shall be created."
}
variable "region" {
  type        = string
  description = "The region where the subaccount shall be created in."
  default     = "us10"
}

variable "btp_username" {
  type        = string
  description = "SAP BTP user name"
  ## set default value to "" when using environment values for user and password
  # default     = ""
}

variable "btp_password" {
  type        = string
  description = "Password for SAP BTP user"
  sensitive   = true
  ## set default value to "" when using environment values for user and password
  # default     = ""
}

variable "subaccount_name" {
  type        = string
  description = "The subaccount name."
  default     = "hashicorp-tf"
}