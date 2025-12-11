# Main configuration file for admin.
# It uses home-manager.
{
  lib,
  ...
}:

rec {
  # Imports for additional configuration
  imports = [
    ./gtk
    ./packages
    ./progs
    ./shell
  ] ++ (
    lib.lists.optional wayland.windowManager.hyprland.enable ./hyprland
  );

  # Lets home-manager manage itself
  programs.home-manager.enable = true;

  # Select window manager
  wayland.windowManager.hyprland.enable = true;

  # Credentials
  home.username = "admin";
  home.homeDirectory = "/home/admin";

  # File to override because of home-manager
  xdg.configFile."gtk-4.0/gtk.css".force                = true;
  xdg.configFile."gtk-4.0/settings.ini".force           = true;

  home.file.".config/systemd/user/hyprpaper.service".enable = false;
  home.file.".config/systemd/user/hyprpaper.service".force  = true;

  # Should be in sync with configuration.nix
  home.stateVersion = "25.05";
}
