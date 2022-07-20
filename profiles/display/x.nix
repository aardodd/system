{ ... }: {
  services = {
    xserver = {
      enable = true;
      displayManager.lightdm.enable = true;
      desktopManager.plasma5.enable = true;
    };
  };
}