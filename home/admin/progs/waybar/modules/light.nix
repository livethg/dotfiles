{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        backlight = {
          format       = "{icon}   {percent}%";
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

          min-length = 7;
          max-length = 7;
        };
      };
    };
  };
}
