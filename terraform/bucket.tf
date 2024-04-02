# create bucket
resource "aws_s3_bucket" "lambda_bucket" {
  bucket = var.bucketName
}

# block public access to the bucket
resource "aws_s3_bucket_public_access_block" "lambda_bucket" {
  bucket = aws_s3_bucket.lambda_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# zip the lambda code
data "archive_file" "lambda_file" {
  type        = var.zipFile
  source_dir  = var.sourceDirectory
  output_path = var.appOutputPath
}

# create the object with the zip code
resource "aws_s3_object" "lambda_item" {
  bucket = aws_s3_bucket.lambda_bucket.bucket
  key    = var.codeObjectkey
  source = data.archive_file.lambda_file.output_path
}