# Default gtk settings
{
  pkgs,
  lib,
  ...
}:

{
  home.packages = with pkgs; [
    dracula-qt5-theme
  ];

  home.sessionVariables = {
    QT_STYLE_OVERRIDE = "Dracula";
  };

  gtk = {
    enable = true;

    font = {
      name = "Ubuntu Nerd Font Medium";
      size = 8;
    };

    theme = {
      name    = "Dracula";
      package = pkgs.dracula-theme;
  };

    cursorTheme = {
      name    = "oreo_white_cursors";
      package = pkgs.oreo-cursors-plus;
      size    = 18;
    };

    colorScheme = "dark";
  };

  home.pointerCursor = {
    gtk.enable = true;
    name       = "oreo_white_cursors";
    package    = pkgs.oreo-cursors-plus;
    size       = 18;
  };
}
