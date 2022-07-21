{ pkgs, ... }: {
  services = {
    xserver = {
      enable = true;
      displayManager.gdm = {
        enable = true;
        wayland = true;
      };
      desktopManager.gnome.enable = true;
    };
  };
  programs.xwayland.enable = true;

  environment.systemPackages = with pkgs; [
    gnome.gnome-terminal
    gnomeExtensions.bing-wallpaper-changer
  ];

  programs.kdeconnect = {
    enable = true;
    package = pkgs.gnomeExtensions.gsconnect;
  };
}
