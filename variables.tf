variable "org_id" {}
variable "billing_account" {}
variable "customer_name" {}

variable "environments" {
  type = list(string)
}

variable "network_model" {}
variable "iam_model" {}
variable "budget_threshold" {}

variable "bootstrap_project" {}
