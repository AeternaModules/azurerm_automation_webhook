data "azurerm_key_vault_secret" "uri" {
  for_each     = { for k, v in var.automation_webhooks : k => v if v.uri_key_vault_id != null && v.uri_key_vault_secret_name != null }
  name         = each.value.uri_key_vault_secret_name
  key_vault_id = each.value.uri_key_vault_id
}
resource "azurerm_automation_webhook" "automation_webhooks" {
  for_each = var.automation_webhooks

  automation_account_name = each.value.automation_account_name
  expiry_time             = each.value.expiry_time
  name                    = each.value.name
  resource_group_name     = each.value.resource_group_name
  runbook_name            = each.value.runbook_name
  enabled                 = each.value.enabled
  parameters              = each.value.parameters
  run_on_worker_group     = each.value.run_on_worker_group
  uri                     = each.value.uri != null ? each.value.uri : try(data.azurerm_key_vault_secret.uri[each.key].value, null)
}

