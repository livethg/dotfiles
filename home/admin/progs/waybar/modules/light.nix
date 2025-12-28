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

          min-length = 6;
          max-length = 6;
        };
      };
    };
  };
}
