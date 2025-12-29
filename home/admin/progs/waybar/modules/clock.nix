{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        clock    = {
          format         = "{0:%a}  {0:%H󰇙%M}  {0:%m}·{0:%d}";
          tooltip-format = "<tt><small>{calendar}</small></tt>";
          calendar       = {
            mode         = "year";
            mode-mon-col = 3;

            format = {
              days     = "<span color='#ecc6d9'><b>{}</b></span>";
              months   = "<span color='#ffead3'><b>{}</b></span>";
              weekdays = "<span color='#ffcc66'><b>{}</b></span>";
              today    = "<span color='#ff6699'><b><u>{}</u></b></span>";
            };
          };

          actions = {
            on-click-right = "mode";
            on-scroll-up   = [ "tz_up" "shift_up" ];
            on-scroll-down = [ "tz_down" "shift_down" ] ;
          };

          min-length = 20;
          max-length = 20;
        };
      };
    };
  };
}
