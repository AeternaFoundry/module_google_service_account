output "service_accounts_id" {
  description = "Map of id values across all service_accounts, keyed the same as var.service_accounts except keys with no id are omitted"
  value       = { for k, v in google_service_account.service_accounts : k => v.id if v.id != null && length(v.id) > 0 }
}
output "service_accounts_account_id" {
  description = "Map of account_id values across all service_accounts, keyed the same as var.service_accounts except keys with no account_id are omitted"
  value       = { for k, v in google_service_account.service_accounts : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "service_accounts_create_ignore_already_exists" {
  description = "Map of create_ignore_already_exists values across all service_accounts, keyed the same as var.service_accounts except keys with no create_ignore_already_exists are omitted"
  value       = { for k, v in google_service_account.service_accounts : k => v.create_ignore_already_exists if v.create_ignore_already_exists != null }
}
output "service_accounts_deletion_policy" {
  description = "Map of deletion_policy values across all service_accounts, keyed the same as var.service_accounts except keys with no deletion_policy are omitted"
  value       = { for k, v in google_service_account.service_accounts : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "service_accounts_description" {
  description = "Map of description values across all service_accounts, keyed the same as var.service_accounts except keys with no description are omitted"
  value       = { for k, v in google_service_account.service_accounts : k => v.description if v.description != null && length(v.description) > 0 }
}
output "service_accounts_disabled" {
  description = "Map of disabled values across all service_accounts, keyed the same as var.service_accounts except keys with no disabled are omitted"
  value       = { for k, v in google_service_account.service_accounts : k => v.disabled if v.disabled != null }
}
output "service_accounts_display_name" {
  description = "Map of display_name values across all service_accounts, keyed the same as var.service_accounts except keys with no display_name are omitted"
  value       = { for k, v in google_service_account.service_accounts : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "service_accounts_email" {
  description = "Map of email values across all service_accounts, keyed the same as var.service_accounts except keys with no email are omitted"
  value       = { for k, v in google_service_account.service_accounts : k => v.email if v.email != null && length(v.email) > 0 }
}
output "service_accounts_member" {
  description = "Map of member values across all service_accounts, keyed the same as var.service_accounts except keys with no member are omitted"
  value       = { for k, v in google_service_account.service_accounts : k => v.member if v.member != null && length(v.member) > 0 }
}
output "service_accounts_name" {
  description = "Map of name values across all service_accounts, keyed the same as var.service_accounts except keys with no name are omitted"
  value       = { for k, v in google_service_account.service_accounts : k => v.name if v.name != null && length(v.name) > 0 }
}
output "service_accounts_project" {
  description = "Map of project values across all service_accounts, keyed the same as var.service_accounts except keys with no project are omitted"
  value       = { for k, v in google_service_account.service_accounts : k => v.project if v.project != null && length(v.project) > 0 }
}
output "service_accounts_unique_id" {
  description = "Map of unique_id values across all service_accounts, keyed the same as var.service_accounts except keys with no unique_id are omitted"
  value       = { for k, v in google_service_account.service_accounts : k => v.unique_id if v.unique_id != null && length(v.unique_id) > 0 }
}

