output "launchtemplateid" {
  description = "launchconfig id to be referred in autoscaling group"
  value = aws_launch_template.ec2lauchtemplate.id
}

output "latestversion" {
  description = "launchconfig id to be referred in autoscaling group"
  value = aws_launch_template.ec2lauchtemplate.latest_version
}