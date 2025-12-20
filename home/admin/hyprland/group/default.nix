{
  ...
}:

{
  wayland.windowManager.hyprland = {
    settings = {
      group = {
        "col.border_active"   = "0xcc0e9b63";
        "col.border_inactive" = "0xcc0c734a";

        "col.border_locked_active"   = "0xcc961212";
        "col.border_locked_inactive" = "0xcc770e0e";

        groupbar = {
          "col.active"   = "0xcc0e9b63";
          "col.inactive" = "0xcc0c734a";

          "col.locked_active"   = "0xcc961212";
          "col.locked_inactive" = "0xcc770e0e";

          gaps_out         = 0;
          height           = 0;
          indicator_height = 0;
          keep_upper_gap   = false;

          render_titles  = false;
          rounding       = 2;
          rounding_power = 2;
        };
      };
    };
  };
}
