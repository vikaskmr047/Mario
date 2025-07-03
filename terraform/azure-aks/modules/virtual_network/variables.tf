variable "virtual_network_name" {
  description = "Name of virtual Network"
}

variable "virtual_network_addressspace" {
  description = "Address space range"
}

variable "resource_group_name" {
  
}

variable "location" {

}


variable "subnets" {
  description = "Map of subnet names and their address prefixes"
  type        = map(string)
  default = {
    "subnet1" = "10.0.1.0/24",
    "subnet2" = "10.0.2.0/24"
    # "subnet3" = "10.0.3.0/24",
    # "subnet4" = "10.0.4.0/24"
  }
}
