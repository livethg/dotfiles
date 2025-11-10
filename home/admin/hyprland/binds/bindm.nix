# Binds when moving the cursor
{
  ...
}:

{
  wayland.windowManager.hyprland = {
    settings = {
      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"

        # Touchpad relative
        "$mod, $opt1, resizewindow"
        "$mod, $opt2, movewindow"
      ];
    };
  };
}
