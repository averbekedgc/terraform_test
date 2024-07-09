variable "project_id" {
    description = "project storing the BQ view"
    type        = string
}

variable "view_dataset_id" {
    description = "dataset name that store the view"
    type        = string
}

variable "view_id" {
    description = "view name"
    type        = string
}

variable "query" {
    description = "view's query"
    type        = string
}
