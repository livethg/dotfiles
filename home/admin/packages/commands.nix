{
  pkgs,
  ...
}:

{
  home.packages = with pkgs; [
    delta
    fd
    ghc
    lazydocker
    lazyssh
    lazygit
    mtr
    ncdu
    procs
    wireplumber
    viu
  ];
}
