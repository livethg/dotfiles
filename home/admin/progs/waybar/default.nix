{
  ...
}:

{
  imports = [
    ./modules
  ];

  programs.waybar = {
    enable = true;
    style  = ''
      /* Fonts and foregrounds */
      * {
        font-family: DejaVu Sans Condensed;
        font-size:   12px;
        font-weight: normal;
        color:       white;
      }

      #workspaces button {
        font-size: 8px;
      }

      #custom-privacydots {
        font-family: CaskaydiaMono Nerd Font;
        font-size:   8px;
      }

      #clock {
        font-weight: bold;
      }

      #windowcount label {
        font-weight: bold;
      }

      #custom-text-sep-left {
        font-weight: bold;
      }

      #custom-text-sep-right {
        font-weight: bold;
      }

      /* State colors */
      #battery.warning {
        background-color: rgba(237, 240, 127, 0.55);
      }

      #battery.critical,
      #temperature.critical {
        background-color: rgba(240, 128, 128, 0.55);
      }

      /* Background colors */
      window#waybar {
        background-color: rgba(43, 43, 43, 0.9);
        border-radius:    8px;
      }

      /* Spacing */
      * {
        min-height: 0; /* Do not modify, fixes a bug with height */
      }

      #custom-privacydots {
        margin: 0px 5px 0px 10px;
      }

      #windowcount {
        margin: 0px 5px 0px 5px;
      }

      #network {
        margin: 0px 10px 0px 0px;
      }

      #workspaces {
        padding: 5px 0px 5px 0px;
      }

      /* Workspace */
      #workspaces button {
        border: 1px solid rgba(255, 255, 255, 0.5);
      }

      #workspaces button.active {
        background-color: rgba(255, 255, 255, 0.2);
      }
    '';
    settings = {
      main = {
        mode     = "dock";
        position = "top";

        spacing  = 4;

        modules-left   = [
          "custom/privacydots"
          "hyprland/workspaces"
          "hyprland/windowcount"
          "hyprland/window"
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
