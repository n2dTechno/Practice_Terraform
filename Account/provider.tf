provider "databricks" {
  alias         = "mws"
  host          = "https://accounts.cloud.databricks.com"
  client_id     = var.databricks_client_id
  client_secret = var.databricks_client_secret
  account_id    = "276f23b2-904b-4bcc-922c-fa45276cdc91"
}
resource "databricks_service_principal" "sp" {
  provider     = databricks.mws
  display_name = "Automation-only SP"
}