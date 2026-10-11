output "api_service_integrations_id" {
  description = "Map of id values across all api_service_integrations, keyed the same as var.api_service_integrations except keys with no id are omitted"
  value       = { for k, v in okta_api_service_integration.api_service_integrations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "api_service_integrations_granted_scopes" {
  description = "Map of granted_scopes values across all api_service_integrations, keyed the same as var.api_service_integrations except keys with no granted_scopes are omitted"
  value       = { for k, v in okta_api_service_integration.api_service_integrations : k => v.granted_scopes if v.granted_scopes != null && length(v.granted_scopes) > 0 }
}
output "api_service_integrations_name" {
  description = "Map of name values across all api_service_integrations, keyed the same as var.api_service_integrations except keys with no name are omitted"
  value       = { for k, v in okta_api_service_integration.api_service_integrations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "api_service_integrations_type" {
  description = "Map of type values across all api_service_integrations, keyed the same as var.api_service_integrations except keys with no type are omitted"
  value       = { for k, v in okta_api_service_integration.api_service_integrations : k => v.type if v.type != null && length(v.type) > 0 }
}

