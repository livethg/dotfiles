{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        memory = {
          format         = "   {percentage}%";
          interval       = 10;
          tooltip-format = "Used {used:0.0f} GB";

          min-length = 7;
          max-length = 7;
        };
      };
    };
  };
}
