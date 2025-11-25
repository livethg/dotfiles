# Configs for gpg
{
  ...
}:

{
  # Used for github
  services.gpg-agent = {
    enable           = true;
    enableSshSupport = true;
  };
}
