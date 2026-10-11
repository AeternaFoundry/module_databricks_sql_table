output "sql_tables_id" {
  description = "Map of id values across all sql_tables, keyed the same as var.sql_tables except keys with no id are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "sql_tables_catalog_name" {
  description = "Map of catalog_name values across all sql_tables, keyed the same as var.sql_tables except keys with no catalog_name are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.catalog_name if v.catalog_name != null && length(v.catalog_name) > 0 }
}
output "sql_tables_cluster_id" {
  description = "Map of cluster_id values across all sql_tables, keyed the same as var.sql_tables except keys with no cluster_id are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "sql_tables_cluster_keys" {
  description = "Map of cluster_keys values across all sql_tables, keyed the same as var.sql_tables except keys with no cluster_keys are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.cluster_keys if v.cluster_keys != null && length(v.cluster_keys) > 0 }
}
output "sql_tables_column" {
  description = "Map of column values across all sql_tables, keyed the same as var.sql_tables except keys with no column are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.column if v.column != null && length(v.column) > 0 }
}
output "sql_tables_comment" {
  description = "Map of comment values across all sql_tables, keyed the same as var.sql_tables except keys with no comment are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "sql_tables_data_source_format" {
  description = "Map of data_source_format values across all sql_tables, keyed the same as var.sql_tables except keys with no data_source_format are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.data_source_format if v.data_source_format != null && length(v.data_source_format) > 0 }
}
output "sql_tables_effective_properties" {
  description = "Map of effective_properties values across all sql_tables, keyed the same as var.sql_tables except keys with no effective_properties are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.effective_properties if v.effective_properties != null && length(v.effective_properties) > 0 }
}
output "sql_tables_name" {
  description = "Map of name values across all sql_tables, keyed the same as var.sql_tables except keys with no name are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.name if v.name != null && length(v.name) > 0 }
}
output "sql_tables_options" {
  description = "Map of options values across all sql_tables, keyed the same as var.sql_tables except keys with no options are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.options if v.options != null && length(v.options) > 0 }
}
output "sql_tables_owner" {
  description = "Map of owner values across all sql_tables, keyed the same as var.sql_tables except keys with no owner are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.owner if v.owner != null && length(v.owner) > 0 }
}
output "sql_tables_partitions" {
  description = "Map of partitions values across all sql_tables, keyed the same as var.sql_tables except keys with no partitions are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.partitions if v.partitions != null && length(v.partitions) > 0 }
}
output "sql_tables_properties" {
  description = "Map of properties values across all sql_tables, keyed the same as var.sql_tables except keys with no properties are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.properties if v.properties != null && length(v.properties) > 0 }
}
output "sql_tables_provider_config" {
  description = "Map of provider_config values across all sql_tables, keyed the same as var.sql_tables except keys with no provider_config are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "sql_tables_schema_name" {
  description = "Map of schema_name values across all sql_tables, keyed the same as var.sql_tables except keys with no schema_name are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.schema_name if v.schema_name != null && length(v.schema_name) > 0 }
}
output "sql_tables_storage_credential_name" {
  description = "Map of storage_credential_name values across all sql_tables, keyed the same as var.sql_tables except keys with no storage_credential_name are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.storage_credential_name if v.storage_credential_name != null && length(v.storage_credential_name) > 0 }
}
output "sql_tables_storage_location" {
  description = "Map of storage_location values across all sql_tables, keyed the same as var.sql_tables except keys with no storage_location are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.storage_location if v.storage_location != null && length(v.storage_location) > 0 }
}
output "sql_tables_table_id" {
  description = "Map of table_id values across all sql_tables, keyed the same as var.sql_tables except keys with no table_id are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.table_id if v.table_id != null && length(v.table_id) > 0 }
}
output "sql_tables_table_type" {
  description = "Map of table_type values across all sql_tables, keyed the same as var.sql_tables except keys with no table_type are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.table_type if v.table_type != null && length(v.table_type) > 0 }
}
output "sql_tables_view_definition" {
  description = "Map of view_definition values across all sql_tables, keyed the same as var.sql_tables except keys with no view_definition are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.view_definition if v.view_definition != null && length(v.view_definition) > 0 }
}
output "sql_tables_warehouse_id" {
  description = "Map of warehouse_id values across all sql_tables, keyed the same as var.sql_tables except keys with no warehouse_id are omitted"
  value       = { for k, v in databricks_sql_table.sql_tables : k => v.warehouse_id if v.warehouse_id != null && length(v.warehouse_id) > 0 }
}

