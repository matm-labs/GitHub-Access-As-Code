module "teams" {
  source = "./modules/teams"

  github_owner = var.github_owner
}

module "members" {
  source = "./modules/members"

  github_owner = var.github_owner
}

module "team-members" {
  source = "./modules/team-members"

  github_owner = var.github_owner
  team_members = local.team_members
}