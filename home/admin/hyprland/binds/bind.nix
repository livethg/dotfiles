# List of normal session binds in hyprland
{
  ...
}:

{
  wayland.windowManager.hyprland = {
    settings = {
      bind = [
        # Popup windows
        "$mod, V,     exec, kitty --class clipse -e 'clipse'"
        "$mod, space, exec, walker"

        # Starts apps
        "$start,    Z,     exec, $browser"
        "$start,    T,     exec, $term"
        "$start,    slash, exec, $term $fmty"
        "$startOpt, slash, exec, $fmgui"
        "$start,    C,     exec, $code"
        "$start,    B,     exec, $status"
        "$start,    P,     exec, $picker"
        "$start,    S,     exec, $scrsh"
        "$start,    R,     exec, $scrshL"

        # Window control sequence
        "$mod,     Q, killactive"
        "$modOpt1, Q, forcekillactive"
        "$mod,     T, exec, $term"

        # Window behaviour
        "$mod, F, togglefloating"
        "$mod, P, pin"

        "$mod, C, centerWindow"
        "$mod, C, pin"

        "$modOpt1, C, centerWindow"
        "$modOpt1, C, pin"
        "$modOpt1, C, fullscreen, 1"

        # Window Resizing
        "$mod, equal, fullscreen, 1"

        # Window moving
        "$modOpt2, right, movewindow, r"
        "$modOpt2, left,  movewindow, l"
        "$modOpt2, down,  movewindow, d"
        "$modOpt2, up,    movewindow, u"

        "$modOpt3, right, swapwindow, r"
        "$modOpt3, left,  swapwindow, l"
        "$modOpt3, down,  swapwindow, d"
        "$modOpt3, up,    swapwindow, u"

        "$modOpt4, right, movewindoworgroup, r"
        "$modOpt4, left,  movewindoworgroup, l"
        "$modOpt4, down,  movewindoworgroup, d"
        "$modOpt4, up,    movewindoworgroup, u"

        "$modOpt4, B, movegroupwindow, b"
        "$modOpt4, F, movegroupwindow"

        # Focus
        "$mod, right, movefocus, r"
        "$mod, left,  movefocus, l"
        "$mod, down,  movefocus, d"
        "$mod, up,    movefocus, u"

        "$mod, mouse_up,   workspace, e+1"
        "$mod, mouse_down, workspace, e-1"

        "$mod,     TAB, cyclenext"
        "$modOpt1, TAB, cyclenext, prev"
        
        # Groups
        "$mod, U, submap, groups"

        "$modOpt1, T, togglegroup"
        "$modOpt1, L, lockactivegroup, toggle"

        "Alt_L,         TAB, changegroupactive, f"
        "Alt_L+Shift_L, TAB, changegroupactive, b"

        # System
        "$mod, L, exec, $lock"
        "$mod, R, exec, $reboot"
        "$mod, O, exec, $poweroff"
        "$mod, H, exec, $hibernate"
        "$mod, E, exit"
      ] ++ (
        builtins.tail (
          builtins.genList (
            x: let y = builtins.toString x; in "$mod, ${y}, workspace, ${y}"
          ) 
        10) ++ [ "$mod, 0, workspace, 10" ]
      ) ++ (
        builtins.tail (
          builtins.genList (
            x: let y = builtins.toString x; in "$modOpt2, ${y}, movetoworkspace, ${y}"
          ) 10
        ) ++ [ "$modOpt2, 0, movetoworkspace, 10" ]
      );

      binds = {
        drag_threshold = 10;
      };
    };
  };
}
