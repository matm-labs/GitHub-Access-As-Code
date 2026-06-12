# Adding members to teams

To add members to a team in the organisation, create a new CSV file in the `team-members/` folder with a filename that matches the team name from `teams.csv`.

## CSV Format

The team member CSV file has two columns:

- **username** — The GitHub username of the member to add to the team
- **role** — The role for the member in the team, either `member` or `maintainer`

## Adding members to a team

1. Create a new CSV file in the `team-members/` folder with the team name. For example, if your team is named `platform-team`, create `team-members/platform-team.csv`
2. Add the usernames and roles of members to add to the team:

```csv
username,role
developer1,member
developer2,member
project-lead,maintainer
```

3. Save the file
4. Run `make plan` to preview the changes

## Important: Creating teams and members in the correct order

Due to how the Terraform resources are configured, when creating a new team **and** adding members to it in the same pull request, you must use Terraform's targeting feature to apply them in the correct order:

1. First, apply only the team resource:
   ```bash
   make apply-target-team
   ```

2. Then, apply all resources including the team members:
   ```bash
   make apply
   ```

This ensures the team is created in GitHub before attempting to add members to it. This targeting workflow is only necessary when you're creating the team and adding members in the same deployment. If the team already exists, you can simply run `make apply` to add members to it.
