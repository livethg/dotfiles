# File for single execution
{
 ...
}:

{
  wayland.windowManager.hyprland = {
    settings = {
      exec-once = [
        # Utils
        "albert"
        "waybar"

        # Hyprland cursor funnies
        "hyprctl setcursor 'oreo_white_cursors' 14"

        # Start on browser window
        "hyprctl dispatch workspace 5"

        # First workspace
        "[workspace 4 silent] $status"

        # Second workspace
        "[workspace 5 silent] $browser"

        # Third workspace
        "[workspace 6 silent] $term"
      ];
    };
  };
}
