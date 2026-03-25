output "teams" {
  description = "Created GitHub teams"
  value = {
    for team_name, team in github_team.this : team_name => {
      id          = team.id
      name        = team.name
      slug        = team.slug
      description = team.description
      privacy     = team.privacy
    }
  }
}
