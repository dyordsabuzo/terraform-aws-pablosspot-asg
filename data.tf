data "aws_ami" "ami" {
  most_recent = true
  owners      = ["amazon", "self"]

  filter {
    name   = "name"
    values = ["amzn2-ami-ecs-hvm-*-x86_64-ebs"]
  }
}

data "aws_iam_policy_document" "assume_policy" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      identifiers = ["ec2.amazonaws.com"]
      type        = "Service"
    }
  }
}


data "aws_availability_zones" "zones" {
  state = "available"
}
