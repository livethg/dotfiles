# Main configuration file for admin.
# It uses home-manager.
{
  lib,
  inputs,
  pkgs,
  flakehub,
  home-manager,
  nix-flatpak,
  ...
}:

rec {
  # Imports for additional configuration
  imports = [
    ./packages
  ] ++ (
    lib.lists.optional wayland.windowManager.hyprland.enable ./hyprland
  );

  # Lets home-manager manage itself
  programs.home-manager.enable = true;

  # Select window manager
  wayland.windowManager.hyprland.enable = true;

  # Sets neovim as the default editor
  programs.neovim = {
    enable        = true;
    defaultEditor = true;
    viAlias       = true;
    vimAlias      = true;
  };

  programs.kitty.enable = true;

  # Used for github
  services.gpg-agent = {
    enable           = true;
    enableSshSupport = true;
  };

  # Flatpak packages
  services.flatpak.packages = [
    "app.zen_browser.zen"
  ];

  # Credentials
  home.username = "admin";
  home.homeDirectory = "/home/admin";

  # Should be in sync with configuration.nix
  home.stateVersion = "25.05";
}
