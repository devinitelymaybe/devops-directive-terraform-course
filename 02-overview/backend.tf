# Using a single workspace:
terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "devmaybe"

    workspaces {
      name = "devops-directive-terraform-course"
    }
  }
}
