# Teams Module for GitHub Organization
# Manages GitHub team creation and configuration

variable "github_owner" {
  description = "GitHub organization name"
  type        = string
}

# Team configuration
variable "teams" {
  description = "Teams to manage in the GitHub organization"
  type = map(object({
    description = optional(string)
    privacy     = optional(string, "closed") # closed or secret
  }))
  default = {}
}
