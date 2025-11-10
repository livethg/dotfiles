# Config file for flameshot
{
  ...
}:

{
  services.flameshot = {
    enable = true;

    settings = {
      General = {
        disabledGrimWarning      = true;
        disabledTrayIcon         = true;
        showStartupLaunchMessage = false;
        useGrimAdapter           = true;
      };
    };
  };
}
