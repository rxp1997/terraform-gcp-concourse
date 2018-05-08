provider "google" {
  project     = "${var.project_id}"
  credentials = "${file(var.credentials)}"
}

resource "google_project_services" "project" {
  project = "${var.project_id}"

  services = [
    "servicemanagement.googleapis.com",
    "storage-component.googleapis.com",
    "bigquery-json.googleapis.com",
    "clouddebugger.googleapis.com",
    "pubsub.googleapis.com",
    "cloudapis.googleapis.com",
    "cloudtrace.googleapis.com",
    "monitoring.googleapis.com",
    "logging.googleapis.com",
    "storage-api.googleapis.com",
    "sql-component.googleapis.com",
    "datastore.googleapis.com",
    "compute.googleapis.com",
    "sqladmin.googleapis.com",
    "iam.googleapis.com",
    "container.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "stackdriver.googleapis.com",
    "audit.googleapis.com",
  ]
}
