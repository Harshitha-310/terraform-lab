# Infrastructure as Code using Terraform – Software Lab

## Objective

The objective of this lab is to understand Infrastructure as Code (IaC) using Terraform.  
Infrastructure resources are created and managed using configuration files instead of manual setup.

This repository contains solutions for all assignments from Day 1 to Day 5 and the bonus challenge.

---

## Tools Used

- Terraform CLI
- Docker Desktop
- Git
- GitHub Actions (CI workflow)

---

## Repository Structure
terraform-lab/
│
├── day1/
├── day2/
├── day3/
├── day4/
├── day5/
├── screenshots/
└── README.md
## Day 1 – Introduction to Terraform

Created a local file using Terraform.

Commands used:


terraform init
terraform plan
terraform apply


Output:

Created file:


hello.txt


Concepts Learned:

- Terraform workflow
- Providers
- Variables
- Outputs

---

## Day 2 – Variables and Multiple Configurations

Used variables and environment-based configuration.

Files created:


dev.tfvars
prod.tfvars


Commands:


terraform apply -var-file="dev.tfvars"
terraform apply -var-file="prod.tfvars"


Concepts Learned:

- Input variables
- Variable files
- Environment switching

---

## Day 3 – Managing Containers using Terraform

Provisioned an nginx container using Docker provider.

Command:


terraform apply


Verified service:


http://localhost:8080


Concepts Learned:

- Docker provider
- Container provisioning
- Port mapping

---

## Day 4 – Terraform Modules

Created reusable module:


modules/nginx_container


Used module to create containers:


http://localhost:8081

http://localhost:8082


Concepts Learned:

- Modules
- Reusable infrastructure
- Modular configuration

---

## Day 5 – CI Automation using GitHub Actions

Created workflow:


.github/workflows/terraform-check.yml


Workflow automatically runs:


terraform fmt


Concepts Learned:

- CI workflow automation
- Infrastructure validation
- Code formatting checks

---

## Bonus Challenge – Dynamic Infrastructure Creation

Used Terraform expressions and `for_each` loop to dynamically create multiple containers.

Configuration:


web1 → 8081
web2 → 8082
web3 → 8083


Verified services:


http://localhost:8081

http://localhost:8082

http://localhost:8083


Output variable generated:


container_urls


Concepts Learned:

- for_each loop
- Dynamic infrastructure
- Module reuse

---

## Screenshots

Screenshots are available inside:


screenshots/


These include:

- Terraform apply outputs
- Running containers
- Browser verification
- GitHub Actions workflow success

---

## Conclusion

This lab demonstrated how Terraform can be used to create, manage, modularize, and validate infrastructure using Infrastructure as Code principles.
