{ pkgs, ... }: {
  services = {
    xserver = {
      enable = true;
      displayManager.startx.enable = true;
      desktopManager.xterm.enable = false;
    };
  };

  environment.systemPackages = with pkgs; [
    alacritty
    dunst
    eww
  ];
}
