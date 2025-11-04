# List of packages for the admin user
{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    fastfetch
    kdePackages.ghostwriter
    ghc
    home-manager
    hyperfine
    hyprland
    kdePackages.kate
    oh-my-zsh
    thunderbird
    viu
    xournalpp
    wireplumber
  ];
}
