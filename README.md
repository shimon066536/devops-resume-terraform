# 🚀 DevOps Resume Terraform & Static Site

> **Forked and extended from** [N4si/simple-terraform-project](https://github.com/N4si/simple-terraform-project)  
> **Key Enhancements:**  
> - Full modular Terraform (see `terraform/` and `terraform_init/`)  
> - CI/CD via GitHub Actions (`.github/workflows/deploy.yml`)  
> - HTTPS delivery with AWS CloudFront  
> - **New!** Contact form backend (Flask + MongoDB) in a separate branch

---

## 🔗 Live Demos

- **Static Site (CloudFront, HTTPS):**  
  https://d1whbbab1ytdwh.cloudfront.net/  
- **GitHub Pages (fallback):**  
  https://shimon066536.github.io/devops-resume-terraform/

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
├── docs/                  # GitHub Pages source (`/docs` → Pages)
│   └── index.html
├── README.md
└── .gitignore
text```





🛠️ Technologies & Tools

Category | Technologies
Infrastructure | Terraform, AWS S3, DynamoDB (state lock)
CI/CD | GitHub Actions
Front-End | HTML5, CSS3 (or Tailwind CSS)
Back-End | Python Flask, MongoDB
Delivery | AWS CloudFront, (optionally GitHub Pages)





⚡ Quick Start
1. Bootstrap your backend (one-time):

cd terraform_init/
terraform init
terraform apply







2. Deploy core infra:

cd ../terraform/
terraform init
terraform plan
terraform apply






3. Push static site:

- On any change to static-site/, your GitHub Actions workflow will auto-sync to S3.





