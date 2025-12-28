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

          min-length = 6;
          max-length = 6;
        };
      };
    };
  };
}
