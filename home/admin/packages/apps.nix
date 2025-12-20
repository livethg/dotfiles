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
    gimp
    graphite-gtk-theme
    home-manager
    hyprshot
    kdePackages.qt6ct
    nwg-look
    oh-my-zsh
    thunderbird
  ];
}
