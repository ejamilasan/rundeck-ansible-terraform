resource "aws_iam_role" "rundeck_instance_role" {
  name = var.instance_profile_name

  assume_role_policy = file("${path.module}/policies/ec2-trust-policy.json")
}

resource "aws_iam_instance_profile" "rundeck_instance_profile" {
  name = var.instance_profile_name
  role = aws_iam_role.rundeck_instance_role.name
}

resource "aws_iam_policy_attachment" "ssm_policy_attachment" {
  name       = "ssm_policy_attachment"
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
  roles      = [aws_iam_role.rundeck_instance_role.name]
}