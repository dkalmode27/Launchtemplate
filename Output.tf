output "launchtemplateid" {
  description = "launchconfig id to be referred in autoscaling group"
  value = aws_launch_template.ec2lauchtemplate.id
}

output "latestversion" {
  description = "launchconfig id to be referred in autoscaling group"
  value = aws_launch_template.ec2lauchtemplate.latest_version
}

output "instance_type" {
  description = "launchconfig instance id"
  value = aws_launch_template.ec2lauchtemplate.instance_type
}

output "kubeec2instancesg" {
  description = "kubernetes ec2 instance security group"
  value       = aws_security_group.kubeec2instancesg.id
}
