output "btp_subaccount_service_binding-btp_subaccount_service_binding" {
  value = { for key, value in btp_subaccount_service_binding.btp_subaccount_service_binding :
    key => value
  }
}