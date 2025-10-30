output "btp_globalaccount_role_collection-globalaccountRoleCollections" {
  value = { for key, value in btp_globalaccount_role_collection.globalaccountRoleCollections :
    key => value
  }
}
