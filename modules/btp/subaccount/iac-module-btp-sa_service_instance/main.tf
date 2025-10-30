# resource "btp_subaccount_service_instance" "btp_subaccount_service_instance" {
#   subaccount_id  = var.subaccountServiceInstance.subaccount_id
#   name           = var.subaccountServiceInstance.instance_name
#   serviceplan_id = var.subaccountServiceInstance.serviceplan_id
#   parameters     = var.subaccountServiceInstance.parameters
#   labels         = var.subaccountServiceInstance.labels

#   lifecycle {
#     prevent_destroy = false
#   }

# }
# Resource WITH parameters - only created when consider_parameters is true
resource "btp_subaccount_service_instance" "btp_subaccount_service_instance" {
  for_each = var.subaccountServiceInstance.consider_parameters ? { "considerParameters" = true } : {}

  subaccount_id  = var.subaccountServiceInstance.subaccount_id
  name           = var.subaccountServiceInstance.instance_name
  serviceplan_id = var.subaccountServiceInstance.serviceplan_id
  parameters     = var.subaccountServiceInstance.parameters
  labels         = var.subaccountServiceInstance.labels

  lifecycle {
    prevent_destroy = false
  }
}

# Resource WITHOUT parameters - only created when consider_parameters is false
resource "btp_subaccount_service_instance" "btp_subaccount_service_instance_without_parameters" {
  for_each = !var.subaccountServiceInstance.consider_parameters ? { "NoConsiderParameters" = true } : {}

  subaccount_id  = var.subaccountServiceInstance.subaccount_id
  name           = var.subaccountServiceInstance.instance_name
  serviceplan_id = var.subaccountServiceInstance.serviceplan_id
  labels         = var.subaccountServiceInstance.labels

  lifecycle {
    prevent_destroy = false
  }
}
