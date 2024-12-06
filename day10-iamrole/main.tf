resource "aws_iam_role" "iampratice" {
  name               = "iam-practice-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF
}

#attach a managed policy to the role
resource "aws_iam_role_policy_attachment" "eaxample" {
    role = aws_iam_role.iampratice.name
    policy_arn  = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  
} 

