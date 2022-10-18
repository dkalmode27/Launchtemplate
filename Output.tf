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

output "image_id" {
  description = "launchconfig instance id"
  value = aws_launch_template.ec2lauchtemplate.image_id
}