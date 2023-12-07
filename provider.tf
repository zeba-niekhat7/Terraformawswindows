provider "aws" {
  region              = var.aws_region
  allowed_account_ids = var.destination_account_ids
  access_key          = var.aws_access_key
  secret_key          = var.aws_secret_key
  token               = var.aws_session_token
}
