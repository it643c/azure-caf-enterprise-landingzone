# Azure CAF Enterprise Landing Zone (Terraform)

My production-grade Azure landing zone built 100% with Terraform following Microsoft Cloud Adoption Framework (CAF) and Enterprise-Scale best practices.

## Features
- Proper management group hierarchy (Root → Decommissioned → Sandboxes → Landing Zones → Platform → Corp/Online)  
- Remote state in Azure Storage with state locking  
- Pinned provider versions & Terraform ≥1.9  
- GitHub Actions CI (fmt → validate → plan)  
- Modular design ready for connectivity, identity, management, and sandbox subscriptions  
- Zero portal clicks – everything as code

## Structure├── modules/                  # Reusable enterprise modules (management_group, policy, etc.)
├── landingzone/              # Subscription-level configs (connectivity, identity, etc.)
├── .github/workflows         # GitHub Actions CI/CD
├── backend.tf                # Remote state (Azure backend)
├── providers.tf
├── variables.tf
├── terraform.tfvars.example
├── versions.tf
└── README.md
text## Why this matters
This is the same pattern used by Fortune-500 Azure environments. One engineer can now deploy and govern what used to take entire teams of classic admins.

Built from scratch in 2025 by an old-school sysadmin who came back and translated Tier-0 Active Directory thinking into modern IaC.

Open to opportunities – DM me if you need someone who actually understands why these controls exist.

[![Terraform CI](https://img.shields.io/badge/Terraform-CI-brightgreen?logo=terraform&style=flat-square)](https://github.com/it643c/azure-caf-enterprise-landingzone/actions/workflows/terraform.yml)
