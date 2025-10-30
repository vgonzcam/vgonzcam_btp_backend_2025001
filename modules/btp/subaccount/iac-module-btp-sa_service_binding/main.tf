# Create service bindings - now supporting multiple bindings per instance
resource "btp_subaccount_service_binding" "btp_subaccount_service_binding" {

  subaccount_id       = var.service_bindings.subaccount_id
  service_instance_id = var.service_bindings.service_instance_id
  name                = var.service_bindings.name
  parameters          = var.service_bindings.parameters
  labels              = var.service_bindings.labels

  lifecycle {
    prevent_destroy = false
  }

}