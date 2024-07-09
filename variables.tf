variable "project_id" {
  description = "project storing the BQ view"
  type        = string
  default     = "sandbox-averbeke"
}

variable "dataset_id" {
  description = "dataset storing source tables"
  type        = string
  default     = "terraform_test"
}

variable "view_dataset_id" {
  description = "dataset storing views"
  type        = string
  default     = "terraform_test_views"
}