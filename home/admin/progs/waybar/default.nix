{
  ...
}:

{
  imports = [
    ./modules
  ];

  programs.waybar = {
    enable   = true;
    style    = null;
    settings = {
      main = {
        mode     = "dock";
        position = "top";

        spacing  = 4;

        modules-left   = [
          "custom/privacydots"
          "hyprland/workspaces"
        ];
        modules-center = [
          "temperature"
          "cpu"
          "memory"
          "clock"
          "battery"
          "pulseaudio"
          "backlight"
        ];
        modules-right  = [
          "hyprland/windowcount"
          "hyprland/submap"
          "hyprland/language"
          "bluetooth"
          "network"
        ];

        reload_style_on_change = true;
      };
    };
  };
}
