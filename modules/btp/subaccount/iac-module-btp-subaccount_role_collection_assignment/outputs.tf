output "btp_subaccount_role_collection_assignment-btp_subaccount_role_collection_assignment" {
  value = { for key, value in btp_subaccount_role_collection_assignment.btp_subaccount_role_collection_assignment :
    key => value
  }
}
