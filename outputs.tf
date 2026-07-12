output "automation_webhooks_id" {
  description = "Map of id values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.id }
}
output "automation_webhooks_automation_account_name" {
  description = "Map of automation_account_name values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.automation_account_name }
}
output "automation_webhooks_enabled" {
  description = "Map of enabled values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.enabled }
}
output "automation_webhooks_expiry_time" {
  description = "Map of expiry_time values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.expiry_time }
}
output "automation_webhooks_name" {
  description = "Map of name values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.name }
}
output "automation_webhooks_parameters" {
  description = "Map of parameters values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.parameters }
}
output "automation_webhooks_resource_group_name" {
  description = "Map of resource_group_name values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.resource_group_name }
}
output "automation_webhooks_run_on_worker_group" {
  description = "Map of run_on_worker_group values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.run_on_worker_group }
}
output "automation_webhooks_runbook_name" {
  description = "Map of runbook_name values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.runbook_name }
}
output "automation_webhooks_uri" {
  description = "Map of uri values across all automation_webhooks, keyed the same as var.automation_webhooks"
  value       = { for k, v in azurerm_automation_webhook.automation_webhooks : k => v.uri }
  sensitive   = true
}

