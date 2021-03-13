module "firewall-policies" {
    source = "./firewall-policies"
}

module "firewall-addresses" {
    source = "./firewall-addresses"
}
module "firewall-multicast-policies" {
    source = "./firewall-multicast-policies"
}