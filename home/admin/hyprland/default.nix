# Hyprland settings
{
  pkgs,
  lib,
  home-manager,
  ...
}:

rec {
  imports = [
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
    ./rules
    ./submaps
  ];

  services.flameshot.enable = (pkgs.callPackage ../progs/flameshot/default.nix {}).services.flameshot.enable;
  programs.hyprshot.enable  = (pkgs.callPackage ../progs/hyprshot/default.nix {}).programs.hyprshot.enable;

  wayland.windowManager.hyprland = {
    enable        = true;
    package       = null;
    portalPackage = null;

    xwayland.enable = true;

    # Put your variables here.
    # Settings configs will be in
    # other files in this directory.
    settings = {
      # Browser
      "$zen"     = "app.zen_browser.zen";
      "$runZen"  = "flatpak run $zen";
      "$fire"    = "firefox";
      "$browser" = "$runZen";

      # Apps
      "$code"   = "$term nvim ~";
      "$fmty"   = "superfile";
      "$img"    = "gimp";
      "$picker" = "hyprpicker -a";
      "$status" = "$term btop";
      "$term"   = "kitty";

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
      lib.optionalAttrs (services.flameshot.enable) {
        "$scrsh"   = "flameshot gui -c";
        "$scrshS"  = "$mkscrpt flameshot gui -c -p $imgpth";
        "$scrshF"  = "flameshot full -c";
        "$scrshFS" = "$mkscrpt flameshot full -c -p $imgpth";
      }
    ) // (
      lib.optionalAttrs (programs.hyprshot.enable) {
        "$scrsh"   = "hyprshot -z -m region --clipboard-only";
        "$scrshS"  = "$mkscrpt hyprshot -z -m region -o $imgpth";
        "$scrshF"  = "hyprshot -z -m output -m active";
        "$scrshFS" = "$mkscrpt hyprshot -z -m output -m active -o $imgpth";
      }
    );
  };
}
