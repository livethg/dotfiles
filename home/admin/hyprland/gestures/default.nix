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
        # Todo: fix this once pull request is merged (hyprexpo)
        # Window switching
        "3, horizontal, workspace"

        # Window moving
        "3, right, mod: $modOpt1, dispatcher, movetoworkspacesilent, r+1"
        "3, left,  mod: $modOpt1, dispatcher, movetoworkspacesilent, r-1"

        # Toggling options
        "4, down, dispatcher, exec, $lock"
        "4, up,   fullscreen, maximize"
      ];
    };
  };
}
