{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        backlight = {
          format       = "{icon} {percent}%";
          format-icons = [
            "󱩎"
            "󱩏"
            "󱩐"
            "󱩑"
            "󱩒"
            "󱩓"
            "󱩔"
            "󱩕"
            "󱩖"
            "󰛨"
          ];
          tooltip      = false;

          on-scroll-up   = "brightnessctl -e4 -n2 set 5%+";
          on-scroll-down = "brightnessctl -e4 -n2 set 5%-";
        };
      };
    };
  };
}
