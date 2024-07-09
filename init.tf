terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.36.0"
    }
  }
  backend "gcs" {
    bucket = "ave-bucket-test1"
    prefix = "terraform/state"
  }
}

provider "google" {
  project = "sandbox-averbeke"
  region  = "europe-west1"
}
