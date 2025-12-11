# List of packages for the admin user
{
  pkgs,
  ...
}:

{
  # Flatpak packages
  services.flatpak.packages = [
    "app.zen_browser.zen"
  ];

  # Nix packages
  home.packages = with pkgs; [
    flameshot
    kdePackages.ghostwriter
    ghc
    gimp
    graphite-gtk-theme
    home-manager
    hyprshot
    nwg-look
    oh-my-zsh
    thunderbird
    viu
    wireplumber
  ];
}
