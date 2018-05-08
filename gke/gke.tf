// resource "google_container_cluster" "mycluster" {
//   # (resource arguments)
// }

resource "google_container_cluster" "mycluster" {
  project = "pipeline-sbx"
  name    = "gke-cluster"
  zone    = "us-central1-b"
  initial_node_count = 3
  description = "testing terraform creation"
    
  additional_zones = [
    "us-central1-f",
  ]
  
  maintenance_policy {
  daily_maintenance_window {
    start_time = "08:00"
  }
}

  logging_service = "logging.googleapis.com"

  master_auth {
    username = "admin"
    password = "Zo7FHk5DWeUpUVDS"
  }

  node_config {
    image_type = "COS"
    machine_type = "custom-1-1024"
	disk_size_gb = 10
	local_ssd_count = 0
	service_account = "default"
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]

    labels {
      node-label = "node-value"
    }
    tags = []
  }
  
  addons_config {
  http_load_balancing {
  // enabled by default
  }
  horizontal_pod_autoscaling {
  // enabled by default
    disabled = true
  }
  kubernetes_dashboard {
  // enabled by default
  }
  network_policy_config {
  // enabled by default
  disabled = true
  }
}
}

output "client_certificate" {
  value = "${google_container_cluster.mycluster.master_auth.0.client_certificate}"
}

output "client_key" {
  value = "${google_container_cluster.mycluster.master_auth.0.client_key}"
}

output "cluster_ca_certificate" {
  value = "${google_container_cluster.mycluster.master_auth.0.cluster_ca_certificate}"
}
