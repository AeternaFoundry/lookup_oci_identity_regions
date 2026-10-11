output "identity_regions_lookup_id" {
  description = "Map of id values across all identity_regions_lookup, keyed the same as var.identity_regions_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_regions.identity_regions_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_regions_lookup_filter" {
  description = "Map of filter values across all identity_regions_lookup, keyed the same as var.identity_regions_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_regions.identity_regions_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_regions_lookup_regions" {
  description = "Map of regions values across all identity_regions_lookup, keyed the same as var.identity_regions_lookup except keys with no regions are omitted"
  value       = { for k, v in data.oci_identity_regions.identity_regions_lookup : k => v.regions if v.regions != null && length(v.regions) > 0 }
}

