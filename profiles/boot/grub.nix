{ device, ... }: {
  boot = {
    loader = {
      grub = {
        enable = true;
        version = 2;
        inherit device;
        memtest86.enable = true;
      };
    };
  };
}
