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
    flameshot
    hyprcursor
    hyperfine
    hyprland
    hyprlock
    hypridle
    hyprpicker
    hyprpolkitagent
    hyprland-qtutils
    hyprsunset
    hyprutils
    overskride
    superfile
    walker
    waybar
    wireplumber
  ];
}
