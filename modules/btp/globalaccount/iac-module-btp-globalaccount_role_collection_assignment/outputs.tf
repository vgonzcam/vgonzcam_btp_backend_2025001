output "btp_globalaccount_role_collection_assignment-globalaccountRoleCollectionAssignment" {
  value = { for key, value in btp_globalaccount_role_collection_assignment.globalaccountRoleCollectionAssignment :
    key => value
  }
}