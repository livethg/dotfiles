{
  pkgs,
  colors,
  ...
}:

let
  inherit (pkgs) callPackage lib;
  borderCol = "#C0C0C0";
  color1    = colors.base02;
  color2    = colors.base00;
  opacity   = "0.8";

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
          108deg,
          ${left}      0%,
          ${left}     45%,
          ${middlel}  45%,
          ${middlel}  50%,
          ${middler}  50%,
          ${middler}  55%,
          ${right}    55%,
          ${right}   100%
        );
        opacity: ${opacity};
    '' + (
      if border == null || border == "null"
      then ""
      else "border-bottom: 1px solid ${border};"
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
          72deg,
          ${left}      0%,
          ${left}     45%,
          ${middlel}  45%,
          ${middlel}  50%,
          ${middler}  50%,
          ${middler}  55%,
          ${right}    55%,
          ${right}   100%
        );
        opacity: ${opacity};
    '' + (
      if border == null || border == "null"
      then ""
      else "border-bottom: 1px solid ${border};"
    ) + "}";

    moduleName = "custom/rslash-${name}";
    module     = rslash;
  };

  toAttr = set: { "${set.moduleName}" = set.module; };
  toStr  = set: "${set.text}";

  toAttrList = list: lib.foldl' (x: y: x // y) {} (map (x: toAttr x) list);
  toStrList  = list: lib.foldl' (x: y: x + y) "" (map (x: toStr x) list);

  nullColor  = col: if col == null || col == "null" then "transparent" else "${col}";

  # Lists
  lslashes = (
    map (x: mkLSlash x) [
      {
        name    = "dots-workspace";
        left    = "${color1}";
        middlel = "${color1}";
        middler = "${color2}";
        right   = "${color2}";
      }
      {
        name    = "workspace-windowcount";
        left    = "${color2}";
        middlel = "${color2}";
        middler = "${color1}";
        right   = "${color1}";
      }
      {
        name    = "windowcount-window";
        left    = "${color1}";
        middlel = "${color1}";
        middler = "${color2}";
        right   = "${color2}";
      }
      {
        name    = "window-end";
        left    = "${color2}";
        border  = null;
        middlel = nullColor "${borderCol}";
        middler = "transparent";
        right   = "transparent";
      }
      {
        name    = "time-battery";
        left    = "${color1}";
        middlel = "${color1}";
        middler = "${color2}";
        right   = "${color2}";
      }
      {
        name    = "battery-audio";
        left    = "${color2}";
        middlel = "${color2}";
        middler = "${color1}";
        right   = "${color1}";
      }
      {
        name    = "audio-light";
        left    = "${color1}";
        middlel = "${color1}";
        middler = "${color2}";
        right   = "${color2}";
      }
      {
        name    = "light-end";
        left    = "${color2}";
        border  = null;
        middlel = nullColor "${borderCol}";
        middler = "transparent";
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
        middlel = "transparent";
        middler = nullColor "${borderCol}";
        right   = "${color2}";
      }
      {
        name    = "temperature-cpu";
        left    = "${color2}";
        middlel = "${color2}";
        middler = "${color1}";
        right   = "${color1}";
      }
      {
        name    = "cpu-memory";
        left    = "${color1}";
        middlel = "${color1}";
        middler = "${color2}";
        right   = "${color2}";
      }
      {
        name    = "memory-time";
        left    = "${color2}";
        middlel = "${color2}";
        middler = "${color1}";
        right   = "${color1}";
      }
      {
        name    = "end-submap";
        border  = null;
        left    = "transparent";
        middlel = "transparent";
        middler = nullColor "${borderCol}";
        right   = "${color2}";
      }
      {
        name    = "submap-language";
        left    = "${color2}";
        middlel = "${color2}";
        middler = "${color1}";
        right   = "${color1}";
      }
      {
        name    = "language-bluetooth";
        left    = "${color1}";
        middlel = "${color1}";
        middler = "${color2}";
        right   = "${color2}";
      }
      {
        name    = "bluetooth-network";
        left    = "${color2}";
        middlel = "${color2}";
        middler = "${color1}";
        right   = "${color1}";
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
        font-size:   10px;
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
        opacity: ${opacity};
        '' + (
        if borderCol == null || borderCol == "null"
        then ""
        else "border-bottom: 1px solid ${borderCol};"
        ) + ''
      }

      #custom-privacydots,
      #windowcount,
      #cpu,
      #clock,
      #pulseaudio,
      #language,
      #network {
        background: ${color1};
      }

      #workspaces,
      #window,
      #temperature,
      #memory,
      #battery,
      #backlight,
      #submap,
      #bluetooth {
        background: ${color2};
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

      /* Workspace */
      #workspaces button.active {
        background-color: rgba(255, 255, 255, 0.1);
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
