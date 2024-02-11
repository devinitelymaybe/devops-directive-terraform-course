# create s3
resource "aws_s3_bucket" "rmtfstate34654353" {
    bucket = "rmtfstate34654353"
    versioning {
        enabled = true
    }
    server_side_encryption_by_default {
        sse_algorithm = "AES256"
    }
}

# create dynamodb
resource "aws_dynamo_db_table" "statelock" {
    name = "statelock"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"

    attribute {
        name = "LockID"
        type = "S"
    }
}