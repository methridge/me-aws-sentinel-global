module "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-guides/master/governance/third-generation/aws/aws-functions/aws-functions.sentinel"
}

policy "enforce-mandatory-tags" {
  source            = "./enforce-mandatory-tags.sentinel"
  enforcement_level = "advisory"
}

policy "require-most-recent-AMI-version" {
  source            = "./require-most-recent-AMI-version.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-ami-owners" {
  source            = "./restrict-ami-owners.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-assumed-roles-by-workspace" {
  source            = "./restrict-assumed-roles-by-workspace.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-assumed-roles" {
  source            = "./restrict-assumed-roles.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-availability-zones" {
  source            = "./restrict-availability-zones.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-current-ec2-instance-type" {
  source            = "./restrict-current-ec2-instance-type.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-db-instance-engines" {
  source            = "./restrict-db-instance-engines.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-ec2-instance-type" {
  source            = "./restrict-ec2-instance-type.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-iam-policy-actions" {
  source            = "./restrict-iam-policy-actions.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-ingress-sg-rule-cidr-blocks" {
  source            = "./restrict-ingress-sg-rule-cidr-blocks.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-ingress-sg-rule-rdp" {
  source            = "./restrict-ingress-sg-rule-rdp.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-ingress-sg-rule-ssh" {
  source            = "./restrict-ingress-sg-rule-ssh.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-s3-bucket-policies" {
  source            = "./restrict-s3-bucket-policies.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-subnet-of-ec2-instances" {
  source            = "./restrict-subnet-of-ec2-instances.sentinel"
  enforcement_level = "advisory"
}

policy "validate-providers-from-desired-regions" {
  source            = "./validate-providers-from-desired-regions.sentinel"
  enforcement_level = "advisory"
}
