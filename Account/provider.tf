provider "databricks" {
  alias         = "mws"
  host          = "https://accounts.cloud.databricks.com"
  client_id     = var.databricks_client_id
  client_secret = var.databricks_client_secret
  account_id    = "6828e5f2-b292-4e0a-945f-3de4b136f6ad"
}
resource "databricks_service_principal" "sp" {
  provider     = databricks.mws
  display_name = "Automation-only SP"
}