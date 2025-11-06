# List of normal session binds in hyprland
{
  ...
}:

{
  wayland.windowManager.hyprland = {
    settings = {
      bind = [
        "$mod, Q, killactive"
        "$mod, T, exec, $term"
      ];

      binds = {
        drag_threshold = 10;
      };
    };
  };
}
