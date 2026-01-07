{
  colors,
  ...
}:

{
  home.file.".config/dunst/dunstrc".text = ''
    [global]
    monitor = 0
    follow  = none

    width   = 300
    height  = (0, 300)

    origin  = top-right
    offset  = (10, 10)
    scale   = 0

    notification_limit = 10
    progress_bar       = false

    separator_height = 2

    padding            = 8
    horizontal_padding = 8

    frame_width = 1
    frame_color = "#808080"
    gap_size    = 2

    sort = urgency_descending

    font   = DejaVu Sans Condensed 8
    format = "<b>%a</b>\n───\n<i>%s</i>"

    corner_radius = 2

    [urgency_low]
    background  = "${colors.base00}CC"
    foreground  = "#222DCC"
    frame_color = "#222DCC"
    timeout     = 20

    [urgency_normal]
    background  = "${colors.base00}CC"
    foreground  = "#C0C0C0"
    frame_color = "#C0C0C0"
    timeout     = 30

    [urgency_critical]
    background  = "${colors.base00}CC"
    foreground  = "#AF0C0F"
    frame_color = "#AF0C0F"
    timeout     = 60
  '';
}
