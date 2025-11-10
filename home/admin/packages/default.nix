# List of packages for the admin user
{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    flameshot
    kdePackages.ghostwriter
    ghc
    home-manager
    oh-my-zsh
    thunderbird
    viu
    wireplumber
  ];
}
