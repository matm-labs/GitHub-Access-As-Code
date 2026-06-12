# GitHub Secrets and Variables

To run the Terraform workflows automatically via GitHub Actions, you need to configure two secrets in the GitHub repository.

## Required Secrets

### GITHUB_OWNER

**Description:** The name of the GitHub organisation to target with Terraform

**Value:** The organisation name (e.g., `my-org-name`)

**How to set it:**
1. Go to the repository settings
2. Navigate to **Secrets and variables** → **Actions**
3. Click **New repository secret**
4. Name: `GITHUB_OWNER`
5. Value: Enter the GitHub organisation name
6. Click **Add secret**

### GITHUB_TOKEN

**Description:** A personal access token with permissions to manage the organisation

**Permissions required:**
- `Read and write` on `Administration`
- `Read and write` on `Members`

**How to set it:**
1. Generate a fine-grained personal access token from your GitHub account settings (Personal access tokens → Fine-grained tokens)
2. Set the resource owner to your organisation
3. Grant the required permissions as listed above
4. Go to your repository settings
5. Navigate to **Secrets and variables** → **Actions**
6. Click **New repository secret**
7. Name: `GITHUB_TOKEN`
8. Value: Paste your personal access token
9. Click **Add secret**

## Usage

These secrets are automatically used by the GitHub Actions workflows:
- The **Plan workflow** uses them to run `terraform plan` when a pull request is created
- The **Apply workflow** uses them to run `terraform apply` when a pull request is merged to the main branch

## Local Testing

When running or testing Terraform locally, you can set these values directly in `terraform/terraform.tfvars`:

```hcl
github_owner = "my-org-name"
github_token = "github_pat_..."
```

**Note:** `terraform.tfvars` should already be listed in `.gitignore` to prevent accidental commits of sensitive secrets. Double-check your `.gitignore` file to ensure it's properly configured.
