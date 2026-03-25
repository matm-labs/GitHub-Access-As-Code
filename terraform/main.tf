module "teams" {
  source = "./modules/teams"

  github_owner = var.github_owner
}

module "members" {
  source = "./modules/members"

  github_owner = var.github_owner
}