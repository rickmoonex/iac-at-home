resource "fortios_firewall_policy" "accept-lan-to-native" {
  name       = "Accept / LAN to Native"
  action     = "accept"
  policyid   = 202
  schedule   = "always"
  logtraffic = "utm"
  nat        = "disable"
  comments   = "Allow all traffic going from LAN to Native"

  srcintf {
    name = "Z-LAN"
  }

  srcaddr {
    name = "all"
  }

  dstintf {
    name = "internal"
  }

  dstaddr {
    name = "all"
  }

  service {
    name = "ALL"
  }
}