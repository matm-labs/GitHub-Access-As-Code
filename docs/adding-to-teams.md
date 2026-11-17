# Adding members to teams

To add members to a team in the organisation edit the `team-members.csv` file in the root directory.

## CSV Format

The team member CSV file has two columns:

- **username** — The GitHub username of the member to add to the team
- **role** — The role for the member in the team, either `member` or `maintainer`
- **team** — The team name of the team the member will be joining

## Adding members to a team

1. Open `team-members.csv`
2. Add a new row with the member's information:

```csv
username,role, team
developer1,member,Team Name
developer2,member,Team Name
project-lead,maintainer,Team Name
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
