# Binds used with lock screen
{
  ...
}:

{
  wayland.windowManager.hyprland = {
    settings.bindl = [
        # Windows
        "$mod,     TAB, cyclenext"
        "$modOpt1, TAB, cyclenext, prev"

        # Tabs
        "Alt_L,         TAB, changegroupactive, f"
        "Alt_L+Shift_L, TAB, changegroupactive, b"

        # Utilities
       ", XF86AudioNext,  exec, playerctl next"
       ", XF86AudioPause, exec, playerctl play-pause"
       ", XF86AUdioPlay,  exec, playerctl play-pause"
       ", XF86AudioPrev,  exec, playerctl previous"
    ];
  };
}
