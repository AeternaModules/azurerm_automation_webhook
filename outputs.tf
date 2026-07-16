output "automation_webhooks_id" {
  description = "Map of id values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.id if v.id != null && length(v.id) > 0 }
}
output "automation_webhooks_automation_account_name" {
  description = "Map of automation_account_name values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.automation_account_name if v.automation_account_name != null && length(v.automation_account_name) > 0 }
}
output "automation_webhooks_enabled" {
  description = "Map of enabled values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.enabled if v.enabled != null }
}
output "automation_webhooks_expiry_time" {
  description = "Map of expiry_time values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.expiry_time if v.expiry_time != null && length(v.expiry_time) > 0 }
}
output "automation_webhooks_name" {
  description = "Map of name values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.name if v.name != null && length(v.name) > 0 }
}
output "automation_webhooks_parameters" {
  description = "Map of parameters values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.parameters if v.parameters != null && length(v.parameters) > 0 }
}
output "automation_webhooks_resource_group_name" {
  description = "Map of resource_group_name values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "automation_webhooks_run_on_worker_group" {
  description = "Map of run_on_worker_group values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.run_on_worker_group if v.run_on_worker_group != null && length(v.run_on_worker_group) > 0 }
}
output "automation_webhooks_runbook_name" {
  description = "Map of runbook_name values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.runbook_name if v.runbook_name != null && length(v.runbook_name) > 0 }
}
output "automation_webhooks_uri" {
  description = "Map of uri values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.uri if v.uri != null && length(v.uri) > 0 }
  sensitive   = true
}

