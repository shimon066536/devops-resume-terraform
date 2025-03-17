resource "aws_s3_bucket" "mybucket" {
  bucket = "devops-resume-${var.name}-${random_id.bucket_suffix.hex}"
  
  tags = {
    Name        = "DevOps Resume Bucket"
    Environment = "Dev"
  }
}

resource "random_id" "bucket_suffix" {
  byte_length = 4
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.mybucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.example,
    aws_s3_bucket_public_access_block.example,
  ]

  bucket = aws_s3_bucket.mybucket.id
  acl    = "public-read"
}

resource "aws_s3_bucket_policy" "example" {
  bucket = aws_s3_bucket.mybucket.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource  = "${aws_s3_bucket.mybucket.arn}/*"
      }
    ]
  })
}

resource "local_file" "index_html" {
  content  = templatefile("${path.module}/index.html.tpl", {
    profile_picture_url = "https://${aws_s3_bucket.mybucket.bucket}.s3.amazonaws.com/profile.png"
  })
  filename = "${path.module}/index.html"
  file_permission = "0644"
}

resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.mybucket.id
  key          = "index.html"
  source       = local_file.index_html.filename
  acl          = "public-read"
  content_type = "text/html"

  source_hash  = filebase64sha256(local_file.index_html.filename)
  depends_on   = [local_file.index_html]
}

resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.mybucket.id
  key = "error.html"
  source = "error.html"
  acl = "public-read"
  content_type = "text/html"

  source_hash = filebase64sha256("error.html")
}

resource "aws_s3_object" "profile" {
  bucket = aws_s3_bucket.mybucket.id
  key = "profile.png"
  source = "profile.png"
  acl = "public-read"
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.mybucket.id
  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

  depends_on = [ aws_s3_bucket_acl.example ]
}