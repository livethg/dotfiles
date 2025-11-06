# Binds used with lock screen
{
  ...
}:

{
  wayland.windowManager.hyprland = {
    settings.bindl = [
       ", XF86AudioNext,  exec, playerctl next"
       ", XF86AudioPause, exec, playerctl play-pause"
       ", XF86AUdioPlay,  exec, playerctl play-pause"
       ", XF86AudioPrev,  exec, playerctl previous"
    ];
  };
}
