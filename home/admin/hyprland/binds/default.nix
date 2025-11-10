# File used for binds in hyprland
{
  ...
}:

{
  imports = [
    ./bind.nix
    ./bindc.nix
    ./binde.nix
    ./bindl.nix
    ./bindm.nix
    ./bindel.nix
  ];

  wayland.windowManager.hyprland = {
    settings.binds.drag_threshold = 10;
  };
}
