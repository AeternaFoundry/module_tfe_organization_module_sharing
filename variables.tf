variable "organization_module_sharings" {
  description = <<EOT
Map of organization_module_sharings, attributes below
Required:
    - module_consumers
Optional:
    - organization
EOT

  type = map(object({
    module_consumers = list(string)
    organization     = optional(string)
  }))
}

