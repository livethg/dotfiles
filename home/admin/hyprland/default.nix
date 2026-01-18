# Hyprland settings
{
  pkgs,
  lib,
  home-manager,
  ...
}:

rec {
  imports = [
    ./animation
    ./binds
    ./decoration
    ./env
    ./exec
    ./general
    ./gestures
    ./group
    ./hyprlock
    ./hyprpaper
    ./hypridle
    ./inputs
    ./misc
    ./packages
    ./plugins
    ./rules
    ./scaling
    ./scripts
    ./submaps
  ];

  programs.hyprshot.enable  = (
    pkgs.callPackage ../progs/hyprshot/default.nix {}
  ).programs.hyprshot.enable;

  wayland.windowManager.hyprland = {
    enable        = true;
    package       = null;
    portalPackage = null;

    xwayland.enable = true;

    settings = {
      # Browser
      "$browser"  = "$runZen";
      "$fire"     = "firefox";
      "$runZen"   = "flatpak run $zen";
      "$zen"      = "app.zen_browser.zen";

      # Apps
      "$calc"     = "qalculate-qt";
      "$code"     = "$term nvim ~";
      "$discord"  = "vesktop";
      "$fmty"     = "superfile";
      "$launcher" = "echo -n '[\"toggle\"]' | nc -U ~/.cache/albert/ipc_socket";
      "$help"     = "zeal";
      "$img"      = "gimp";
      "$music"    = "nuclear";
      "$pen"      = "xournalpp";
      "$picker"   = "hyprpicker -a";
      "$status"   = "$term btop";
      "$term"     = "kitty";
      "$tex"      = "texstudio";

      # Screenshot variables
      "$imgpth"  = "~/Pictures/Screenshots";
      "$mkscrpt" = "if [ ! -d $imgpth ]; then mkdir -p $imgpth; fi;";

      # Control sequence
      "$start"    = "Control_L+Alt_L";
      "$startOpt" = "$start+Shift_L";
      "$mod"      = "Super_L";

      "$opt1" = "Shift_L";
      "$opt2" = "Control_L";
      "$opt3" = "Alt_L";
      "$opt4" = "$opt1+$opt2";

      "$modOpt1" = "$mod+$opt1";
      "$modOpt2" = "$mod+$opt2";
      "$modOpt3" = "$mod+$opt3";
      "$modOpt4" = "$mod+$opt4";

      # System settings
      "$lockProg"  = "hyprlock";
      "$lock"      = "$lockProg";
      "$reboot"    = "systemctl reboot";
      "$poweroff"  = "systemctl poweroff";
      "$hibernate" = "systemctl hibernate";
    } // (
      lib.optionalAttrs (programs.hyprshot.enable) {
        "$scrsh"   = "hyprshot -z -m region --clipboard-only";
        "$scrshS"  = "$mkscrpt hyprshot -z -m region -o $imgpth";
        "$scrshF"  = "hyprshot -z -m output --clipboard-only";
        "$scrshFS" = "$mkscrpt hyprshot -z -m output -o $imgpth";
        "$scrshM"  = "export TMP=`mktemp -d`; hyprshot -m region -o $TMP -f 'screenshot.png'; gimp \"$TMP/screenshot.png\"; unset TMP";
        "$scrshFM" = "export TMP=`mktemp -d`; hyprshot -m output -o $TMP -f 'screenshot.png'; gimp \"$TMP/screenshot.png\"; unset TMP";
      }
    );
  };
}
