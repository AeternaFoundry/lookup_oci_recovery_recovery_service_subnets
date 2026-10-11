data "oci_recovery_recovery_service_subnets" "recovery_recovery_service_subnets_lookup" {
  for_each = var.recovery_recovery_service_subnets_lookup

  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name
  state          = each.value.state
  vcn_id         = each.value.vcn_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

