variable "pahla-subnet" {
  description = "Name of the subnet"
  type        = string
  
}
variable "rg_ka_naam" {
  description = "Name of the resource group"
  type        = string
  
}
variable "vnet_ka_naam" {
  description = "Name of the virtual network"
  type        = string
  
}
variable "address_space" {
  description = "Address space for the subnet"
  type        = list(string)
  
}