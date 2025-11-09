# Hyprland settings
{
  pkgs,
  ...
}:

{
  imports = [
    ./binds
    ./inputs
    ./packages
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
        "$scrsh"  = "flameshot gui -d 0 -c";
        "$scrshL" = "flameshot gui -c";
        "$status" = "btop";
        "$term"   = "kitty";

        # Control sequence
        "$start"    = "Control_L+Alt_L";
        "$startOpt" = "$start+Shift_L";
        "$mod"      = "Super_L";
        "$modOpt1"  = "$mod+Shift_L";
        "$modOpt2"  = "$mod+Control_L";
        "$modOpt3"  = "$mod+Alt_L";
        "$modOpt4"  = "$mod+Control_L+Shift_L";

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
