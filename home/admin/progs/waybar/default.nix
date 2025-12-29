{
  pkgs,
  ...
}:

let
  inherit (pkgs) callPackage lib;

  # Templates
  lslash = (
    callPackage ./modules/separators/lslash.nix {}
  ).programs.waybar.settings.main."custom/lslash";
  rslash = (
    callPackage ./modules/separators/rslash.nix {}
  ).programs.waybar.settings.main."custom/rslash";

  # Functions
  mkLSlash = { name, left, right }: {
    text = ''
      #custom-lslash-${name} {
        background: linear-gradient(115deg, ${left} 0%, ${left} 50%, ${right} 50%, ${right} 100%);
      }
    '';

    moduleName = "custom/lslash-${name}";
    module     = lslash;
  };
  mkRSlash = { name, left, right }: {
    text = ''
      #custom-rslash-${name} {
        background: linear-gradient(115deg, ${left} 0%, ${left} 50%, ${right} 50%, ${right} 100%);
      }
    '';

    moduleName = "custom/rslash-${name}";
    module     = rslash;
  };

  toAttr = set: { "${set.moduleName}" = set.module; };
  toStr  = set: "${set.text}";

  toAttrList = list: lib.foldl' (x: y: x // y) {} (map (x: toAttr x) list);
  toStrList  = list: lib.foldl' (x: y: x + y) "" (map (x: toStr x) list);

  # Lists
  lslashes = (
    map (x: mkLSlash x) [
    ]
  );
  rslashes = (
    map (x: mkRSlash x) [
    ]
  );
in
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

      #custom-privacydots {
        font-family: CaskaydiaMono Nerd Font;
        font-size:   8px;
      }

      #workspaces button {
        font-size: 8px;
      }

      #windowcount label {
        font-weight: bold;
      }

      #clock {
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

      /* Spacing */
      * {
        min-height: 0; /* Do not modify, fixes a bug with height */
      }

      #custom-privacydots {
        margin: 0px 5px 0px 10px;
      }

      #workspaces {
        padding: 5px 0px 5px 0px;
      }

      #windowcount {
        margin: 0px 5px 0px 5px;
      }

      #network {
        margin: 0px 10px 0px 0px;
      }

      /* Workspace */
      #workspaces button {
        border: 1px solid rgba(255, 255, 255, 0.5);
      }

      #workspaces button.active {
        background-color: rgba(255, 255, 255, 0.2);
      }
    '' + (
      toStrList lslashes
    ) + (
      toStrList rslashes
    );
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
          "custom/lslash-example"
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
      } // (
        toAttrList lslashes
      ) // (
        toAttrList rslashes
      );
    };
  };
}
