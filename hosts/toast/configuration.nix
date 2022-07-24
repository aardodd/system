{ modulesPath, ... }: {
  imports = [
    "${modulesPath}/installer/scan/not-detected.nix"
    ./hardware-configuration.nix
    (import ../../profiles/boot/bios.nix { devices = [ "/dev/sda" ]; })
    ../../suites/xmonad-desktop.nix
    ../../suites/users/all.nix
  ];
  hardware.opengl.enable = true;
}
