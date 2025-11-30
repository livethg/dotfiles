# Default gtk settings
{
  pkgs,
  ...
}:

{
  gtk = {
    enable = true;

    font = {
      name = "Ubuntu Nerd Font Medium";
      size = 10;
    };

    theme = {
      name    = "Graphite-Dark";
      package = pkgs.graphite-gtk-theme;
    };

    iconTheme = {
      name    = "Tela black dark";
      package = pkgs.tela-icon-theme;
    };

    cursorTheme = {
      name    = "graphite-dark";
      package = pkgs.graphite-cursors;
      size    = 14;
    };

    colorScheme = "dark";
  };

  qt = {
    enable             = true;
    platformTheme.name = "gtk2";
  };

  home.pointerCursor = {
    gtk.enable = true;

    name    = "graphite-dark";
    package = pkgs.graphite-cursors;
    size    = 14;
  };
}
