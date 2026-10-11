data "oci_identity_regions" "identity_regions_lookup" {
  for_each = var.identity_regions_lookup


  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

