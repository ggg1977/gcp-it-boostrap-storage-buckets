resource "google_storage_bucket" "gcs_trf_state" {
  project                     = var.project_id
  name                        = "${var.organization}-gcs-it-trf-${var.environment}-eus1-001" # dev - prod
  location                    = var.location
  force_destroy               = true
  uniform_bucket_level_access = true
  storage_class               = var.storage_class # "REGIONAL - MULTI_REGIONAL

  versioning {
    enabled = true
  }

}