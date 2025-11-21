# azure-caf-enterprise-landingzone

My first Azure landing zone built with Terraform

azure-caf-enterprise-landingzone/
├── .github/
│   └── workflows/
│       └── terraform.yml          # GitHub Actions CI/CD
├── modules/
│   ├── management_group
│   ├── policy
│   ├── role_assignment
│   └── logging
├── landingzone/
│   ├── connectivity/
│   ├── identity/
│   ├── management/
│   └── sandbox/
├── backend.tf                     # Remote state in Azure
├── providers.tf
├── variables.tf
├── terraform.tfvars.example       # Never commit real values
├── versions.tf
└── README.md                      # This is your LinkedIn essay
