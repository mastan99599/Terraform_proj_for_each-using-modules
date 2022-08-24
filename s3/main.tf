
resource "aws_s3_bucket" "shaik3" {
  bucket     = var.bucket
  acl        = var.acl

  versioning {
    enabled  = var.versioning
  }
  tags       = var.tags3
}

resource "aws_s3_bucket_acl" "example" {
   bucket    = aws_s3_bucket.shaik3.id
  acl        = var.acl

}

module "policy-s3-full-access" {
  source     = "mineiros-io/iam-policy/aws"
  version    = "~> 0.5.0"

      # name of the policy
        name = var.name

  #   # construct the policy document granting access from the following statements
  policy_statements = [
    {
       sid      = var.sid

      effect    = "Allow"
      actions   = ["s3:*"]
      resources = ["*"]
    }
  ]
}

# resource "aws_s3_bucket_object" "uploadfile" {
#   bucket = "shaik88991"
#   key     = "hello.txt"
#   source = "C:/Users/shaik/Desktop/Test"
# etag = filemd5("C:/Users/shaik/Desktop/Test")
# }

