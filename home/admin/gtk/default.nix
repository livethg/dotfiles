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
      name    = "graphite-dark";
      package = pkgs.graphite-cursors;
      size    = 14;
    };

    colorScheme = "dark";
  };

  home.pointerCursor = {
    gtk.enable = true;
    name       = "graphite-dark";
    package    = pkgs.graphite-cursors;
    size       = 14;
  };
}
