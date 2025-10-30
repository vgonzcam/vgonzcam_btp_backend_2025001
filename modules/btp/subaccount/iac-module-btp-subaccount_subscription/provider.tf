terraform {
  required_providers {
    btp = {
      source                = "SAP/btp"
      version               = "1.16.1"
      configuration_aliases = [btp]
    }
  }
}