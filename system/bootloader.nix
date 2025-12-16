# Configuration for the bootloader
{
  pkgs,
  ...
}:

let
  themePath = pkgs.callPackage ./grub {};
in
{
  boot = {
    loader = {
      systemd-boot.enable = false;

      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint     = "/boot";
      };

      grub = {
        enable = true;
        device = "nodev";

        efiSupport  = true;
        useOSProber = true;

        splashImage = null;
        theme       = "${themePath}";
      };
    };

    plymouth = {
      enable        = true;
      theme         = "hexagon";
      themePackages = with pkgs; [
        (
          pkgs.callPackage adi1090x-plymouth-themes.override {
            selected_themes = [ "hexagon" ];
          }
        )
      ];
    };

    initrd = {
      systemd.enable = true;
      verbose        = false;
    };

    consoleLogLevel = 3;
    kernelParams = [
      "quiet"
      "splash"
      # Not sure what this does, but something to do with intel chips
      "intremap=on"
      "boot.shell_on_fail"
      "udev.log_priority=3"
      "rd.systemd.show_status=auto"
    ];
  };
}
