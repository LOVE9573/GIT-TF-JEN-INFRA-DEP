resource "aws_s3_bucket" "mybucket" {
  bucket = "akki9573"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}