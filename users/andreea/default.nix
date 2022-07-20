{ config, lib, pkgs, ... }:
{
  users.users.andreea = {
    description = "Andreea";
    isNormalUser = true;
    home = "/home/andreea";
    shell = pkgs.zsh;
    initialPassword = "deadbread";
    extraGroups = [ "wheel" ];
  };

  home-manager.users.andreea = {
    home.packages = with pkgs; [
    ];
  };
}
