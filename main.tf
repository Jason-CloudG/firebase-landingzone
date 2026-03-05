module "org_structure" {
  source = "./modules/org_structure"

  org_id        = var.org_id
  customer_name = var.customer_name
}

module "projects" {
  source = "./modules/projects"

  billing_account = var.billing_account
  environments    = var.environments
  customer_name   = var.customer_name
}

module "networking" {
  source = "./modules/networking"

  network_model = var.network_model
  environments  = var.environments
}

module "iam" {
  source = "./modules/iam"

  iam_model = var.iam_model
}

module "logging" {
  source = "./modules/logging"

  org_id = var.org_id
}

module "budgets" {
  source = "./modules/budgets"

  billing_account = var.billing_account
  threshold       = var.budget_threshold
}
