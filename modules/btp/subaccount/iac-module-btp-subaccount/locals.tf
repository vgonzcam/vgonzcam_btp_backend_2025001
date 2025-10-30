locals {
  btpRegionValidation = tobool(contains(flatten([for region in data.btp_regions.btp_regions.values[*].region : region]), var.subaccounts.region))
}
