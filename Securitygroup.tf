resource "aws_security_group" "kubeec2instancesg" {
  name        = "kubeec2instancesg"
  description = "Security group for kubernetes ec2 instances."
  vpc_id      = var.vpcid

  tags = {
    Name = "kubernetes ec2instancesg"
  }
}
