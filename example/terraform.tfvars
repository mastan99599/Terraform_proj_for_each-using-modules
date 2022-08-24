
shaik_loop= {
"shaik1" ={ "ami"       = "ami-068257025f72f470d",
"instance_type"         = "t2.micro",
"volume_type"           = "gp2",
"volume_size"           = "30",
"instance_tenancy"      = "default",
"cidr_block2"           = "10.0.0.0/16"
"cidr_block"            = "10.0.1.0/24"
"sg_name"               = "shaik_sg"
"from_port"             = 80
"to_port"               = 80
"protocol"              = "tcp"
"cidr_block3"           = ["0.0.0.0/0"]
"from_port1"            = 0
"to_port1"              = 0
"protocol1"             = "-1"
"cidr_block4"           = ["0.0.0.0/0"]
tagname      = {
  "Name"     = "shaikec2"
  "owner"    = "shaik1"
}
}



"shaik2" ={ "ami"       = "ami-068257025f72f470d",
"instance_type"         = "t2.micro",
"volume_type"           = "gp2",
"volume_size"           = "30",
"instance_tenancy"      = "default",
"cidr_block2"           = "10.0.0.0/16"
"cidr_block"            = "10.0.1.0/24"
"sg_name"               = "shaik_sg2"
"from_port"             = 80
"to_port"               = 80
"protocol"              = "tcp"
"cidr_block3"           = ["0.0.0.0/0"]
"from_port1"            = 0
"to_port1"              = 0
"protocol1"             = "-1"
"cidr_block4"           = ["0.0.0.0/0"]

tagname      = {
  "Name"     = "shaikec22"
  "owner"    = "shaik11" 
  }
}
}




#s3 bucket loop
# shaik_loop2={

# shaik2 = {
# bucket  = "shaikbuckettf"
# acl     = "private"
# tags3   = {
#   Name  = "shaikdemos3"
#   owner = "shaik"
# }
# }

# }

# name    = "shaikS3FullAccess"
# sid     = "shaikS3FullAccess"
