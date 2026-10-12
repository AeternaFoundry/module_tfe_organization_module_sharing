resource "tfe_organization_module_sharing" "organization_module_sharings" {
  for_each = var.organization_module_sharings

  module_consumers = each.value.module_consumers
  organization     = each.value.organization
}

