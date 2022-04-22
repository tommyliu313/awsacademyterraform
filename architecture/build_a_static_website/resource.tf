resource "aws_s3_bucket" "website-123"{
 bucket = "website123"
  tags = {
   Department = "Marketing"
  }
  website {
    error_document = "error.html"
  }
}

resource "aws_s3_bucket_website_configuration" ""{
  bucket = aws_s3_bucket.website-123.bucket
  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_bucket_object"