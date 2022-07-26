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
    gnome3.gnome-tweaks
    gnomeExtensions.bing-wallpaper-changer
    gnomeExtensions.blur-my-shell
  ];

  environment.gnome.excludePackages = with pkgs; [
    gnome.epiphany
    gnome.geary
    gnome.gnome-music
    gnome.gnome-online-miners
    gnome.totem
  ];

  programs.kdeconnect = {
    enable = true;
    package = pkgs.gnomeExtensions.gsconnect;
  };
}
