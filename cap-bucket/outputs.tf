output "arn" {
  description = "ARN of the bucket"
  value       = aws_s3_bucket.mybucket.arn
}

output "name" {
  description = "Name (id) of the bucket"
  value       = aws_s3_bucket.mybucket.id
}
