# Azure CAF Enterprise Landing Zone (Terraform)

My production-grade Azure landing zone built 100 % with Terraform following Microsoft Cloud Adoption Framework (CAF) and Enterprise-Scale best practices.

## Features
- Proper management group hierarchy (Root → Decommissioned → Sandboxes → Landing Zones → Platform → Corp/Online)  
- Remote state in Azure Storage with state locking  
- Pinned provider versions & Terraform ≥1.9  
- GitHub Actions CI (fmt → validate → plan)  
- Modular design ready for connectivity, identity, management, and sandbox subscriptions  
- Zero portal clicks – everything as code

## Structure
# 3. Final push
git add .
git commit -m "ci: add GitHub Actions workflow + professional README with badge"
git push

# 1. GitHub Actions workflow – runs fmt, validate, plan on every push/PR
cat > .github/workflows/terraform.yml <<'EOF'
name: Terraform CI

on:
  push:
    branches: [ main ]
  pull_request:

jobs:
  terraform:
    name: Terraform
    runs-on: ubuntu-latest
    permissions:
      contents: read
      pull-requests: write

    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Setup Terraform
        uses: hashicorp/setup-terraform@v3
        with:
          terraform_version: 1.9.8

      - name: Terraform Format
        run: terraform fmt -check

      - name: Terraform Init
        run: terraform init -backend=false

      - name: Terraform Validate
        run: terraform validate -no-color

      - name: Terraform Plan
        run: terraform plan -no-color -out=plan.tfplan
