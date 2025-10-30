# creates a cloud foundry environment in a given account
resource "btp_subaccount_environment_instance" "cloudfoundry" {
  subaccount_id    = var.subaccountEnvironmentInstance.subaccount_id
  name             = var.subaccountEnvironmentInstance.name
  environment_type = var.subaccountEnvironmentInstance.environment_type
  service_name     = var.subaccountEnvironmentInstance.service_name
  plan_name        = var.subaccountEnvironmentInstance.plan_name
  landscape_label  = var.subaccountEnvironmentInstance.landscape_label
  # ATTENTION: some regions offer multiple environments of a kind and you must explicitly select the target environment in which
  # the instance shall be created using the parameter landscape label. 
  # available environments can be looked up using the btp_subaccount_environments datasource
  parameters = var.subaccountEnvironmentInstance.parameters
  timeouts   = var.subaccountEnvironmentInstance.timeouts

  lifecycle {
    prevent_destroy = true
  }
}
