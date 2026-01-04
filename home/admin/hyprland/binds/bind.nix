# List of normal session binds in hyprland
{
  ...
}:

let
  startClipse = "test -n \\\"$(pgrep 'clipse')\\\" || kitty --class clipse -e 'clipse'";
in
{
  wayland.windowManager.hyprland = {
    settings = {
      bind = [
        # Popup windows
        "$opt3, V,     exec, bash -c \"${startClipse}\""
        "$opt3, space, exec, $launcher"

        # Starts apps
        "$start,    A,     exec, albert" # In case albert crashes
        "$start,    B,     exec, $status"
        "$start,    C,     exec, $code"
        "$start,    D,     exec, $discord"
        "$start,    G,     exec, $img"
        "$start,    H,     exec, $help"
        "$start,    L,     exec, libreoffice"
        "$start,    M,     exec, $music"
        "$start,    P,     exec, $picker"
        "$start,    Q,     exec, $calc"
        "$start,    E,     exec, $pen"
        "$start,    S,     exec, $scrsh"
        "$start,    T,     exec, $term"
        "$start,    X,     exec, $tex"
        "$start,    Z,     exec, $browser"
        "$start,    slash, exec, $term $fmty"

        "$start,    F,     submap, screenshots"

        # Window control sequence
        "$mod,     S, hyprexpo:expo, toggle"
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

        "$mod, mouse_up,   workspace, r+1"
        "$mod, mouse_down, workspace, r-1"

        # Groups
        "$mod, U, submap, groups"

        "$modOpt1, T, togglegroup"
        "$modOpt1, L, lockactivegroup, toggle"

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
        ) ++ [ "$modOpt2, 0, movetoworkspacesilent, 10" ]
      );
    };
  };
}
