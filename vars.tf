variable "vpc" {
    type = "map"
    default = {
        cidr = "10.10.0.0/16"
        subnet_dmz1_cidr = "10.10.10.0/24"
        subnet_dmz2_cidr = "10.10.12.0/24"
        subnet_app1_cidr = "10.10.30.0/24"
        subnet_app2_cidr = "10.10.32.0/24"
    }
}

variable "a_zones" {
    type = "map"
    default = {
        zone_a = "ap-northeast-1a"
        zone_c = "ap-northeast-1c"
    }
}
