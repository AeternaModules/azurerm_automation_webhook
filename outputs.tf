output "automation_webhooks" {
  description = "All automation_webhook resources"
  value       = azurerm_automation_webhook.automation_webhooks
  sensitive   = true
}
output "automation_webhooks_automation_account_name" {
  description = "List of automation_account_name values across all automation_webhooks"
  value       = [for k, v in azurerm_automation_webhook.automation_webhooks : v.automation_account_name]
}
output "automation_webhooks_enabled" {
  description = "List of enabled values across all automation_webhooks"
  value       = [for k, v in azurerm_automation_webhook.automation_webhooks : v.enabled]
}
output "automation_webhooks_expiry_time" {
  description = "List of expiry_time values across all automation_webhooks"
  value       = [for k, v in azurerm_automation_webhook.automation_webhooks : v.expiry_time]
}
output "automation_webhooks_name" {
  description = "List of name values across all automation_webhooks"
  value       = [for k, v in azurerm_automation_webhook.automation_webhooks : v.name]
}
output "automation_webhooks_parameters" {
  description = "List of parameters values across all automation_webhooks"
  value       = [for k, v in azurerm_automation_webhook.automation_webhooks : v.parameters]
}
output "automation_webhooks_resource_group_name" {
  description = "List of resource_group_name values across all automation_webhooks"
  value       = [for k, v in azurerm_automation_webhook.automation_webhooks : v.resource_group_name]
}
output "automation_webhooks_run_on_worker_group" {
  description = "List of run_on_worker_group values across all automation_webhooks"
  value       = [for k, v in azurerm_automation_webhook.automation_webhooks : v.run_on_worker_group]
}
output "automation_webhooks_runbook_name" {
  description = "List of runbook_name values across all automation_webhooks"
  value       = [for k, v in azurerm_automation_webhook.automation_webhooks : v.runbook_name]
}
output "automation_webhooks_uri" {
  description = "List of uri values across all automation_webhooks"
  value       = [for k, v in azurerm_automation_webhook.automation_webhooks : v.uri]
  sensitive   = true
}

