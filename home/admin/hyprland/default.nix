# Hyprland settings
{
  pkgs,
  ...
}:

{
  imports = [
    ./binds
    ./exec
    ./gestures
    ./inputs
    ./packages
    ./rules
    ./submaps
  ];

  wayland.windowManager.hyprland = {
    enable = true;
    package = pkgs.hyprland;
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
        "$fmgui"  = "dolphin";
        "$picker" = "hyprpicker -a";
        "$status" = "$term btop";
        "$term"   = "kitty";

        # Screenshot variables
        "$imgpth"  = "~/Pictures/Screenshots";
        "$mkscrpt" = "if [ ! -d $imgpth ]; then mkdir -p $imgpth; fi;";

        "$scrsh"   = "flameshot gui -d 0 -c";
        "$scrshS"  = "$mkscrpt flameshot gui -d 0 -c -p $imgpth";
        "$scrshF"  = "flameshot full -c";
        "$scrshFS" = "$mkscrpt flameshot full -c -p $imgpth";

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
        # TODO: Change this for hyprlock once
        # the lock screen is enabled.
        "$lock"      = "echo 'locking...'"; # "hyprlock";
        "$reboot"    = "systemctl reboot";
        "$poweroff"  = "systemctl poweroff";
        "$hibernate" = "systemctl hibernate";
    };
  };
}
