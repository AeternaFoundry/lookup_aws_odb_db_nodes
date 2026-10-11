variable "odb_db_nodes_lookup" {
  description = <<EOT
Map of odb_db_nodes_lookup, attributes below
Required:
    - cloud_vm_cluster_id
Optional:
    - region
EOT

  type = map(object({
    cloud_vm_cluster_id = string
    region              = optional(string)
  }))
}

