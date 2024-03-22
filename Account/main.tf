terraform {
  cloud {
    organization = "N2D-Inc"

    workspaces {
      name = "Workspace_CLI"
    }
  }
}

terraform {
  required_providers {
    databricks={
        source = "databricks/databricks"
        version = "1.36.0"
    }
  }
}