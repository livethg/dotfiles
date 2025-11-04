# Main configuration file for admin.
# It uses home-manager.
{
  inputs,
  pkgs,
  flakehub,
  home-manager,
  nix-flatpak,
  ...
}:

{
  # Imports for additional configuration
  imports = [
    ./packages
  ];

  # Sets up the keyboard
  home.keyboard = {
    layout  = "us,us,csa";
    variant = "colemak,,";
    options = "grp:win_space_toggle";
  };

  # Lets home-manager manage itself
  programs.home-manager.enable = true;

  # Sets neovim as the default editor
  programs.neovim = {
    enable        = true;
    defaultEditor = true;
    viAlias       = true;
    vimAlias      = true;
  };

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
