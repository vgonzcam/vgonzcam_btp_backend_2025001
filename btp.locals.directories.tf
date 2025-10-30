locals {

  # The 'directories' local variable creates a map where each key is a directory name, 
  # and its value is an object containing the directory's attributes. 
  # This consolidates details for directories from a variable list 'mainDirectories' 
  # to facilitate structured access to directory information.
  directories = tomap({ for key, directory in local.jsondirectoriesAndSubdirectories.mainDirectories :
    key => {
      name        = directory.name
      description = directory.description
      features    = directory.features
      labels      = directory.labels
      parent_id   = null
  } })

  # 'mainDirectoriesAsParents' maps main directories as parents where the key is 
  # the directory name and the value contains ID, name, and parent ID details. 
  # It allows for identifying parent-child relationships among directories.
  mainDirectoriesAsParents = { for key, value in module.iac-module-btp-bu-directories : key => {
    id        = value.btp_directory-directories.id
    name      = value.btp_directory-directories.name
    parent_id = value.btp_directory-directories.parent_id
    }
  }

  # The 'subdirectories' local variable creates a map similar to 'directories' 
  # but is specific to 'subdirectories' defined in the variable input. 
  # It incorporates potential parent IDs based on the parent directories.
  subdirectories = tomap({ for key, directory in local.jsondirectoriesAndSubdirectories.subdirectories :
    key => {
      name        = directory.name
      description = directory.description
      features    = directory.features
      labels      = directory.labels
      parent_id   = try(local.mainDirectoriesAsParents[directory.parent_name].id, null)
  } })

  # 'subdirectoriesAsParents' similarly maps subdirectories as parents, 
  # providing direct access to ID, name, and parent ID details.
  subdirectoriesAsParents = { for key, value in module.iac-module-btp-subbu-directories : key => {
    id        = value.btp_directory-directories.id
    name      = value.btp_directory-directories.name
    parent_id = value.btp_directory-directories.parent_id
    }
  }

  # 'subdirectories-app' is a custom mapping for a different set of subdirectories 
  # that includes features and labels while also determining parent IDs from the defined local state.
  subdirectories-app = tomap({ for key, directory in local.jsondirectoriesAndSubdirectories.subdirectories-app :
    key => {
      name        = directory.name
      description = directory.description
      features    = directory.features
      labels      = directory.labels
      parent_id   = try(local.subdirectoriesAsParents[directory.parent_name].id, null)
  } })

  # 'subdirectories-appAsParents' similarly maps subdirectories as parents, 
  # providing direct access to ID, name, and parent ID details.
  subdirectories-appAsParents = { for key, value in module.iac-module-btp-app-directories : key => {
    id        = value.btp_directory-directories.id
    name      = value.btp_directory-directories.name
    parent_id = value.btp_directory-directories.parent_id
    }
  }

}
