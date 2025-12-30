{
  pkgs,
  ...
}:

let
  inherit (pkgs) callPackage lib;
  borderCol = "rgba(22, 88, 150, 1)";

  # Templates
  lslash = (
    callPackage ./modules/separators/lslash.nix {}
  ).programs.waybar.settings.main."custom/lslash";
  rslash = (
    callPackage ./modules/separators/rslash.nix {}
  ).programs.waybar.settings.main."custom/rslash";

  # Functions
  mkLSlash = {
    name,
    border ? "${borderCol}",
    left   ? "rgba(18, 20, 22, 0.8)",
    middlel,
    middler,
    right  ? "rgba(18, 20, 22, 0.8)"
  }: {
    text = ''
      #custom-lslash-${name} {
        background: linear-gradient(
          110deg,
          ${left}      0%,
          ${left}     45%,
          ${middlel}  45%,
          ${middlel}  50%,
          ${middler}  50%,
          ${middler}  55%,
          ${right}    55%,
          ${right}   100%
        );
    '' + (
      if border == null
      then ""
      else "border-bottom: 2px solid rgba(22, 88, 150, 1)"
    ) + "}";

    moduleName = "custom/lslash-${name}";
    module     = lslash;
  };
  mkRSlash = {
    name,
    border ? "${borderCol}",
    left   ? "rgba(18, 20, 22, 0.8)",
    middlel,
    middler,
    right  ? "rgba(18, 20, 22, 0.8)"
  }: {
    text = ''
      #custom-rslash-${name} {
        background: linear-gradient(
          70deg,
          ${left}      0%,
          ${left}     45%,
          ${middlel}  45%,
          ${middlel}  50%,
          ${middler}  50%,
          ${middler}  55%,
          ${right}    55%,
          ${right}   100%
        );
    '' + (
      if border == null
      then ""
      else "border-bottom: 2px solid ${borderCol}"
    ) + "}";

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
      {
        name    = "dots-workspace";
        left    = "rgba(85, 85, 85, 0.2)";
        middlel = "#555555";
        middler = "blueviolet";
        right   = "rgba(138, 43, 226, 0.2)";
      }
      {
        name    = "workspace-windowcount";
        left    = "rgba(138, 43, 226, 0.2)";
        middlel = "blueviolet";
        middler = "burlywood";
        right   = "rgba(222, 184, 135, 0.2)";
      }
      {
        name    = "windowcount-window";
        left    = "rgba(222, 184, 135, 0.2)";
        middlel = "burlywood";
        middler = "cadetblue";
        right   = "rgba(95, 158, 160, 0.2)";
      }
      {
        name    = "window-end";
        border  = null;
        left    = "rgba(95, 158, 160, 0.2)";
        middlel = "${borderCol}";
        middler = "${borderCol}";
        right   = "transparent";
      }
      {
        name    = "time-battery";
        left    = "rgba(255, 255, 255, 0.2)";
        middlel = "white";
        middler = "#1E90FF";
        right   = "rgba(225, 144, 255, 0.2)";
      }
      {
        name    = "battery-audio";
        left    = "rgba(225, 144, 255, 0.2)";
        middlel = "#1E90FF";
        middler = "dimgrey";
        right   = "rgba(105, 105, 105, 0.2)";
      }
      {
        name    = "audio-light";
        left    = "rgba(105, 105, 105, 0.2)";
        middlel = "dimgrey";
        middler = "#EEE8AA";
        right   = "rgba(238, 232, 170, 0.2)";
      }
      {
        name    = "light-end";
        border  = null;
        left    = "rgba(238, 232, 170, 0.2)";
        middlel = "${borderCol}";
        middler = "${borderCol}";
        right   = "transparent";
      }
    ]
  );
  rslashes = (
    map (x: mkRSlash x) [
      {
        name    = "end-temperature";
        border  = null;
        left    = "transparent";
        middlel = "${borderCol}";
        middler = "${borderCol}";
        right   = "rgba(220, 20, 60, 0.2)";
      }
      {
        name    = "temperature-cpu";
        left    = "rgba(220, 20, 60, 0.2)";
        middlel = "#DC143C";
        middler = "darkcyan";
        right   = "rgba(0, 139, 139, 0.2)";
      }
      {
        name    = "cpu-memory";
        left    = "rgba(0, 139, 139, 0.2)";
        middlel = "darkcyan";
        middler = "lightcoral";
        right   = "rgba(240, 128, 128, 0.2)";
      }
      {
        name    = "memory-time";
        left    = "rgba(240, 128, 128, 0.2)";
        middlel = "lightcoral";
        middler = "white";
        right   = "rgba(255, 255, 255, 0.2)";
      }
      {
        name    = "end-submap";
        border  = null;
        left    = "transparent";
        middlel = "${borderCol}";
        middler = "${borderCol}";
        right   = "rgba(250, 128, 114, 0.2)";
      }
      {
        name    = "submap-language";
        left    = "rgba(250, 128, 114, 0.2)";
        middlel = "salmon";
        middler = "palevioletred";
        right   = "rgba(219, 112, 147, 0.2)";
      }
      {
        name    = "language-bluetooth";
        left    = "rgba(219, 112, 147, 0.2)";
        middlel = "palevioletred";
        middler = "skyblue";
        right   = "rgba(135, 206, 235, 0.2)";
      }
      {
        name    = "bluetooth-network";
        left    = "rgba(135, 206, 235, 0.2)";
        middlel = "skyblue";
        middler = "silver";
        right   = "rgba(192, 192, 192, 0.2)";
      }
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
        font-size:   11px;
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

      /* Spacing */
      * {
        min-height: 0; /* Do not modify, fixes a bug with height */
      }

      #custom-privacydots {
        padding: 0px 5px 0px 10px;
      }

      #workspaces {
        padding: 5px 5px 5px 5px;
      }

      #windowcount {
        padding: 0px 5px 0px 5px;
      }

      #network {
        padding: 0px 10px 0px 0px;
      }

      /* Waybar */
      window#waybar {
        background-color: transparent;
      }

      /* Workspace */
      #workspaces button {
        border: 1px solid rgba(255, 255, 255, 0.5);
      }

      #workspaces button.active {
        background-color: rgba(255, 255, 255, 0.2);
      }

      /* Colors and borders */
      #custom-privacydots,
      #workspaces,
      #windowcount,
      #window,
      #temperature,
      #cpu,
      #memory,
      #clock,
      #battery,
      #pulseaudio,
      #backlight,
      #submap,
      #language,
      #bluetooth,
      #network
      {
        border-bottom:    2px solid ${borderCol};
      }

      #custom-privacydots {
        background-color: rgba(85, 85, 85, 0.2);
      }

      #workspaces {
        background-color: rgba(138, 43, 226, 0.2);
      }

      #workspaces label {
        color: blueviolet;
      }

      #windowcount {
        background-color: rgba(222, 184, 135, 0.2);
      }

      #windowcount label {
        color: burlywood;
      }

      #window {
        background-color: rgba(95, 158, 160, 0.2);
      }

      #window label {
        color: cadetblue;
      }

      #temperature {
        background-color: rgba(220, 20, 60, 0.2);
        color: #DC143C;
      }

      #cpu {
        background-color: rgba(0, 139, 139, 0.2);
        color: darkcyan;
      }

      #memory {
        background-color: rgba(240, 128, 128, 0.2);
        color: lightcoral;
      }

      #clock {
        background-color: rgba(255, 255, 255, 0.2);
      }

      #battery {
        background-color: rgba(225, 144, 255, 0.2);
        color: #1E90FF;
      }

      #pulseaudio {
        background-color: rgba(105, 105, 105, 0.2);
        color: dimgrey;
      }

      #backlight {
        background-color: rgba(238, 232, 170, 0.2);
        color: #EEE8AA;
      }

      #submap {
        background-color: rgba(250, 128, 114, 0.2);
        color: salmon;
      }

      #language {
        background-color: rgba(219, 112, 147, 0.2);
        color: palevioletred;
      }

      #bluetooth {
        background-color: rgba(135, 206, 235, 0.2);
        color: skyblue;
      }

      #network {
        background-color: rgba(192, 192, 192, 0.2);
        color: silver;
      }

      #custom-lslash-window-end {
        background-color: rgba(0, 0, 0, 0);
      }

      /* AUTO GENERATED */
    '' + (
      toStrList lslashes
    ) + (
      toStrList rslashes
    );
    settings = {
      main = {
        mode     = "dock";
        position = "top";

        modules-left   = [
          "custom/privacydots"
          "custom/lslash-dots-workspace"
          "hyprland/workspaces"
          "custom/lslash-workspace-windowcount"
          "hyprland/windowcount"
          "custom/lslash-windowcount-window"
          "hyprland/window"
          "custom/lslash-window-end"
        ];
        modules-center = [
          "custom/rslash-end-temperature"
          "temperature"
          "custom/rslash-temperature-cpu"
          "cpu"
          "custom/rslash-cpu-memory"
          "memory"
          "custom/rslash-memory-time"
          "clock"
          "custom/lslash-time-battery"
          "battery"
          "custom/lslash-battery-audio"
          "pulseaudio"
          "custom/lslash-audio-light"
          "backlight"
          "custom/lslash-light-end"
        ];
        modules-right  = [
          "custom/rslash-end-submap"
          "hyprland/submap"
          "custom/rslash-submap-language"
          "hyprland/language"
          "custom/rslash-language-bluetooth"
          "bluetooth"
          "custom/rslash-bluetooth-network"
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
