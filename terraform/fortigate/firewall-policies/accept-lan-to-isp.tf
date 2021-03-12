resource "fortios_firewall_policy" "accept-lan-to-isp" {
  name       = "Allow LAN to ISP"
  action     = "accept"
  policyid   = 201
  schedule   = "always"
  logtraffic = "utm"
  nat        = "enable"
  comments   = "Allow all traffic going from LAN to ISP"

  srcintf {
    name = "Z-LAN"
  }

  srcaddr {
    name = "all"
  }

  dstintf {
    name = "KPN"
  }

  dstaddr {
    name = "all"
  }

  service {
    name = "ALL"
  }
}