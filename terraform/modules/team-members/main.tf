terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
  }
}

resource "github_team_membership" "all" {
  count = length(var.team_members)
  username = var.team_members[count.index].username
  role     = var.team_members[count.index].role
  team_id  = var.team_members[count.index].team_id
}

# resource "github_team_membership" "all" {
#   for_each = {
#     for user in var.team_members :
#     user.username => user
#   }
#   username = each.value.username
#   role     = each.value.role
#   team_id  = each.value.team_id
# }