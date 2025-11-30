{
  ...
}:

{
  wayland.windowManager.hyprland = {
    settings = {
      env = [
        "GDK_BACKEND,wayland,x11,*"
        "QT_QPA_PLATFORM,wayland;xcb"
        "QT_QPA_PLATFORMTHEME,qt5ct"
      ];
    };
  };
}
