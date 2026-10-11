output "odb_db_nodes_lookup_cloud_vm_cluster_id" {
  description = "Map of cloud_vm_cluster_id values across all odb_db_nodes_lookup, keyed the same as var.odb_db_nodes_lookup"
  value       = { for k, v in data.aws_odb_db_nodes.odb_db_nodes_lookup : k => v.cloud_vm_cluster_id if v.cloud_vm_cluster_id != null && length(v.cloud_vm_cluster_id) > 0 }
}
output "odb_db_nodes_lookup_db_nodes" {
  description = "Map of db_nodes values across all odb_db_nodes_lookup, keyed the same as var.odb_db_nodes_lookup"
  value       = { for k, v in data.aws_odb_db_nodes.odb_db_nodes_lookup : k => v.db_nodes if v.db_nodes != null && length(v.db_nodes) > 0 }
}
output "odb_db_nodes_lookup_region" {
  description = "Map of region values across all odb_db_nodes_lookup, keyed the same as var.odb_db_nodes_lookup"
  value       = { for k, v in data.aws_odb_db_nodes.odb_db_nodes_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}

