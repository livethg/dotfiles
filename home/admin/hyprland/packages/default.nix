# List of packages relative to hyprland
{
  pkgs,
  home-manager,
  ...
}:

{
  home.packages = with pkgs; [
    clipse
    dunst
    eww
    exiftool
    hyprcursor
    hyperfine
    hyprland
    hyprlock
    hypridle
    hyprpaper
    hyprpicker
    hyprpolkitagent
    hyprland-qtutils
    hyprsunset
    hyprutils
    overskride
    superfile
    waybar
    wireplumber
  ];
}
