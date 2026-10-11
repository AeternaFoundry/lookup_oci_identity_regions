variable "identity_regions_lookup" {
  description = <<EOT
Map of identity_regions_lookup, attributes below
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

