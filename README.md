# DevOps Resume Terraform & Static Site

> **Forked and extended from** [N4si/simple-terraform-project](https://github.com/N4si/simple-terraform-project)  
> **Enhancements:**  
> - מודולריזציה מלאה בתיקייה `terraform/`  
> - Terraform _init לפרונט־אנד ותשתית (S3 + DynamoDB) בתיקייה `terraform_init/`  
> - CI/CD עם GitHub Actions (`.github/workflows/deploy.yml`)  
> - תאימות HTTPS דרך CloudFront  
> - **New!** Contact form backend עם Flask + MongoDB (סעיף נפרד בבראנץ’ `contact-form`)

---

## 📺 Live Demos

- **Static Site on CloudFront (HTTPS):**  
  https://d1whbbab1ytdwh.cloudfront.net/  
- **GitHub Pages (חלופה):**  
  https://shimon066536.github.io/devops-resume-terraform/

---

## 📁 Structure

'''
/ ├── terraform_init/ # init backend (S3 + DynamoDB) ├── terraform/ # main IaC modules ├── static-site/ # האתר הסטטי שלך (HTML, CSS, JS, assets) │ └── …
├── flask-backend/ # בראנצ’ contact-form בלבד: Flask + MongoDB
│ └── app.py, requirements.txt, Dockerfile ├── .github/workflows/
│ └── deploy.yml # CI/CD ל־static site ├── docs/ # לתצוגה ב-GitHub Pages
│ └── index.html, css/, images/ ├── README.md └── .gitignore
'''

---

## 2. GitHub Pages: שני נתיבים

1. **docs/ folder on `main`**  
   - העתק את התיקייה `static-site/` אל `docs/` עם קובץ `index.html` בראש (`docs/index.html`).  
   - ב־Settings → Pages בחר:
     - Source: **main branch** → **/docs folder**  
   - GitHub יפרסם את האתר ב־`https://<username>.github.io/devops-resume-terraform/`.

2. **gh-pages branch**  
   - צרו בראנצ’ חדש `gh-pages` עם התוכן הסטטי (build artifacts).  
     ```bash
     git checkout main
     git subtree split --prefix static-site -b gh-pages
     git push -u origin gh-pages
     ```
   - ב־Settings → Pages → Source: **gh-pages branch**.

> אם אתה משתמש ב-CloudFront + S3 כדי לפרסם, אין לך צורך אמיתי ב-Pages — אבל Pages נח למקרה חינמי ולפיתוח מהיר.

---

## 3. HTTPS ו-CloudFront

- כבר הגדרת Distribution עם Origin = S3 bucket של האתר הסטטי.  
- **דומיין מותאם אישית**:  
  - בקונסול Route53 הפנה CNAME (או A-alias) ל-CloudFront distribution.  
  - ב־CF תחת **Alternate domain names (CNAMEs)** הוסף את השם (לדוגמה `resume.yoursite.com`).  
  - CF ינפיק לך תעודת TLS אוטומטית ב־“Custom SSL Certificate” (via ACM).

---

## 4. מתן קרדיט לפרויקט המקורי

ב־README, בראש, כתוב:

> **Forked and extended from** [N4si/simple-terraform-project](https://github.com/N4si/simple-terraform-project)

כך ברור שזה הבסיס, ואתה ציין את התרומה שלך אחר כך.

---

## 5. הוספת בראנצ’ נפרד ל־Flask + MongoDB

1. **צור את בראנצ’**  
   ```bash
   git fetch
   git checkout -b contact-form main
