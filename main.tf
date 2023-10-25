resource "aws_s3_bucket" "my-bucket" {
   bucket = "evil"
}

resource "aws_ebs_volume" "example02" {
  count             = 1
  size              = 14
  availability_zone = "us-east-1a"
  type              = "gp3"
  encrypted         = true
  tags = {
    Name = "HelloWorld 23"
  }
}