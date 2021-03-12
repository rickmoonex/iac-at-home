resource "fortios_system_global" "system-globals" {
  alias                = "FG01"
  hostname             = "FG01"
  timezone             = "26"
  gui_display_hostname = "enable"
  gui_theme            = "red"
}