# Submap for the different screenshots options
{
  ...
}:

{
  wayland.windowManager.hyprland = {
    submaps = {
      screenshots = {
        settings = {
          # Single use
          bind = [
            ", F, exec,   $scrshF"
            ", F, submap, reset"

            ", S, exec,   $scrshS"
            ", S, submap, reset"

            ", A, exec,   $scrshFS"
            ", A, submap, reset"
          ];
        };
      };
    };
  };
}
