module "gke_cluster" {
  source                     = "terraform-google-modules/kubernetes-engine/google"
  project_id                 = "shegyam-001"
  name                       = "gke-cluster-1"
  region                     = "us-central1"
  network                    = "default"
  subnetwork                 = "default"
  ip_range_pods              = "default"
  ip_range_services          = "default"
  http_load_balancing        = false
  horizontal_pod_autoscaling = true
  network_policy             = false
}