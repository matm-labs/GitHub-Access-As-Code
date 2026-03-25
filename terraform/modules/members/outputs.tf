output "members" {
  description = "Organization members managed by Terraform"
  value = {
    for username, member in github_membership.this : username => {
      username = member.username
      role     = member.role
    }
  }
}

output "team_memberships" {
  description = "Team memberships managed by Terraform"
  value = {
    for key, membership in github_team_membership.this : key => {
      team_id  = membership.team_id
      username = membership.username
      role     = membership.role
    }
  }
}
