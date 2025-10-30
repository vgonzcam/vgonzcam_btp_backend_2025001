output "regions" {
  value = local.btpRegionValidation
}
output "btp_subaccount-btp_subaccounts" {
  value = { for key, value in btp_subaccount.btp_subaccounts :
    key => value
  }
}

output "btp_subaccount-btp_subaccounts-json" {
  value = {
    jsonKey       = var.subaccount_key
    subaccount_id = btp_subaccount.btp_subaccounts.id
    name          = btp_subaccount.btp_subaccounts.name
    parent_id     = btp_subaccount.btp_subaccounts.parent_id
  }
}





