provider "aws" {
    TF_VAR_AWS_ACCESS_KEY_ID     = credentials('aws_access_key_id')  
    TF_VAR_AWS_SECRET_ACCESS_KEY = credentials('aws_secret_access_key')
    region                       = "us-east-1"
}
