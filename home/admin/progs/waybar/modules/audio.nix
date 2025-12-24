{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        sndio = {
          format           = " {volume}%";
          format-bluetooth = "󰥰 {volume}%";

          on-click       = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle";
          on-scroll-up   = "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+";
          on-scroll-down = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-";
        };
      };
    };
  };
}
