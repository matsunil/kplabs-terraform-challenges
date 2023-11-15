
provider "aws" {
  region = "us-east-1"
}

data "aws_iam_users" "users" {}

output "user_names" {
    value = data.aws_iam_users.users.names
  
}