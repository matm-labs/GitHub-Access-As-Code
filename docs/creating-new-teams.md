# Creating new teams

New teams can be created in the organisation by editing the `teams.csv` file in the root directory.

## CSV Format

The `teams.csv` file has two columns:

- **name** — The name of the team
- **description** — A description of the team's purpose

## Creating a new team

1. Open `teams.csv`
2. Add a new row with the team's information:

```csv
name,description
platform-team,Responsible for platform infrastructure
```

3. Save the file
4. Run `make plan` to preview the changes
5. Create a pull request with your changes

## After creating the team

Once a team has been created, team members can be added to it. See [adding-to-teams.md](adding-to-teams.md) for instructions on how to manage team membership.