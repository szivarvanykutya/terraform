 provider "aci" {
    username = "admin"
    password = "ciscopsdt"
    url      = "https://sandboxapicdc.cisco.com"
    insecure = true
}
# TENANTS
resource "aci_tenant" "TN-ANDRAS" {
    name        = "TN-ANDRAS"
    description = "tn-andras"
}
resource "aci_tenant" "TN-ANDRAS2" {
    name        = "TN-ANDRAS2"
    description = "tn-andras2"
}
# VRFS
resource "aci_vrf" "VRF-ANDRAS" {
    tenant_dn   = "${aci_tenant.TN-ANDRAS.id}"
    name        = "VRF-ANDRAS"
}
