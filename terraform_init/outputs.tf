output "websiteendpoint" {
  value = aws_s3_bucket.mybucket.website_endpoint
}

output "bucket_name" {
  value = aws_s3_bucket.mybucket.bucket
}
