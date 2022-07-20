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
  ];

  programs.kdeconnect = {
    enable = true;
    package = pkgs.gnomeExtensions.gsconnect;
  };
}