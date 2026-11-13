output "api_service_integrations_id" {
  description = "Map of id values across all api_service_integrations, keyed the same as var.api_service_integrations"
  value       = { for k, v in okta_api_service_integration.api_service_integrations : k => v.id }
}
output "api_service_integrations_granted_scopes" {
  description = "Map of granted_scopes values across all api_service_integrations, keyed the same as var.api_service_integrations"
  value       = { for k, v in okta_api_service_integration.api_service_integrations : k => v.granted_scopes }
}
output "api_service_integrations_name" {
  description = "Map of name values across all api_service_integrations, keyed the same as var.api_service_integrations"
  value       = { for k, v in okta_api_service_integration.api_service_integrations : k => v.name }
}
output "api_service_integrations_type" {
  description = "Map of type values across all api_service_integrations, keyed the same as var.api_service_integrations"
  value       = { for k, v in okta_api_service_integration.api_service_integrations : k => v.type }
}

