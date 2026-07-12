output "netapp_snapshots_account_name" {
  description = "Map of account_name values across all netapp_snapshots, keyed the same as var.netapp_snapshots"
  value       = { for k, v in azurerm_netapp_snapshot.netapp_snapshots : k => v.account_name }
}
output "netapp_snapshots_location" {
  description = "Map of location values across all netapp_snapshots, keyed the same as var.netapp_snapshots"
  value       = { for k, v in azurerm_netapp_snapshot.netapp_snapshots : k => v.location }
}
output "netapp_snapshots_name" {
  description = "Map of name values across all netapp_snapshots, keyed the same as var.netapp_snapshots"
  value       = { for k, v in azurerm_netapp_snapshot.netapp_snapshots : k => v.name }
}
output "netapp_snapshots_pool_name" {
  description = "Map of pool_name values across all netapp_snapshots, keyed the same as var.netapp_snapshots"
  value       = { for k, v in azurerm_netapp_snapshot.netapp_snapshots : k => v.pool_name }
}
output "netapp_snapshots_resource_group_name" {
  description = "Map of resource_group_name values across all netapp_snapshots, keyed the same as var.netapp_snapshots"
  value       = { for k, v in azurerm_netapp_snapshot.netapp_snapshots : k => v.resource_group_name }
}
output "netapp_snapshots_volume_name" {
  description = "Map of volume_name values across all netapp_snapshots, keyed the same as var.netapp_snapshots"
  value       = { for k, v in azurerm_netapp_snapshot.netapp_snapshots : k => v.volume_name }
}

