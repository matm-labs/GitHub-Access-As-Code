variable "github_owner" {
  description = "GitHub organization name"
  type        = string
}

variable "team_members" {
  description = "List of team members to add to teams"
  type = map(object({
      id          = string
      name        = string
      slug        = string
      description = string
      privacy     = string
  }))
}
