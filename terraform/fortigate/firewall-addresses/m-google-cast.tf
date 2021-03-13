resource "fortios_firewall_multicastaddress" "m-google-cast" {
  name       = "M-Google-Cast"
  start_ip   = "239.255.255.250"
  end_ip     = "239.255.255.250"
  type       = "multicastrange"
  visibility = "enable"
}