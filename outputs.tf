output "netapp_snapshots_id" {
  description = "Map of id values across all netapp_snapshots, keyed the same as var.netapp_snapshots"
  value       = { for k, v in azurerm_netapp_snapshot.netapp_snapshots : k => v.id if v.id != null && length(v.id) > 0 }
}
output "netapp_snapshots_account_name" {
  description = "Map of account_name values across all netapp_snapshots, keyed the same as var.netapp_snapshots"
  value       = { for k, v in azurerm_netapp_snapshot.netapp_snapshots : k => v.account_name if v.account_name != null && length(v.account_name) > 0 }
}
output "netapp_snapshots_location" {
  description = "Map of location values across all netapp_snapshots, keyed the same as var.netapp_snapshots"
  value       = { for k, v in azurerm_netapp_snapshot.netapp_snapshots : k => v.location if v.location != null && length(v.location) > 0 }
}
output "netapp_snapshots_name" {
  description = "Map of name values across all netapp_snapshots, keyed the same as var.netapp_snapshots"
  value       = { for k, v in azurerm_netapp_snapshot.netapp_snapshots : k => v.name if v.name != null && length(v.name) > 0 }
}
output "netapp_snapshots_pool_name" {
  description = "Map of pool_name values across all netapp_snapshots, keyed the same as var.netapp_snapshots"
  value       = { for k, v in azurerm_netapp_snapshot.netapp_snapshots : k => v.pool_name if v.pool_name != null && length(v.pool_name) > 0 }
}
output "netapp_snapshots_resource_group_name" {
  description = "Map of resource_group_name values across all netapp_snapshots, keyed the same as var.netapp_snapshots"
  value       = { for k, v in azurerm_netapp_snapshot.netapp_snapshots : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "netapp_snapshots_volume_name" {
  description = "Map of volume_name values across all netapp_snapshots, keyed the same as var.netapp_snapshots"
  value       = { for k, v in azurerm_netapp_snapshot.netapp_snapshots : k => v.volume_name if v.volume_name != null && length(v.volume_name) > 0 }
}

