{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        cpu = {
          format         = "󰍛  {usage}%";
          tooltip-format = "Load: {load}";

          min-length = 7;
          max-length = 7;
        };
      };
    };
  };
}
