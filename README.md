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


---


---

## 3. HTTPS via AWS CloudFront

- **CloudFront Distribution**  
  You already have a CloudFront distribution pointing at your S3 bucket as its origin.

- **Custom Domain Setup**  
  1. In **Route 53**, create either an A-alias or CNAME record from your custom domain (e.g. `resume.yoursite.com`) to your CloudFront distribution’s domain name.  
  2. In the CloudFront console, under **General → Alternate Domain Names (CNAMEs)**, add your custom domain.  
  3. In **AWS Certificate Manager** (in us-east-1), request or import a TLS certificate covering your domain and attach it to the distribution under **Custom SSL Certificate**.

- As soon as DNS propagates, your site will be available securely at your custom URL.

---


---

2. **Add your backend code** under a new folder, e.g. `flask-backend/`:
   ```
   flask-backend/
   ├── app.py             # Flask application
   ├── requirements.txt   # Python dependencies
   └── Dockerfile         # Container setup (optional)
   ```
3. **Commit and push** that branch:
   ```bash
   git add flask-backend
   git commit -m "Add contact-form backend (Flask + MongoDB)"
   git push -u origin contact-form
   ```
4. **Open a Pull Request** on GitHub from `contact-form` into `main` when you’re ready to merge.  

> 🔧 _Optional:_ You can also create a GitHub Actions workflow (e.g. `.github/workflows/contact-backend.yml`) to build your Docker image and deploy the Flask service to your preferred host (ECS, Heroku, etc.).

---
