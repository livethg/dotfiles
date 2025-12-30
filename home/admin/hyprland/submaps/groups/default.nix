# List of submaps for hyprland
{
  ...
}:

{
  wayland.windowManager.hyprland = {
    submaps = {
      groups = {
        settings = {
          bind = [
            # Group options
            ", T, togglegroup"

            ",        L, lockactivegroup, toggle"
            "Shift_L, L, lockgroups,      toggle"

            # Group moving
            ", right, moveintogroup, r"
            ", left,  moveintogroup, l"
            ", down,  moveintogroup, d"
            ", up,    moveintogroup, u"

            "Shift_L, right, moveoutofgroup, r"
            "Shift_L, left,  moveoutofgroup, l"
            "Shift_L, down,  moveoutofgroup, d"
            "Shift_L, up,    moveoutofgroup, u"

            # Escape resets submap
            ",     catchall, submap, reset"
            "$mod, U,        submap, reset"
          ] ++ (
            builtins.tail (
              builtins.genList (
                x: let y = builtins.toString x; in ", ${y}, changegroupactive, ${y}") 10
            ) ++ [ ", 0, changegroupactive, 10" ]
          );
        };
      };
    };
  };
}
