resource "google_bigquery_dataset" "view_dataset" {
  dataset_id                  = var.view_dataset_id
  project                     = var.project_id
  friendly_name               = var.view_dataset_id
  description                 = "view dataset"
  location                    = "EU"
  default_table_expiration_ms = 3600000

  labels = {
    env = terraform.workspace
  }
}

resource "google_bigquery_table" "target_view" {
    dataset_id          = var.view_dataset_id
    table_id            = var.view_id
    project             = var.project_id
    description         = "test view"
    labels = {
        env = terraform.workspace
    }
    view {
        query = var.query 
    }
}