# Contributing to the codebase

This project uses a development container to provide a consistent development environment with all necessary tools pre-configured.

## Using the dev container

A `.devcontainer` configuration is provided that automatically installs:
- Terraform
- Git
- GitHub CLI
- Pre-commit hooks

### Getting started

1. Open the project in VS Code (or your preferred IDE with dev container support)
2. When prompted, click **"Reopen in Container"** to start the dev container
3. All necessary tools will be automatically installed and configured

### Manual setup (if not using dev container)

If you choose not to use the dev container, you'll need to manually install:
- [Terraform](https://www.terraform.io/downloads)
- [Pre-commit](https://pre-commit.com/#install)

## Git commit conventions

This project uses [conventional commits](https://www.conventionalcommits.org/) to maintain a clear and organized commit history.

### Commit message format

```
<type>(<scope>): <subject>

<body>

<footer>
```

### Types

- **feat** — A new feature
- **fix** — A bug fix
- **docs** — Documentation only changes
- **style** — Changes that do not affect the meaning of the code (formatting, etc.)
- **refactor** — A code change that neither fixes a bug nor adds a feature
- **chore** — Changes to build process, dependencies, or tooling

### Examples

```
feat(teams): add support for team descriptions

fix(members): resolve role assignment issue

docs: update contributing guidelines
```

### Automatic enforcement

Pre-commit hooks are installed in the dev container and will automatically check your commits for compliance with conventional commit standards. If a commit message doesn't follow the format, the hook will prevent the commit from being made.

## Workflow

1. Create a new branch for your changes
2. Make your changes and commit with conventional commit messages
3. Run `make plan` to preview your Terraform changes
4. Create a pull request with your changes
5. The GitHub Actions workflow will automatically run `terraform plan` on your PR
6. Once approved and merged, `terraform apply` will run automatically
