output "btp_subaccount_environment_instance_cloudfoundry" {
  value = { for key, value in btp_subaccount_environment_instance.cloudfoundry :
    key => value
  }
}
