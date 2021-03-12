resource "fortios_firewall_policy" "accept-lan-to-ict-college-2" {
  name       = "Allow LAN to ICT-College 2"
  action     = "accept"
  policyid   = 204
  schedule   = "always"
  logtraffic = "utm"
  nat        = "disable"
  comments   = "Allow all traffic going from LAN to ICT-College 2"

  srcintf {
    name = "Z-LAN"
  }

  srcaddr {
    name = "all"
  }

  dstintf {
    name = "ICT-College 2"
  }

  dstaddr {
    name = "all"
  }

  service {
    name = "ALL"
  }
}