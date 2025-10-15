# Terraform Azure DevOps Multi-Environment Setup

This project demonstrates how to use Terraform with Azure DevOps to deploy infrastructure across **DEV**, **UAT**, and **PROD** environments.

## 🧩 Folder Structure
```
terraform-azure-project/
├── main.tf
├── variables.tf
├── outputs.tf
├── azure-pipelines.yml
└── env/
    ├── dev.tfvars
    ├── uat.tfvars
    └── prod.tfvars
```

## 🚀 Steps
1. Push to GitHub.
2. Create an Azure DevOps pipeline linked to this repo.
3. Use the provided `azure-pipelines.yml` for CI/CD.
4. Deploys automatically to DEV → UAT → PROD.

## ✅ Terraform Command (Local Test)
```
terraform init
terraform plan -var-file="env/dev.tfvars"
terraform apply -var-file="env/dev.tfvars"
```
