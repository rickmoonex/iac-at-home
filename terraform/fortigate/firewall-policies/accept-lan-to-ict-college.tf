resource "fortios_firewall_policy" "accept-lan-to-ict-college" {
  name       = "Accept / LAN to ICT-College"
  action     = "accept"
  policyid   = 203
  schedule   = "always"
  logtraffic = "utm"
  nat        = "disable"
  comments   = "Allow all traffic going from LAN to ICT-College"

  srcintf {
    name = "Z-LAN"
  }

  srcaddr {
    name = "all"
  }

  dstintf {
    name = "ICT-College"
  }

  dstaddr {
    name = "all"
  }

  service {
    name = "ALL"
  }
}