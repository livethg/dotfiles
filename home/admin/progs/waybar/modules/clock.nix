{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        clock    = {
          format  = "{0:%a}  {0:%H󰇙%M}  {0:%d}·{0:%m}";
          tooltip = false;

          min-length = 20;
          max-length = 20;
        };
      };
    };
  };
}
