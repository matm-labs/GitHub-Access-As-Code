terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}

resource "github_team_membership" "all" {
  for_each = {
    for team in local.team_members :
    user.username => user
  }
  username = each.value.username
  role     = each.value.role
  team_id  = each.value.team_id
}
