provider "google" {
  project = var.bootstrap_project
}

provider "google-beta" {
  project = var.bootstrap_project
}
