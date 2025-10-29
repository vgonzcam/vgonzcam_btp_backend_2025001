resource "btp_subaccount" "create_subaccount" {
  name      = var.subaccount_name
  subdomain = var.subaccount_name
  region    = lower(var.region)
}


# Cargar el archivo JSON
locals {
  config_data = jsondecode(file("${path.module}/subaccounts.json"))
  subaccounts = local.config_data.subaccounts
}

# Crear las subaccounts usando for_each
resource "btp_subaccount" "create_subaccount_json" {
  for_each = local.subaccounts

  name      = each.value.name
  subdomain = each.value.subdomain
  region    = lower(each.value.region)

  # Campos opcionales
  beta_enabled = try(each.value.beta_enabled, false)
  description  = try(each.value.description, null)
  usage        = try(each.value.usage, null)
  labels       = try(each.value.labels, null)
}


output "subaccounts_created" {
  description = "IDs de las subaccounts creadas"
  value = {
    for key, subaccount in btp_subaccount.create_subaccount :
    key => {
      id        = subaccount.id
      name      = subaccount.name
      subdomain = subaccount.subdomain
      region    = subaccount.region
    }
  }
}

output "subaccounts_list" {
  description = "Lista de nombres de subaccounts"
  value       = [for sa in btp_subaccount.create_subaccount : sa.name]
}
