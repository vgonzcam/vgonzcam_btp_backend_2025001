module "iac-module-btp-bu-directories" {
  source        = "./modules/btp/directory/iac-module-btp-directory/"
  for_each      = local.directories
  directory     = each.value
  directory_key = each.key
  providers = {
    btp = btp
  }
}

module "iac-module-btp-subbu-directories" {
  source        = "./modules/btp/directory/iac-module-btp-directory/"
  for_each      = local.subdirectories
  directory     = each.value
  directory_key = each.key
  providers = {
    btp = btp
  }
}

module "iac-module-btp-app-directories" {
  source        = "./modules/btp/directory/iac-module-btp-directory/"
  for_each      = local.subdirectories-app
  directory     = each.value
  directory_key = each.key
  providers = {
    btp = btp
  }
}
