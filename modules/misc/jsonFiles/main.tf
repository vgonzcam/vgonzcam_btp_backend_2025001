variable "own_global_account_directories_and_subaccountsJson" {
  type = any
}
variable "filename" {
  type    = string
  default = "directoriesAndSubaccounts.json"
}

variable "generateFile" {
  type    = string
  default = null
}

locals {
  filename              = join("", [formatdate("YYYYMMDDhhmmssZZZ", timestamp()), var.filename])
  steps                 = join("", ["echo ", "'", var.own_global_account_directories_and_subaccountsJson, "' > ", local.filename])
  command               = var.generateFile == null ? "echo Reset Output" : tostring(local.steps)
  localFilenameCreation = var.generateFile
}

resource "terraform_data" "own_global_account_directories_and_subaccountsJson" {

  triggers_replace = [
    local.localFilenameCreation
  ]

  provisioner "local-exec" {
    command = local.command
    //interpreter = ["PowerShell", "-Command"]
  }
}

