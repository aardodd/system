{ config, lib, pkgs, ... }:
{
  users.users.guest = {
    description = "Guest";
    isNormalUser = true;
    home = "/home/guest";
    shell = pkgs.zsh;
    initialPassword = "guest";
  };

  home-manager.users.guest = {
    home.packages = with pkgs; [
      xfce.xfce4-session
      xfce.xfwm4
      xfce.xfwm4-themes
    ];

    xsession = {
      enable = true;
      windowManager.command = "startxfce4";
    };
  };
}
