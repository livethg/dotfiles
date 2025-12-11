# Hyprpaper configs
{
  ...
}:

{
  services.hyprpaper = {
    enable   = true;
    settings = {
      preload = [
        "/share/images/bg-desktop.jpg"
      ];

      wallpaper = [
        ", /share/images/bg-desktop.jpg"
      ];
    };
  };
}
