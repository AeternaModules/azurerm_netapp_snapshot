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
  # --- Unconfirmed validation candidates, derived from azurerm_netapp_snapshot's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.SnapshotName] !regexp.MustCompile(`^[\da-zA-Z][-_\da-zA-Z]{3,63}$`).MatchString(value)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: account_name
  #   source:    [from validate.AccountName] !regexp.MustCompile(`^[-_\da-zA-Z]{3,64}$`).MatchString(value)
  # path: pool_name
  #   source:    [from validate.PoolName] !regexp.MustCompile(`^[\da-zA-Z][-_\da-zA-Z]{2,63}$`).MatchString(value)
  # path: volume_name
  #   source:    [from validate.VolumeName] !regexp.MustCompile(`^[a-zA-Z][-_\da-zA-Z]{0,63}$`).MatchString(value)
}

