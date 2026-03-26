variable "github_owner" {
  description = "GitHub organization name"
  type        = string
}

variable "github_token" {
  description = "GitHub personal access token with appropriate permissions"
  type        = string
  sensitive   = true
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

# Member configuration
variable "members" {
  description = "Organization members to manage"
  type = map(object({
    role = optional(string, "member") # admin or member
  }))
  default = {}
}