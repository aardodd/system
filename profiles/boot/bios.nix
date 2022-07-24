{ devices, ... }: {
  boot = {
    loader = {
      grub = {
        enable = true;
        version = 2;
        inherit devices;
        memtest86.enable = true;
      };
    };
  };
}
