{ config, modulesPath, ... }: {
  imports = [
    "${modulesPath}/installer/scan/not-detected.nix"
    ./hardware-configuration.nix
    (import ../../suites/xmonad-desktop.nix {
      inherit config;
      device = "/dev/sda";
    })
    ../../suites/users/all.nix
  ];
  hardware.opengl.enable = true;
}
