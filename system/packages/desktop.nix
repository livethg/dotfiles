# Packages for desktop applications
{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    hyprlock
    kdePackages.elisa
    kdePackages.ktorrent
    kile
    libreoffice-qt-fresh
    qalculate-qt
  ];
}
