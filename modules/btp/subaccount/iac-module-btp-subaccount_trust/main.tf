resource "btp_subaccount_trust_configuration" "btp_subaccount_trust_configuration" {
  subaccount_id     = var.subaccountTrustConfiguration.subaccount_id     # Required: The ID of the subaccount
  identity_provider = var.subaccountTrustConfiguration.identity_provider # Required: The name of the Identity Authentication tenant
  # Optional fields
  auto_create_shadow_users = try(var.subaccountTrustConfiguration.auto_create_shadow_users, null) # Determines that users from the tenant can log in without having shadow users
  available_for_user_logon = try(var.subaccountTrustConfiguration.available_for_user_logon, null) # Allows end users to select this trust configuration for login
  description              = try(var.subaccountTrustConfiguration.description, null)              # Provides a description of the trust configuration
  domain                   = try(var.subaccountTrustConfiguration.domain, null)                   # Specifies the tenant domain used for user logon
  link_text                = try(var.subaccountTrustConfiguration.link_text, null)                # Short string to identify the login link
  name                     = try(var.subaccountTrustConfiguration.name, null)                     # The display name for the trust configuration
  status                   = try(var.subaccountTrustConfiguration.status, null)                   # Indicates whether the identity provider is 'active' or 'inactive'
  lifecycle {
    prevent_destroy = true
  }
}
