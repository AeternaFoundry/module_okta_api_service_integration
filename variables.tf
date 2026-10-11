variable "api_service_integrations" {
  description = <<EOT
Map of api_service_integrations, attributes below
Required:
    - type
Optional:
    - granted_scopes (block):
        - scope (required)
EOT

  type = map(object({
    type = string
    granted_scopes = optional(list(object({
      scope = string
    })))
  }))
}

