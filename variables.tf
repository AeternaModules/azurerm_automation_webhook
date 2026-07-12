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
    enabled                   = optional(bool) # Default: true
    parameters                = optional(map(string))
    run_on_worker_group       = optional(string)
    uri                       = optional(string)
    uri_key_vault_id          = optional(string)
    uri_key_vault_secret_name = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.automation_webhooks : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_automation_webhook's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: automation_account_name
  #   source:    validate.AutomationAccount: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: expiry_time
  #   source:    validation.IsRFC3339Time(...) - no translation rule yet, add one
  # path: runbook_name
  #   source:    validate.RunbookName: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: uri
  #   source:    validation.IsURLWithHTTPorHTTPS(...) - no translation rule yet, add one
}

