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
    gimp
    graphite-gtk-theme
    home-manager
    hyprshot
    nwg-look
    nuclear
    oh-my-zsh
    qtcreator
    texstudio
    thunderbird
    typst
    vesktop
    zeal
  ];
}
