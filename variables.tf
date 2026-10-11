variable "recovery_recovery_service_subnets_lookup" {
  description = <<EOT
Map of recovery_recovery_service_subnets_lookup, attributes below
Optional:
    - compartment_id
    - display_name
    - state
    - vcn_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = optional(string)
    display_name   = optional(string)
    state          = optional(string)
    vcn_id         = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

