resource "aws_s3_bucket" "bucket1" {
  bucket        = "syed3088"
  force_destroy = true
  acl           = "public-read"
  policy        = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "MYBUCKETPOLICY",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:*",
      "Resource": "arn:aws:s3:::syed3088/*"
    }
  ]
}
POLICY

}

resource "aws_s3_bucket_object" "bucket1-object" {
depends_on = [ aws_s3_bucket.bucket1,]
bucket = aws_s3_bucket.bucket1.id
key    = "beach"
source = "C:/Users/syedabdulkhadar.b/OneDrive - HCL Technologies Ltd/Desktop/Pic/beach.jfif"
etag = "C:/Users/syedabdulkhadar.b/OneDrive - HCL Technologies Ltd/Desktop/Pic/beach.jfif"
acl = "public-read"
content_type = "beach.jfif"
}
locals {
s3_origin_id = "aws_s3_bucket.bucket1.id"
}