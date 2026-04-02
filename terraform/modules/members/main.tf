terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}

resource "github_membership" "all" {
  for_each = {
    for member in csvdecode(file("${path.root}/../members.csv")) :
    member.username => member
  }

  username = each.value.username
  role     = each.value.role

}