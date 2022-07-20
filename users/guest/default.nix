{ config, lib, pkgs, ... }:
{
  users.users.guest = {
    description = "Guest";
    isNormalUser = true;
    home = "/home/guest";
    shell = pkgs.zsh;
    useDefaultShell = false;
    initialPassword = "guest";
  };

  home-manager.users.guest = {
    home.packages = with pkgs; [
    ];
  };
}
