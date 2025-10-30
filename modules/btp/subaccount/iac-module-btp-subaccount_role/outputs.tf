output "btp_subaccount_role-btp_subaccount_role" {
  value = { for key, value in btp_subaccount_role.btp_subaccount_role :
    key => value
  }
}



