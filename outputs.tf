output "netapp_snapshots" {
  description = "All netapp_snapshot resources"
  value       = azurerm_netapp_snapshot.netapp_snapshots
}
output "netapp_snapshots_account_name" {
  description = "List of account_name values across all netapp_snapshots"
  value       = [for k, v in azurerm_netapp_snapshot.netapp_snapshots : v.account_name]
}
output "netapp_snapshots_location" {
  description = "List of location values across all netapp_snapshots"
  value       = [for k, v in azurerm_netapp_snapshot.netapp_snapshots : v.location]
}
output "netapp_snapshots_name" {
  description = "List of name values across all netapp_snapshots"
  value       = [for k, v in azurerm_netapp_snapshot.netapp_snapshots : v.name]
}
output "netapp_snapshots_pool_name" {
  description = "List of pool_name values across all netapp_snapshots"
  value       = [for k, v in azurerm_netapp_snapshot.netapp_snapshots : v.pool_name]
}
output "netapp_snapshots_resource_group_name" {
  description = "List of resource_group_name values across all netapp_snapshots"
  value       = [for k, v in azurerm_netapp_snapshot.netapp_snapshots : v.resource_group_name]
}
output "netapp_snapshots_volume_name" {
  description = "List of volume_name values across all netapp_snapshots"
  value       = [for k, v in azurerm_netapp_snapshot.netapp_snapshots : v.volume_name]
}

