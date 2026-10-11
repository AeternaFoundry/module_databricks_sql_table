resource "databricks_sql_table" "sql_tables" {
  for_each = var.sql_tables

  catalog_name            = each.value.catalog_name
  name                    = each.value.name
  schema_name             = each.value.schema_name
  table_type              = each.value.table_type
  cluster_id              = each.value.cluster_id
  cluster_keys            = each.value.cluster_keys
  comment                 = each.value.comment
  data_source_format      = each.value.data_source_format
  options                 = each.value.options
  owner                   = each.value.owner
  partitions              = each.value.partitions
  properties              = each.value.properties
  storage_credential_name = each.value.storage_credential_name
  storage_location        = each.value.storage_location
  view_definition         = each.value.view_definition
  warehouse_id            = each.value.warehouse_id

  dynamic "column" {
    for_each = each.value.column != null ? each.value.column : []
    content {
      comment   = column.value.comment
      identity  = column.value.identity
      name      = column.value.name
      nullable  = column.value.nullable
      type      = column.value.type
      type_json = column.value.type_json
    }
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

