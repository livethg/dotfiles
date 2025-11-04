# Packages for tty editors. For graphical
# editors, add them in the desktop.nix module.
{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    emacs
    neovim
    vim
  ];
}
