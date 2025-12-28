{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        temperature = {
          critical-threshold = 90;

          format          = "{icon} {temperatureC}°C";
          format-critical = " {temperatureC}°C";
          format-icons    = [ "󱃃" "󰔏" "󱃂" ];

          tooltip-format  = "{temperatureF}°F";

          min-length = 6;
          max-length = 6;
        };
      };
    };
  };
}
