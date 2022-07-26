{
  description = "My NixOS Configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/release-22.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware";
    nixos-wsl.url = "github:nix-community/NixOS-WSL";

    home-manager = {
      url = "github:nix-community/home-manager/release-22.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    sops-nix.url = "github:Mic92/sops-nix";
  };

  outputs = inputs@{
    self,
    nixpkgs,
    nixpkgs-unstable,
    nixos-hardware,
    nixos-wsl,
    home-manager,
    sops-nix,
    ...
  }:
  let
    inherit (nixpkgs) lib;
    inherit (lib) nixosSystem;
    inherit (lib.attrsets) genAttrs;

    system = "x86_64-linux";

    hosts = [
      "iso"
      "toast"
    ];

    mkComputer = hostName:
      nixosSystem {
        inherit system;
        modules = [
          ./hosts/${hostName}/configuration.nix
          inputs.home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
            };
            networking.hostName = hostName;
          }
        ];
      };
  in
  {
    packages.${system}.iso =
      self.nixosConfigurations.iso.config.system.build.isoImage;

    nixosConfigurations = genAttrs hosts mkComputer;
  };
}
