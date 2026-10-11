resource "google_service_account" "service_accounts" {
  for_each = var.service_accounts

  account_id                   = each.value.account_id
  create_ignore_already_exists = each.value.create_ignore_already_exists
  deletion_policy              = each.value.deletion_policy
  description                  = each.value.description
  disabled                     = each.value.disabled
  display_name                 = each.value.display_name
  project                      = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

