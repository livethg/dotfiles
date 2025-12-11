# Files for touchpad gestures
{
  ...
}:

{
  wayland.windowManager.hyprland = {
    settings = {
      gestures = {
        workspace_swipe_cancel_ratio = 0.3;
        workspace_swipe_distance = 200;
      };

      gesture = [
        # Window switching
        "3, horizontal, workspace"

        # Window moving
        "3, right, mod: $mod, dispatcher, movetoworkspacesilent, e+1"
        "3, left,  mod: $mod, dispatcher, movetoworkspacesilent, e-1"

        # Toggling options
        "3, down, dispatcher, exec, $lock"
        "3, up,   fullscreen, maximize"
      ];
    };
  };
}
