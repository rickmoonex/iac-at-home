resource "fortios_firewall_multicastpolicy" "allow-lan-to-iot-cast" {
  action     = "accept"
  dstintf    = "Z-IoT"
  fosid      = 201
  logtraffic = "enable"
  protocol   = 0
  snat       = "enable"
  srcintf    = "Z-LAN"
  status     = "disable"

  dstaddr {
    name = "M-Google-Cast"
  }

  srcaddr {
    name = "all"
  }
}