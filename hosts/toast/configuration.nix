{ config, pkgs, modulesPath, ... }: {
  imports = [
    "${modulesPath}/installer/scan/not-detected.nix"
    ./hardware-configuration.nix
    (import ../../profiles/boot/grub.nix { device = "/dev/sda"; })
    ../../profiles/display/x.nix
    ../../users/aaron
    ../../users/andreea
    ../../users/guest
  ];
}
