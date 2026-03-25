# Members Module for GitHub Organization
# Manages GitHub organization members and team memberships

variable "github_owner" {
  description = "GitHub organization name"
  type        = string
}

# Member configuration
variable "members" {
  description = "Organization members to manage"
  type = map(object({
    role = optional(string, "member") # admin or member
  }))
  default = {}
}

variable "team_memberships" {
  description = "Team membership assignments"
  type = map(object({
    team_id  = string
    username = string
    role     = optional(string, "member") # maintainer or member
  }))
  default = {}
}