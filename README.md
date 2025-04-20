# 🌐 DevOps Resume Terraform Project

> **Forked and enhanced from the great starter by [N4si](https://github.com/N4si/simple-terraform-project)**  
> This version extends the original idea with modular structure, environment separation, and full CI/CD integration via GitHub Actions.

---

## 🚀 Overview

This project demonstrates real-world **Infrastructure as Code (IaC)** using **Terraform** and AWS, aimed to deploy a fully functional static website for a **DevOps Resume Portfolio**, including:

- 🏗️ Infrastructure setup using Terraform (S3, DynamoDB, IAM, etc.)
- 📂 Modular & environment-ready structure
- 📦 GitHub Actions CI/CD pipeline for auto-deploy
- 📸 Profile image hosting on S3
- 💼 Resume deployment with custom styling

---


📁 Project Structure

.

├── Terraform_init/        # Initial backend creation (S3 + DynamoDB)<br>
├── terraform/             # Main Terraform configurations<br>
│   ├── s3_bucket.tf<br>
│   ├── variables.tf<br>
│   └── outputs.tf<br>
├── .github/<br>
│   └── workflows/<br>
│       └── terraform.yml  # GitHub Actions CI for auto-deploy<br>
├── resume-site/           # HTML/CSS resume files<br>
│   └── index.html<br>
├── .gitignore<br>
└── README.md

```
## 📁 Project Structure

. 
├── Terraform_init/    # Initial backend creation (S3 + DynamoDB)
│   ├── variables.tf 
│   └── outputs.tf
├── terraform/         # Main Terraform configurations 
│   ├── s3_bucket.tf 
│   └── variables.tf 
├── .github/ 
│   └── workflows/ 
│   └── terraform.yml  # GitHub Actions CI for auto-deploy 
├── resume-site/       # HTML/CSS resume files 
│   ├── css/ 
│   │   └── style.css 
│   ├── images/ 
│   │   └── profile.jpg 
│   ├── index.html     # Main resume version 
│   ├── index_v2.html  # Alternate/responsive version 
│   └── error.html     # Custom 404 page
├── .gitignore 
└── README.md

yaml
Copy
Edit
```
---

## 🛠️ Technologies

| Tool        | Purpose                        |
|-------------|--------------------------------|
| Terraform   | Infrastructure as Code         |
| AWS S3      | Static website hosting         |
| DynamoDB    | State locking for Terraform    |
| GitHub Actions | CI/CD workflow for deployment |
| HTML/CSS    | Frontend for resume portfolio  |

---

## 🔄 CI/CD Flow

Using GitHub Actions (`terraform.yml`) to:
- Run `terraform init`, `validate`, `apply`
- Sync HTML resume files to S3
- Automatically deploy on push to `main`

---

## 🧪 How to Use

```bash
cd Terraform_init/
terraform init
terraform apply   # Only once to create backend

cd ../terraform/
terraform init
terraform plan
terraform apply


To deploy a new version of your resume site:

git add .
git commit -m "Update resume"
git push


CI/CD will handle the deployment 🎉

📸 Live Demo
Check it out live:
➡️ your-bucket-name.s3-website-<region>.amazonaws.com
(replace with your actual URL)

🧠 Credits
Based on N4si's Terraform starter

Extended by Shimon066536

📌 Notes
This project is built for learning and showcasing DevOps skills

Follow best practices: use separate environments and secure credentials

All infrastructure defined in Terraform, no manual AWS setup

📮 Contact
For feedback or questions, feel free to open an issue or connect on LinkedIn

yaml
Copy
Edit

---
