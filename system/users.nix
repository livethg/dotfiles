# Includes the users' packages and add/configure
# all users' permissions.
{
  pkgs,
  ...
}:

{
  # Main user, should have all permissions
  users.users.admin = {
    isNormalUser = true;
    description = "admin";
    extraGroups = [ "networkmanager" "wheel" ];
  };
}
