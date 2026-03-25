terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}

# Manages organization members
resource "github_membership" "this" {
  for_each = var.members

  username = each.key
  role     = each.value.role
}

# Manages team memberships
resource "github_team_membership" "this" {
  for_each = var.team_memberships

  team_id  = each.value.team_id
  username = each.value.username
  role     = each.value.role
}