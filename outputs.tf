output "websiteendpoint" {
  value = aws_s3_bucket.mybucket.website_endpoint
}

output "bucket_name" {
  value = aws_s3_bucket.mybucket.bucket
}

output "profile_picture_url" {
  value = "https://devops-resume-shimon-1b4c1f44.s3.amazonaws.com/profile.png"
}
