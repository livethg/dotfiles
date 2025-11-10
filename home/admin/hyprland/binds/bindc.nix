# Binds for mouse click
{
  ...
}:

{
  wayland.windowManager.hyprland = {
    settings = {
      bindc = [
        "$mod, mouse:273, togglefloating"
        "$mod, mouse:272, forcekillactive"
        "$mod, mouse:274, fullscreen, 1"
      ];
    };
  };
}
