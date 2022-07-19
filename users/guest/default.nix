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
    programs = {

    };

    xsession = {
      enable = true;
      windowManager.command = "startxfce4";
    };
  };
}