
module "ec2" {
  source           = "../ec2"
  for_each         = var.shaik_loop
  ami              = each.value.ami
  instance_type    = each.value.instance_type
  volume_type      = each.value.volume_type
  volume_size      = each.value.volume_size
  instance_tenancy = each.value.instance_tenancy
  cidr_block       = each.value.cidr_block
  cidr_block2      = each.value.cidr_block2
  sg_name          = each.value.sg_name
  from_port        = each.value.from_port
  to_port          = each.value.to_port
  protocol         = each.value.protocol
  cidr_block3      = each.value.cidr_block3
  from_port1       = each.value.from_port1
  to_port1         = each.value.to_port1
  protocol1        = each.value.protocol1
  cidr_block4      = each.value.cidr_block4
  tagname          = each.value.tagname
}




# module "s3" {
# source       = "../s3"
# for_each = var.shaik_loop2
# tags3        = each.value.tags3
# bucket       = each.value.bucket
# acl          = each.value.acl
# name         = var.name
# sid          = var.sid
# }
