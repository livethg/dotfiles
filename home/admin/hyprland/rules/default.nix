# Rules for windows
{
  ...
}:

{
  wayland.windowManager.hyprland = {
    settings = {
      windowrule = [
        "float, class:(clipse)"
        "size 622 652, class:(clipse)"

        "suppressevent maximize, class:.*"

        "nofocus, class:^$, title:^$, xwayland:1, floating:1, fullscreen:0, pinned:0"
      ];
    };
  };
}
