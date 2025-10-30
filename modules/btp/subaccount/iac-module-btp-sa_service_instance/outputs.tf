# output "btp_subaccount_service_instance-btp_subaccount_service_instance" {
#   value = { for key, value in btp_subaccount_service_instance.btp_subaccount_service_instance :
#     key => value
#   }
# }


# Output returns whichever resource was created
output "btp_subaccount_service_instance-btp_subaccount_service_instance" {
  value = var.subaccountServiceInstance.consider_parameters ? btp_subaccount_service_instance.btp_subaccount_service_instance["considerParameters"] : btp_subaccount_service_instance.btp_subaccount_service_instance_without_parameters["NoConsiderParameters"]
}
