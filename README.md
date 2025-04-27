# 🚀 DevOps Resume Terraform & Static Site

> **Forked and extended from** [N4si/simple-terraform-project](https://github.com/N4si/simple-terraform-project)  
> **Key Enhancements:**  
> - Full modular Terraform (see `terraform/` and `terraform_init/`)  
> - CI/CD via GitHub Actions (`.github/workflows/deploy.yml`)  
> - HTTPS delivery with AWS CloudFront  
> - **New!** Contact form backend (Flask + MongoDB) in a separate branch

---

## 🚀 Overview

This project demonstrates real-world **Infrastructure as Code (IaC)** using **Terraform** and AWS, aimed to deploy a fully functional static website for a **DevOps Resume Portfolio**, including:

- 🏗️ Infrastructure setup using Terraform (S3, DynamoDB, IAM, etc.)
- 📂 Modular & environment-ready structure
- 📦 GitHub Actions CI/CD pipeline for auto-deploy
- 📸 Profile image hosting on S3
- 💼 Resume deployment with custom styling

---

---

## 🔗 Live Demos

- **Static Site (CloudFront, HTTPS):**  
  https://d1whbbab1ytdwh.cloudfront.net/  


---

## 📁 Project Structure


```text
/
├── terraform_init/        # Initial backend setup (S3 + DynamoDB)
├── terraform/             # Main IaC modules (bucket, IAM, etc.)
├── static-site/           # Front-end: HTML, CSS, JS, assets
│   ├── css/
│   ├── images/
│   └── index.html
├── flask-backend/         # (branch: contact-form) Flask + MongoDB API
│   ├── app.py
│   ├── requirements.txt
│   └── Dockerfile
├── .github/
│   └── workflows/
│       └── deploy.yml     # CI/CD for S3 sync
├── README.md
└── .gitignore
```

---
## 🛠️ Technologies & Tools

|   Category    |            Technologies                |
|---------------|----------------------------------------|
| Infrastructure| Terraform, AWS S3, DynamoDB (state lock)
|    CI/CD      | GitHub Actions                         |
|  Front-End    | HTML5, CSS3 (or Tailwind CSS)          |
|   Back-End    | Python Flask, MongoDB                  |
|   Delivery    | AWS CloudFront, (optionally GitHub Pages)
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
```

CI/CD will handle the deployment 🎉

Check it out live:
➡️ your-bucket-name.s3-website-<region>.amazonaws.com
(replace with your actual URL)


📌 Notes
This project is built for learning and showcasing DevOps skills

Follow best practices: use separate environments and secure credentials

All infrastructure defined in Terraform, no manual AWS setup

📮 Contact
For feedback or questions, feel free to open an issue or connect on LinkedIn


