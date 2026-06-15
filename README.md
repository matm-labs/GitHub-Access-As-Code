# GitHub Access as Code

Our Terraform-based solution for managing GitHub organisation access. This tool manages organisation members, teams, and team membership through infrastructure code, with all configuration driven by simple CSV files.

## Features

- **Organisation member management** — Manage members in our GitHub organisation
- **Team creation** — Create teams within the organisation
- **Team membership** — Assign members to teams with specific roles (member or maintainer)
- **Infrastructure as Code** — All configuration managed through version control
- **Automated deployment** — GitHub Actions workflows for testing and applying changes

## How it works

All organisation and team management is done through simple CSV files:

- **`members.csv`** — Define organisation members and their roles
- **`teams.csv`** — Define teams in the organisation
- **`team-members/*.csv`** — Define team membership and roles

## Documentation

Guides for managing the organisation:

- [Adding new members](docs/adding-new-members.md) — Managing `members.csv`
- [Creating new teams](docs/creating-new-teams.md) — Managing `teams.csv`
- [Adding members to teams](docs/adding-to-teams.md) — Managing `team-members/*.csv` files
- [GitHub secrets configuration](docs/github-secrets.md) — Setting up required GitHub secrets
- [Contributing](docs/contributing.md) — Contributing to the codebase

## Workflow

1. Update the relevant CSV file(s)
2. Create a pull request with your changes
3. The automated workflow runs `terraform plan` to preview changes
4. Once merged, `terraform apply` automatically executes the changes

## Setup requirements

- Terraform
- A GitHub personal access token with organisation administration and members permissions
- GitHub repository secrets configured (see [GitHub secrets configuration](docs/github-secrets.md))

## TODO

- [ ] Configure remote state storage in AWS/Azure (currently using local state)
- [ ] Test GitHub Actions workflows with actual pull requests