{ config, pkgs, modulesPath, ... }: {
  imports = [
    "${modulesPath}/installer/scan/not-detected.nix"
    ../../profiles/boot/grub.nix
    ../../profiles/display/x.nix
    ../../users/aaron
    ../../users/andreea
    ../../users/guest
  ];
}