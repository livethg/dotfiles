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

          min-length = 6;
          max-length = 6;
        };
      };
    };
  };
}
