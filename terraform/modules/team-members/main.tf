terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}



resource "github_team_membership" "all" {
  for_each = {
    for user in csvdecode(file("${path.root}/../team-members.csv")) :
    user.username => user
  }
  username = each.value.username
  role     = each.value.role
  team_id  = var.team_members[user.team].id
}