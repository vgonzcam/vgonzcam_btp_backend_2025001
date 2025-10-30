output "btp_subaccount_role_collection-btp_subaccount_role_collection" {
  value = { for key, value in btp_subaccount_role_collection.btp_subaccount_role_collection :
    key => value
  }
}
