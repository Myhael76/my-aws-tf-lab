module "vpc" {
  # checkov:skip=CKV_TF_1: It's just a spike...
  source = "cloudposse/vpc/aws"
  # Cloud Posse recommends pinning every module to a specific version
  # version = "x.x.x"
  namespace = "my-spikes"
  stage     = "test"
  name      = "mi-spike-01"

  ipv4_primary_cidr_block = "10.0.0.0/16"

  assign_generated_ipv6_cidr_block = true
  additional_tag_map = merge(var.spike_tags, {"Name"="Central VPC", "OtherTag"="something"})
}

# module "subnets" {
#   source = "cloudposse/dynamic-subnets/aws"
#   # Cloud Posse recommends pinning every module to a specific version
#   # version = "x.x.x"

#   availability_zones   = ["us-east-1a", "us-east-1b", "us-east-1c"]
#   namespace            = "my-spikes"
#   stage                = "test"
#   name                 = "mi-spike-01"
#   vpc_id               = module.vpc.vpc_id
#   igw_id               = module.vpc.igw_id
#   ipv4_cidr_block      = module.vpc.vpc_cidr_block
#   nat_gateway_enabled  = true
#   nat_instance_enabled = false
# }
