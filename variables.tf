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

