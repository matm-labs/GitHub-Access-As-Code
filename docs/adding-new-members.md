# Adding new members

New members can be added to the organisation by editing the `members.csv` file in the root directory.

## CSV Format

The `members.csv` file has three columns:

- **username** — The GitHub username of the member
- **role** — The role for the member (e.g., `member`, `admin`)
- **full name** — The full name of the member (optional, for reference only)

## Adding a new member

1. Open `members.csv`
2. Add a new row with the member's information:

```csv
username,role,full name
github-username,member,John Doe
```

3. Save the file
4. Run `make plan` to preview the changes
5. Create a pull request with your changes

## Note on the full name field

The `full name` field is included for organisational purposes and to help manage members within the organisation. This field is **not used by Terraform** to configure anything in GitHub—it's purely for reference and documentation. Use it to keep track of who each GitHub username corresponds to within the teams.