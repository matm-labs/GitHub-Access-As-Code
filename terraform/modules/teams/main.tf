# Creates GitHub teams for the organization
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
