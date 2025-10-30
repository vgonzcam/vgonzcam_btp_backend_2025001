locals {
  jsonsubaccounts                  = jsondecode(file("${path.module}/terraform.subaccounts.json"))
  jsondirectoriesAndSubdirectories = jsondecode(file("${path.module}/terraform.directoriesAndSubdirectories.json"))
}
