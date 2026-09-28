variable "project_name" {
    type = string
    #default = ""
}

variable "environment" {
    type = string
    
}

variable "sgs" {
   
}

variable "vpc_id" {
  
}

#Tags
variable "common_tags" {
    default = {}
}

variable "sg_tags" {
    default = {}
}