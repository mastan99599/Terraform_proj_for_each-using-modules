variable "ami" {
  type = string

}

variable "instance_type" {
  type = string

}

variable "volume_type" {
  type = string

}


variable "volume_size" {
  type = number

}

variable "tagname" {
  type = map(any)

}



variable "cidr_block" {
  type = string

}

variable "instance_tenancy" {
  type = string
  
}
variable "cidr_block2" {
  type = string
}


variable "sg_name" {
  type = string
}



variable "from_port" {
  type = number
      
    }

variable "to_port" {
  type = number
      
    }

    
variable "protocol" {
  type = string
      
    }

variable "cidr_block3" {
  type = list(any)
  
}

variable "from_port1" {
  type =number
  
}


variable "to_port1" {
  type = number
  
}

variable "protocol1" {
  type = number
}

variable "cidr_block4" {
  type =list(any)
  
}


