output "btp_directory-directories" {
  value = { for key, value in btp_directory.directories :
    key => value
  }
}

output "btp_directory-directories-json" {
  value = {
    jsonKey      = var.directory_key
    directory_id = btp_directory.directories.id
    name         = btp_directory.directories.name
    parent_id    = btp_directory.directories.parent_id
  }
}
