resource "aws_launch_template" "ec2lauchtemplate" {
  name                   = "ec2-instance-launch-template"
  update_default_version = true
  image_id               = data.aws_ami.amazon-linux-2.image_id
  instance_type          = var.instancetype
  vpc_security_group_ids = [aws_security_group.kubeec2instancesg.id]
  key_name               = var.keyname
  user_data              = filebase64("./user_data.sh")
  tags = {
    "Name"  = "Launch template new version to launch ec2 instances in autoscaling group."
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      Name = "launch Web Server"
    }
  }
}
