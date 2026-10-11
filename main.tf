resource "okta_api_service_integration" "api_service_integrations" {
  for_each = var.api_service_integrations

  type = each.value.type

  dynamic "granted_scopes" {
    for_each = each.value.granted_scopes != null ? each.value.granted_scopes : []
    content {
      scope = granted_scopes.value.scope
    }
  }
}

