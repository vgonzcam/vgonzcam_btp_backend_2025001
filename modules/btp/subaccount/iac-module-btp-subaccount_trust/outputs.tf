output "btp_subaccount_trust_configuration-btp_subaccount_trust_configuration" {
  value = { for key, value in btp_subaccount_trust_configuration.btp_subaccount_trust_configuration :
    key => value
  }
}
