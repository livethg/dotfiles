# Packages for desktop applications
{
  pkgs,
  ...
}:

{
  environment.systemPackages = with pkgs; [
    firefox
    kdePackages.dolphin
    kdePackages.elisa
    kdePackages.kate
    kdePackages.ktorrent
    kile
    libreoffice-qt-fresh
    qalculate-qt
    texliveFull
    xournalpp
  ];
}
