output "organization_module_sharings_id" {
  description = "Map of id values across all organization_module_sharings, keyed the same as var.organization_module_sharings except keys with no id are omitted"
  value       = { for k, v in tfe_organization_module_sharing.organization_module_sharings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_module_sharings_module_consumers" {
  description = "Map of module_consumers values across all organization_module_sharings, keyed the same as var.organization_module_sharings except keys with no module_consumers are omitted"
  value       = { for k, v in tfe_organization_module_sharing.organization_module_sharings : k => v.module_consumers if v.module_consumers != null && length(v.module_consumers) > 0 }
}
output "organization_module_sharings_organization" {
  description = "Map of organization values across all organization_module_sharings, keyed the same as var.organization_module_sharings except keys with no organization are omitted"
  value       = { for k, v in tfe_organization_module_sharing.organization_module_sharings : k => v.organization if v.organization != null && length(v.organization) > 0 }
}

