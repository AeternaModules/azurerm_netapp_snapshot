variable "netapp_snapshots" {
  description = <<EOT
Map of netapp_snapshots, attributes below
Required:
    - account_name
    - location
    - name
    - pool_name
    - resource_group_name
    - volume_name
EOT

  type = map(object({
    account_name        = string
    location            = string
    name                = string
    pool_name           = string
    resource_group_name = string
    volume_name         = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.netapp_snapshots : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.netapp_snapshots : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.netapp_snapshots : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

