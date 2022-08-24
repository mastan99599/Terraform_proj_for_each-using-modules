variable "tags3" {
  type = map(any)

}

variable "bucket" {
  type = string

}

variable "acl" {
  type = string
}

variable "versioning" {
  type        = bool
  default     = true
}


variable "name" {
  type = string

}


variable "sid" {
  type = string
}