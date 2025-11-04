# List of installed fonts
{
  pkgs,
  ...
}:

{
  fonts.packages = with pkgs; [
    fira-code
    fira-code-symbols
    ibm-plex
    jetbrains-mono
    liberation_ttf
    nerd-fonts.blex-mono
    nerd-fonts.dejavu-sans-mono 
    nerd-fonts.inconsolata
    nerd-fonts.mononoki
    nerd-fonts.ubuntu
    noto-fonts
    noto-fonts-emoji
    noto-fonts-cjk-sans
    roboto
  ];
}
