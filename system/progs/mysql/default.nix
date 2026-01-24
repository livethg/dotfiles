{
  pkgs,
  ...
}:

{
  services.mysql = {
    enable  = true;
    user    = "root";
    package = pkgs.mysql80;
  };
}
