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