resource "aws_security_group_rule" "instancehttprule" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = -1
  cidr_blocks       = [var.myipaddress]
  security_group_id = aws_security_group.kubeec2instancesg.id
  }

resource "aws_security_group_rule" "vpcsshrule" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = -1
  cidr_blocks       = [var.vpccidr]
  security_group_id = aws_security_group.kubeec2instancesg.id
}

resource "aws_security_group_rule" "jenkinssgrule" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = -1
  security_group_id = aws_security_group.kubeec2instancesg.id
  source_security_group_id = data.terraform_remote_state.jenkinsinstancesg.outputs.jenkinsecuritygroupid
}

resource "aws_security_group_rule" "loadbalancersgrule" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = -1
  security_group_id = aws_security_group.kubeec2instancesg.id
  source_security_group_id = data.terraform_remote_state.loadbalancersg.outputs.loadbalancersg
}
