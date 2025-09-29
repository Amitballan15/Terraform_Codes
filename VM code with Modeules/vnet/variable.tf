variable "vnet_ka_naam" {
    description ="Name of the virtal network"
  type = string
}

variable "vnet_ki_location" {
description = "type the location of the vnet"
type = string
}

variable "rg_ka_naam" {
  description = "Please enter the Rg Name"
type = string
}

variable "address_space" {
  description = "enter the address range"
type = list(string)
}