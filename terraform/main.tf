module "teams" {
  source = "./modules/teams"

  github_owner = var.github_owner
  teams        = var.teams
}

module "members" {
  source = "./modules/members"

  github_owner = var.github_owner
  members      = var.members
}