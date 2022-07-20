{ config, modulesPath, ... }: {
  imports = [
    "${modulesPath}/installer/scan/not-detected.nix"
    ./hardware-configuration.nix
    (import ../../suites/desktop.nix { inherit config; device = "/dev/sda"; })
    ../../suites/users/all.nix
  ];
}
