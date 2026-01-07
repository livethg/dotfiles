{
  ...
}:

''
[General]
frontend    = widgetsboxmodel
memoryDecay = 0.7
telemetry   = false

[application]
enabled = true

[applications]
enabled = true
fuzzy   = true

[bluetooth]
enabled = true
fuzzy   = true

[caffeine]
enabled = false

[calculator_qalculate]
enabled                   = true
functions_in_global_query = true
units_in_global_query     = true

[clipboard]
enabled    = false
persistent = true

[datetime]
enabled = true
trigger = "dt "

[debug]
enabled = false

[docs]
enabled = false
fuzzy   = true

[files]
enabled                          = true
fs_browsers_match_case_sensitive = false
fuzzy                            = true
index_file_path                  = true
paths                            = @Invalid()

[github]
enabled = true

[hash]
enabled = true

[mediaremote]
enabled = true
trigger = "media "

[path]
enabled = true

[python]
enabled = true

[python.arch_wiki]
enabled = true

[python.docker]
enabled = true
trigger = "docker "

[python.duckduckgo]
enabled = false

[python.emoji]
enabled = true
fuzzy   = true

[python.goldendict]
enabled = false

[python.kill]
enabled = true

[python.python_eval]
enabled = true

[python.tex_to_unicode]
enabled = true

[python.translators]
enabled    = true
translator = yandex

[python.unit_converter]
enabled = true

[python.virtualbox]
enabled = false

[python.x_window_switcher]
enabled = false

[snippets]
enabled = true

[ssh]
enabled = true

[system]
command_lock     = sleep 0.1 && hyprlock
command_poweroff = systemctl poweroff
command_reboot   = systemctl reboot
enabled          = true
trigger          = "sys "

[timer]
enabled = true

[timezones]
enabled = false

[triggers]
fuzzy   = true
trigger = "trig "

[urlhandler]
enabled = true
trigger = "url "

[vpn]
enabled = true
fuzzy   = true

[websearch]
enabled = true
trigger = "web "

[widgetsboxmodel]
alwaysOnTop     = true
clearOnHide     = true
clientShadow    = false
displayScrollbar= false
followCursor    = true
hideOnFocusLoss = true
historySearch   = true
itemCount       = 6
lightTheme      = Default
quitOnClose     = false
showCentered    = true
systemShadow    = true

[widgetsboxmodel-ng]
alwaysOnTop      = true
clearOnHide      = true
displayScrollbar = false
followCursor     = true
hideOnFocusLoss  = true
historySearch    = true
itemCount        = 5
lightTheme       = Nord Dark
showCentered     = true
''
