resource "google_project_iam_member" "kubernetes-1" {
  project = "secondprojectomundo"
  role    = "roles/storage.admin"
  member  = "serviceAccount:${google_service_account.kubernetes.email}"
}


resource "google_project_iam_member" "kubernetes-2" {
  project = "secondprojectomundo"
  role    = "roles/artifactregistry.reader"
  member  = "serviceAccount:${google_service_account.kubernetes.email}"
}