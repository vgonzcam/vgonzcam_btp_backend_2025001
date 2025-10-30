output "btp_subaccount_subscription-btp_subaccount_subscription" {
  value = { for key, value in btp_subaccount_subscription.btp_subaccount_subscription :
    key => value
  }
}
