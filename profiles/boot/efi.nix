{ mountPoint, ... }: {
  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.efiSysMountPoint = mountPoint;
      efi.canTouchEfiVariables = true;
    };
  };
}
