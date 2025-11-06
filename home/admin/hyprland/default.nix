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
        # Browser relative
        "$zen"     = "app.zen_browser.zen";
        "$runZen"  = "flatpak run $browserName";
        "$runFire" = "firefox";
        "$browser" = "$runZen";

        # App relative
        "$code"   = "nvim";
        "$fmty"   = "superfile";
        "$fmgui"  = "dolphin";
        "$picker" = "hyprpicker";
        "$scrsh"  = "watershot";
        "$term"   = "kitty";

        # Control sequence
        "$start"  = "Control_L+Alt_L";
        "$mod"    = "Super_L";
    };
  };
}
