# List of packages for the admin user
{
  pkgs,
  ...
}:

{
  imports = [
    ./commands.nix
    ./apps.nix
  ];
}
