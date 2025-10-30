output "btp_directory_entitlement-directoryEntitlement" {
  value = { for key, value in btp_directory_entitlement.directoryEntitlement :
    key => value
  }
}