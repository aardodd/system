{ pkgs, ... }: {
  services = {
    xserver = {
      enable = true;
      displayManager.startx.enable = true;
      desktopManager.xterm.enable = false;
      windowManager.awesome.enable = true;
    };
  };

  environment.systemPackages = with pkgs; [
    alacritty
    dunst
    eww
  ];
}
