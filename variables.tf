variable "resource_group_name" {
  description = "Name of the resource group"
  default     = "rg-vnet-lab"
}

variable "location" {
  description = "Azure region"
  default     = "East US"
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  default     = "vnet-lab"
}

variable "vnet_address_space" {
  default = ["10.0.0.0/16"]
}

variable "subnets" {
  type = map(object({
    name       = string
    cidr_block = string
  }))
  default = {
    web = {
      name       = "subnet-web"
      cidr_block = "10.0.1.0/24"
    },
    app = {
      name       = "subnet-app"
      cidr_block = "10.0.2.0/24"
    },
    db = {
      name       = "subnet-db"
      cidr_block = "10.0.3.0/24"
    }
  }
}

