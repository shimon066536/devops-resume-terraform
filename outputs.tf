output "websiteendpoint" {
  value = aws_s3_bucket.mybucket.website_endpoint
}

output "bucket_name" {
  value = aws_s3_bucket.mybucket.bucket
}

output "profile_picture_url" {
  value = "https://${aws_s3_bucket.mybucket.bucket}.s3.amazonaws.com/profile.png"
}