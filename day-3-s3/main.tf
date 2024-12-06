resource "aws_s3_bucket" "ranjit" {
    bucket = "ranjit-bucket-sdfdf"

}
resource "aws_s3_object" "playing" {
    bucket = aws_s3_bucket.ranjit.bucket
    source = "./file22.txt"
    key = "file22.txt"
  
}
