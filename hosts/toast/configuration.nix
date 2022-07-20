{ config, pkgs, modulesPath, ... }: {
  imports = [
    "${modulesPath}/installer/scan/not-detected.nix"
    ./hardware-configuration.nix
    (import ../../profiles/boot/grub.nix { device = "/dev/sda"; })
    ../../profiles/display/x.nix
    ../../profiles/programs/shells/zsh.nix
    ../../users/aaron
    ../../users/andreea
    ../../users/guest
  ];

  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "22.05";
}
