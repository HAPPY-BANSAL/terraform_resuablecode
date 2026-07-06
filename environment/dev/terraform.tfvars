rgs = {
    rg1= {
        name = "rg-prod"
        location = "centralindia"
    }
}

stgs = {
    stg1= {
        name = "niliparikalipari"
        resource_group_name = "rg-prod"
        location = "centralindia"
        account_tier = "Standard"
        account_replication_type = "LRS"
        }
}

vnets = {
    vnet1 = {
        name = "network1"
        location = "centralindia"
        resource_group_name = "rg-prod"
        address_space = ["10.0.0.0/16"]
    }
    vnet2 = {
         name = "network2"
        location = "centralindia"
        resource_group_name = "rg-prod"
        address_space = ["10.143.0.0/16"]
    }
}

subnets = {
    subnet1 = {
        name= "frontend"
        resource_group_name = "rg-prod"
        virtual_network_name = "network1"
        address_prefixes = ["10.0.1.0/24"]
    }
    subnet2 = {
         name= "backend"
        resource_group_name = "rg-prod"
        virtual_network_name = "network1"
        address_prefixes = ["10.0.2.0/24"]
    }
    subnet3 = {
         name= "database"
        resource_group_name = "rg-prod"
        virtual_network_name = "network1"
        address_prefixes = ["10.0.3.0/24"]
    }

}
