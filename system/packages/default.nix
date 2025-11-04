# Default nix file, used to setup the imports
# of this directory's nix files
{
  pkgs,
  ...
}:

{
  # Core imports
  imports = [
    ./core.nix
    ./desktop.nix
    ./editors.nix
    ./network.nix
    ./languages.nix
  ];
}

