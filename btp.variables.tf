variable "globalaccount" {
  description = "The SAP BTP global account ID."
  type        = string
}

variable "btp_username" {
  description = "The SAP BTP username for authentication."
  type        = string

}

variable "btp_password" {
  description = "The SAP BTP password for authentication."
  type        = string
  sensitive   = true
}
