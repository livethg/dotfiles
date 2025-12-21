{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    delta
    fd
    ghc
    hunspell
    lazydocker
    lazyssh
    lazygit
    libqalculate
    mtr
    ncdu
    procs
    translate-shell
    wireplumber
    viu
  ];
}
