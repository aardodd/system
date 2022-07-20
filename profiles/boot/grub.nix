{ device, ... }: {
  boot = {
    loader = {
      grub = {
        enable = true;
        version = 2;
        inherit device;
        memtest86.enable = true;
      };

      grub2-theme = {
        enable = true;
        icon = "white";
        theme = "whitesur";
        screen = "1080p";
        footer = true;
      };
    };

    plymouth = {
      enable = true;
    };
  };
}
