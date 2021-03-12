provider "fortios" {
  hostname = var.fortigate-hostname
  token    = var.fortigate-token
  insecure = "true"
}