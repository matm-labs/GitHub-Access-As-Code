variable "github_owner" {
  description = "GitHub organization name"
  type        = string
}

variable "team_members" {
  description = "List of team members to add to teams"
  type = list(object({
    name     = string
    role     = string
    team_id  = string
    username = string
  }))
}