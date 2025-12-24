{
  ...
}:

{
  programs.waybar = {
    settings = {
      main = {
        cpu = {
          format         = "󰍛 {usage}%";
          tooltip-format = "Load: {load}";
        };
      };
    };
  };
}
