# Main configuration file for admin.
# It uses home-manager.
{
  lib,
  ...
}:

rec {
  # Imports for additional configuration
  imports = [
    ./packages
    ./progs
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

  # Should be in sync with configuration.nix
  home.stateVersion = "25.05";
}
