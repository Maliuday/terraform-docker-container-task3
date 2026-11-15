
# Infrastructure as Code (IaC) with Terraform and Docker

## Project Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform and Docker.

Terraform is used to download an NGINX Docker image and provision a local Docker container automatically.

## Objective

To provision and manage a local Docker container using Terraform configuration.

## Tools and Technologies

- Terraform
- Docker Desktop
- Docker Provider
- NGINX
- Windows 11
- VS Code

## Infrastructure Configuration

| Resource | Configuration |
|---|---|
| Provider | kreuzwerker/docker |
| Docker Image | nginx:latest |
| Container Name | uday-terraform-nginx |
| Internal Port | 80 |
| External Port | 8080 |

## Project Structure

```text
terraform-docker-container-task3/
├── main.tf
├── README.md
├── .gitignore
├── .terraform.lock.hcl
└── logs/
    └── terraform-session.txt
```

## Prerequisites

- Docker Desktop installed and running.
- Terraform CLI installed.
- Git installed.

Verify installations:

```powershell
docker --version
terraform -version
```

## Terraform Execution Steps

### 1. Initialize Terraform

```powershell
terraform init
```

Initializes the working directory and downloads the Docker provider.

### 2. Format and Validate

```powershell
terraform fmt
terraform validate
```

### 3. Preview Infrastructure

```powershell
terraform plan
```

Displays the resources Terraform intends to create.

### 4. Provision Infrastructure

```powershell
terraform apply
```

Type `yes` to confirm the creation of the Docker image and container.

### 5. Verify Container

```powershell
docker ps
```

Open the application in your browser:

http://localhost:8080

### 6. Inspect Terraform State

```powershell
terraform state list
terraform state show docker_container.nginx_container
terraform show
```

### 7. Destroy Infrastructure

```powershell
terraform destroy
```

Type `yes` to remove the Terraform-managed resources.

## Terraform Concepts Learned

- Infrastructure as Code (IaC)
- Terraform providers
- Terraform resources
- Terraform initialization
- Terraform plan and apply
- Terraform state management
- Resource dependencies
- Infrastructure destruction

## Execution Evidence

Actual Terraform command outputs and screenshots are stored in the `logs/` directory.

## Original Project Reference

Starting repository:

https://github.com/sridhar-5656/-Infrastructure-as-Code-IaC-with-Terraform

The original repository was used as a learning reference. Its AWS-based configuration has been replaced with a local Docker implementation for this task.

## Conclusion

This project demonstrates how Terraform can automate local Docker infrastructure provisioning and management using Infrastructure as Code.
