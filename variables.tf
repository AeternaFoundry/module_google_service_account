variable "service_accounts" {
  description = <<EOT
Map of service_accounts, attributes below
Required:
    - account_id
Optional:
    - create_ignore_already_exists
    - deletion_policy
    - description
    - disabled
    - display_name
    - project
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    account_id                   = string
    create_ignore_already_exists = optional(bool)
    deletion_policy              = optional(string)
    description                  = optional(string)
    disabled                     = optional(bool)
    display_name                 = optional(string)
    project                      = optional(string)
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_accounts : (
        v.description == null || (length(v.description) >= 0 && length(v.description) <= 256)
      )
    ])
    error_message = "must be between 0 and 256 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

