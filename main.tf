data "aws_odb_db_nodes" "odb_db_nodes_lookup" {
  for_each = var.odb_db_nodes_lookup

  cloud_vm_cluster_id = each.value.cloud_vm_cluster_id
  region              = each.value.region
}

