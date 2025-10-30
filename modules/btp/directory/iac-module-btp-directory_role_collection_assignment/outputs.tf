output "btp_directory_role_collection_assignment-directoriesRoleCollections" {
  value = { for key, value in btp_directory_role_collection_assignment.directoriesRoleCollections :
    key => value
  }
}


