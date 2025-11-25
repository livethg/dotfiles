# Config file for flameshot
{
  ...
}:

{
  services.flameshot = {
    # Set to true to enable
    enable = false;

    settings = {
      General = {
        disabledGrimWarning      = true;
        disabledTrayIcon         = true;
        showHelp                 = false;
        showSidePanelButton      = false;
        showStartupLaunchMessage = false;
        useGrimAdapter           = true;
        uiColor                  = "#AAAAAA";
      };
    };
  };
}
