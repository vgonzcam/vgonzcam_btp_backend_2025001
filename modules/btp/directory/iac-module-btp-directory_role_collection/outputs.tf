output "btp_directory_role_collection-directories_role_collections" {
  value = { for key, value in btp_directory_role_collection.directories_role_collections :
    key => value
  }
}
