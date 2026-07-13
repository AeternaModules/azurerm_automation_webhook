variable "automation_webhooks" {
  description = <<EOT
Map of automation_webhooks, attributes below
Required:
    - automation_account_name
    - expiry_time
    - name
    - resource_group_name
    - runbook_name
Optional:
    - enabled
    - parameters
    - run_on_worker_group
    - uri
    - uri_key_vault_id (alternative to uri - read from Key Vault instead)
    - uri_key_vault_secret_name (alternative to uri - read from Key Vault instead)
EOT

  type = map(object({
    automation_account_name   = string
    expiry_time               = string
    name                      = string
    resource_group_name       = string
    runbook_name              = string
    enabled                   = optional(bool)
    parameters                = optional(map(string))
    run_on_worker_group       = optional(string)
    uri                       = optional(string)
    uri_key_vault_id          = optional(string)
    uri_key_vault_secret_name = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.automation_webhooks : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_webhooks : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_webhooks : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.automation_webhooks : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

