# Flakes configuration. Specifies the input urls and
# external packages.
#
# This should not make any changes to configuration files,
# only import them.
{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    flake-utils.url = "github:numtide/flake-utils";
    hyprland.url    = "github:hyprwm/Hyprland";
    nix-colors.url  = "github:misterio77/nix-colors";
    nix-flatpak.url = "https://flakehub.com/f/gmodena/nix-flatpak/0.6.0";

    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    home-manager,
    hyprland,
    nix-colors,
    nix-flatpak,
    ...
  }:

  {
    nixosConfigurations = {
      admin = nixpkgs.lib.nixosSystem rec {
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          nix-flatpak.nixosModules.nix-flatpak
          {
            home-manager = {
              useGlobalPkgs   = true;
              useUserPackages = true;

              sharedModules = [
                 nix-flatpak.homeManagerModules.nix-flatpak
              ];

              users = {
                admin.imports = [
                  ./home/admin
                ];
              };

              extraSpecialArgs = specialArgs;
            };
          }
        ];

        specialArgs = {
           inherit flake-utils home-manager hyprland nix-flatpak nix-colors;
           inputs = self;
        };
      };
    };
  };
}
