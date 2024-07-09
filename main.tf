# resource "google_storage_bucket" "ave-bucket-test1" {
#   name     = "ave-bucket-test1"
#   location = "EU"
# } 


resource "google_bigquery_dataset" "terraform-test" {
  dataset_id                  = var.dataset_id
  project                     = var.project_id
  friendly_name               = "terraform-test"
  description                 = "terraformed test dataset"
  location                    = "EU"
  default_table_expiration_ms = 3600000

  labels = {
    env = terraform.workspace
  }
}

resource "google_bigquery_table" "test_table" {
for_each = fileset("${path.module}/TABLES","*.json")

  dataset_id = var.dataset_id
  table_id   = trimsuffix(each.value, ".json")
  project    = var.project_id
  schema     = file("${path.module}/TABLES/${each.value}")
  labels = {
    env = terraform.workspace
  }
}




 