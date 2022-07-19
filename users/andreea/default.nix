{ config, lib, pkgs, ... }:
{
  users.users.andreea = {
    description = "Andreea";
    isNormalUser = true;
    home = "/home/andreea";
    shell = pkgs.zsh;
    initialPassword = "deadbread";
  };

  home-manager.users.andreea = {
    xsession = {
      enable = true;
      windowManager.command = "startplasma-x11";
    };
  };
}