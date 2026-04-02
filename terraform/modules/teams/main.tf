# Creates GitHub teams for the organization
terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}

# resource "github_team" "this" {
#   for_each = var.teams

#   name        = each.key
#   description = each.value.description
#   privacy     = each.value.privacy
# }
