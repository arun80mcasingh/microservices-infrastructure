resource "azurerm_mssql_database" "sql_db" {
depends_on = [azurerm_mssql_server.sql_server ]
  for_each     = var.sql_server
  name         = each.value.database_name
  server_id    = azurerm_mssql_server.sql_server[ each.key ].id
  collation    = "SQL_Latin1_General_CP1_CI_AS"
  license_type = "LicenseIncluded"
  max_size_gb  = each.value.max_size_gb
  sku_name     = "S0"
  enclave_type = "VBS" 

  
}