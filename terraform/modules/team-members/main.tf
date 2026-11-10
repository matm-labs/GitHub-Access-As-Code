terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}

resource "github_team" "all" {
  for_each = {
    for team in csvdecode(file("${path.root}/../teams.csv")) :
    team.name => team
  }

  name        = each.value.name
  description = each.value.description
  privacy     = "closed"

}

resource "github_team_membership" "all" {
  for_each = {
    for user in local.team_members :
    user.username => user
  }
  username = each.value.username
  role     = each.value.role
  team_id  = each.value.team_id
}
