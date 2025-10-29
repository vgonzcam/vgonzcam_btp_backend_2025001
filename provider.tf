# # Please review the last versions of the providers, this can be done here:
# #
# # BTP: https://registry.terraform.io/providers/SAP/btp/latest
# # CF:  https://registry.terraform.io/providers/cloudfoundry/cloudfoundry/latest


terraform {
  required_providers {
    btp = {
      source  = "SAP/btp"
      version = "1.16.1"
    }
  }
}
# Configure the BTP Provider
provider "btp" {
  globalaccount = var.globalaccount
  username      = var.btp_username
  password      = var.btp_password
}
