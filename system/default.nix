# Default nix file, used to setup the rest of this
# directory's nix files.
{
 ...
}:

{
  imports = [
    # List of import packages
    ./packages

    # Default general configs
    ./progs

    # Fonts and bootloader configs
    ./bootloader.nix
    ./fonts.nix
    ./users.nix
  ];
}
