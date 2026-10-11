variable "sql_tables" {
  description = <<EOT
Map of sql_tables, attributes below
Required:
    - catalog_name
    - name
    - schema_name
    - table_type
Optional:
    - cluster_id
    - cluster_keys
    - comment
    - data_source_format
    - options
    - owner
    - partitions
    - properties
    - storage_credential_name
    - storage_location
    - view_definition
    - warehouse_id
    - column (block):
        - comment (optional)
        - identity (optional)
        - name (required)
        - nullable (optional)
        - type (optional)
        - type_json (optional)
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    catalog_name            = string
    name                    = string
    schema_name             = string
    table_type              = string
    cluster_id              = optional(string)
    cluster_keys            = optional(list(string))
    comment                 = optional(string)
    data_source_format      = optional(string)
    options                 = optional(map(string))
    owner                   = optional(string)
    partitions              = optional(list(string))
    properties              = optional(map(string))
    storage_credential_name = optional(string)
    storage_location        = optional(string)
    view_definition         = optional(string)
    warehouse_id            = optional(string)
    column = optional(list(object({
      comment   = optional(string)
      identity  = optional(string)
      name      = string
      nullable  = optional(bool)
      type      = optional(string)
      type_json = optional(string)
    })))
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

