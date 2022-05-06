resource "aws_s3_bucket" "website-123"{
 bucket = "website123"
 region = var.region
  tags = {
   Department = "Marketing"
  }
  website {
    error_document = "error.html"
    index_document = "index.html"
  }
}

resource "aws_s3_bucket_website_configuration" ""{
  bucket = aws_s3_bucket.website-123.bucket
  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_bucket_object" "script"{
  bucket = aws_s3_bucket.website-123
  key = ""
  source = ""
}


resource "aws_s3_bucket_public_access_block" "publicaccess"{

  bucket = aws_s3_bucket.website-123
  block_public_acls = false
  block_public_policy = false
}