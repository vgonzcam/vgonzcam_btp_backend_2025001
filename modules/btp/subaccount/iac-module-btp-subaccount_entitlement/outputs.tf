output "btp_subaccount_entitlement-btp_subaccount_entitlement" {
  value = { for key, value in btp_subaccount_entitlement.btp_subaccount_entitlement :
    key => value
  }
}
