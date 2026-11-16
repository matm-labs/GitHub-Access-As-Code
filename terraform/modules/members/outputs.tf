output "members" {
  description = "Organization members managed by Terraform"
  value = {
    for username, member in github_membership.all : username => {
      username = member.username
      role     = member.role
    }
  }
}
