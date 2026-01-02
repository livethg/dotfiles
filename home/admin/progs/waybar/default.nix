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
        middlel = "rgba(85, 85, 85, 0.5)";
        middler = "rgba(138, 43, 226, 0.5)";
      }
      {
        name    = "workspace-windowcount";
        middlel = "rgba(138, 43, 226, 0.5)";
        middler = "rgba(222, 184, 135, 0.5)";
      }
      {
        name    = "windowcount-window";
        middlel = "rgba(222, 184, 135, 0.5)";
        middler = "rgba(95, 158, 160, 0.5)";
      }
      {
        name    = "window-end";
        border  = null;
        middlel = "${borderCol}";
        middler = "${borderCol}";
        right   = "transparent";
      }
      {
        name    = "time-battery";
        middlel = "rgba(255, 255, 255, 0.5)";
        middler = "rgba(30, 144, 255, 0.5)";
      }
      {
        name    = "battery-audio";
        middlel = "rgba(30, 144, 255, 0.5)";
        middler = "rgba(105, 105, 105, 0.5)";
      }
      {
        name    = "audio-light";
        middlel = "rgba(105, 105, 105, 0.5)";
        middler = "rgba(238, 232, 170, 0.5)";
      }
      {
        name    = "light-end";
        border  = null;
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
      }
      {
        name    = "temperature-cpu";
        middlel = "rgba(220, 20, 60, 0.5)";
        middler = "rgba(0, 139, 139, 0.5)";
      }
      {
        name    = "cpu-memory";
        middlel = "rgba(0, 139, 139, 0.5)";
        middler = "rgba(240, 128, 128, 0.5)";
      }
      {
        name    = "memory-time";
        middlel = "rgba(240, 128, 128, 0.5)";
        middler = "rgba(255, 255, 255, 0.5)";
      }
      {
        name    = "end-submap";
        border  = null;
        left    = "transparent";
        middlel = "${borderCol}";
        middler = "${borderCol}";
      }
      {
        name    = "submap-language";
        middlel = "rgba(250, 128, 114, 0.5)";
        middler = "rgba(219, 112, 147, 0.5)";
      }
      {
        name    = "language-bluetooth";
        middlel = "rgba(219, 112, 147, 0.5)";
        middler = "rgba(135, 206, 235, 0.5)";
      }
      {
        name    = "bluetooth-network";
        middlel = "rgba(135, 206, 235, 0.5)";
        middler = "rgba(192, 192, 192, 0.5)";
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
        background-color: rgba(18, 20, 22, 0.8);
      }

      #clock {
        color: rgba(255, 255, 255, 0.8);
      }

      #workspaces label {
        color: rgb(138, 43, 226);
      }

      #windowcount label {
        color: rgb(222, 184, 135);
      }

      #window label {
        color: rgb(95, 158, 160);
      }

      #battery {
        color: rgb(30, 144, 255);
      }

      #pulseaudio {
        color: rgb(105, 105, 105);
      }

      #backlight {
        color: rgb(238, 232, 170);
      }

      #temperature {
        color: rgb(220, 20, 60);
      }

      #cpu {
        color: rgb(0, 139, 139);
      }

      #memory {
        color: rgb(240, 128, 128);
      }

      #submap {
        color: rgb(250, 128, 114);
      }

      #language {
        color: rgb(219, 112, 147);
      }

      #bluetooth {
        color: rgb(135, 206, 235);
      }

      #network {
        color: rgb(192, 192, 192);
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
