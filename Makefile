.PHONY: help init validate plan apply destroy fmt lint clean import

TF_DIR := terraform
TF_VARS := -var-file=terraform.tfvars

help:
	@echo "GitHub Organization Access as Code - Terraform Commands"
	@echo ""
	@echo "Usage: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  init          Initialize Terraform configuration"
	@echo "  validate      Validate Terraform configuration"
	@echo "  fmt           Format Terraform files"
	@echo "  lint          Validate and format Terraform"
	@echo "  plan          Show planned changes"
	@echo "  apply         Apply Terraform changes"
	@echo "  destroy       Destroy managed resources"
	@echo "  clean         Clean local Terraform files"
	@echo ""
	@echo "Examples:"
	@echo "  make init              # Initialize root configuration"
	@echo "  make plan              # Show what would change"
	@echo "  make apply             # Apply changes"
	@echo "  make fmt               # Format all Terraform files"

# Root environment commands
init:
	cd $(TF_DIR) && terraform init

validate:
	cd $(TF_DIR) && terraform validate

fmt:
	cd $(TF_DIR) && terraform fmt -recursive

lint: validate fmt

plan:
	cd $(TF_DIR) && terraform plan $(TF_VARS)

apply:
	cd $(TF_DIR) && terraform apply $(TF_VARS)

destroy:
	cd $(TF_DIR) && terraform destroy $(TF_VARS)

clean:
	find . -type d -name .terraform -exec rm -rf {} + 2>/dev/null || true
	find . -name .terraform.lock.hcl -delete 2>/dev/null || true
	find . -name "terraform.tfstate*" -delete 2>/dev/null || true
	find . -name .tfplan -delete 2>/dev/null || true


# Run a complete validation and plan cycle
check: fmt validate plan
	@echo "✓ Configuration is valid and ready to review"

.DEFAULT_GOAL := help
