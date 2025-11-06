# Nixos configuration, includes basic properties
# such as networking services and global packages.
#
# For specific (and longer) system-wide configuration,
# use a new file in the ./system directory.
{
  hyprland,
  lib,
  pkgs,
  ...
}:

rec {
  # Configurations for specific categories
  imports = [
    # Do not remove, for hardware configuration
    ./hardware-configuration.nix

    # Includes system wide configs
    ./system
  ] ++ (
    lib.lists.optional systemd.services.lidm.enable ./system/dism/lidm.nix 
  ) ++ (
    lib.lists.optional services.displayManager.sddm.enable ./system/dism/sddm.nix
  );

  # Enables zsa keyboards
  hardware.keyboard.zsa.enable = true;

  # Experimental features should be active at all times
  nix.settings.experimental-features = [
    "flakes"
    "nix-command"
  ];

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Display manager
  services.displayManager.enable = true;

  # Turn on for tty login
  systemd.services.lidm.enable = false;
  services.xserver.displayManager.lightdm.enable = false;
  services.displayManager.sddm.enable = true;

  # Hostname
  networking.hostName = "nixos";

  # Removes localhost proxies
  networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Activates the nmcli command line
  networking.networkmanager.enable = true;

  # For universal time
  time.timeZone = "America/Toronto";

  # Select internationalisation properties
  i18n.defaultLocale = "en_CA.UTF-8";

  # Flatpak activated for
  services.flatpak.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enables docker
  virtualisation.docker = {
    enable = true;
  };

  # Enable sound with pipewire
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };

  # Garbage collector for saving memory
  nix.gc = {
    automatic = true;
    dates = "daily";
    options = "--delete-older-than 5d";
  };
  nix.settings.auto-optimise-store = true;

  # Default xserver input
  services.xserver = {
    enable = true;
    xkb.layout = "us";
  };

  # Will enable hyprland, but the window manager
  # should be configured by the user.
  programs.hyprland = {
    enable = true;
    package = hyprland.packages.${pkgs.stdenv.hostPlatform.system}.hyprland;
    portalPackage = hyprland.packages.${pkgs.stdenv.hostPlatform.system}.xdg-desktop-portal-hyprland;
  };
  programs.hyprlock.enable = true;

  # Enable the OpenSSH daemon.
  services.openssh.enable = true;

  # NixOS state for option configuration
  system.stateVersion = "25.05";
}
