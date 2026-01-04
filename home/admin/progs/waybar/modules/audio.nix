{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        pulseaudio = {
          format           = "   {volume}%";
          format-bluetooth = "󰥰   {volume}%";

          min-length = 7;
          max-length = 7;
        };
      };
    };
  };
}
