{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        battery = {
          format-discharging = "{icon} {capacity}%";
          format-icons       = [
            ""
            ""
            ""
            ""
            ""
          ];
          format-charging    = "󱐋 {capacity}%";

          states = {
            warning  = 20;
            critical = 10;
          };

          events = {
            on-charging-warning     = "notify-send 'Battery Low (20%)' -u critical -i 'battery-020' -r 1525";
            on-discharging-critical = "notify-send 'Battery Critical (10%)' -u critical -i 'battery-010' -r 1525";
            on-charging-100         = "notify-send 'Battery Full (100%)' -i 'battery-100-charged'";
          };
        };
      };
    };
  };
}
