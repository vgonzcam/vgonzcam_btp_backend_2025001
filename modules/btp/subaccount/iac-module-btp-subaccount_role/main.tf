resource "btp_subaccount_role" "btp_subaccount_role" {
  subaccount_id      = var.subaccountsRoles.subaccount_id
  name               = var.subaccountsRoles.name
  role_template_name = var.subaccountsRoles.role_template_name
  app_id             = var.subaccountsRoles.app_id
  description        = var.subaccountsRoles.description
  attribute_list     = var.subaccountsRoles.attribute_list
  lifecycle {
    prevent_destroy = false
  }
}
