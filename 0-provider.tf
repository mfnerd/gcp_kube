

# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = "secondprojectomundo"
  region  = "us-central1"
}

#https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "savemebaby"
    prefix = "terraform/state"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.75.0"
    }
  }
}
resource "google_compute_disk" "grafana_disk" {
  name  = "grafana-disk"
  type  = "pd-standard"
  zone  = "us-central1-a"
  size  = "10"
}