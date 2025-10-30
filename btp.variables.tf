variable "globalaccount" {
  type        = string
  description = "The globalaccount subdomain where the sub account shall be created."
}
variable "region" {
  type        = string
  description = "The region where the subaccount shall be created in."
  default     = "us10"
}

variable "regionTest" {
  type        = string
  description = "The region where the subaccount shall be created in. Al no tener valor por default da error sino esta en plataforma definida..."
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

variable "subaccounts" {
  type = map(object({
    name               = string
    region             = string
    subdomain          = string
    beta_enabled       = optional(bool)
    description        = optional(string)
    labels             = optional(map(set(string)))
    parent_name        = optional(string)
    usage              = optional(string)
    env                = optional(string)
    type_of_subaccount = optional(string)
  }))
  description = "Mapa de subaccounts a crear"
  default = {}
}