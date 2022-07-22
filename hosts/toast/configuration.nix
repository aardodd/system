{ config, modulesPath, ... }: {
  imports = [
    "${modulesPath}/installer/scan/not-detected.nix"
    ./hardware-configuration.nix
    (import ../../suites/gnome-desktop.nix {
      inherit config;
      device = "/dev/sda";
    })
    ../../suites/users/all.nix
  ];
  hardware.opengl.enable = true;
}
