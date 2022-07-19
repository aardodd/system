{ config, lib, pkgs, ... }:
{
  users.users.aaron = {
    description = "Aaron";
    isNormalUser = true;
    home = "/home/aaron";
    shell = pkgs.zsh;
    initialPassword = "deadbread";
  };

  home-manager.users.aaron = {
    home = rec {
      stateVersion = "22.05";
      username = "aaron";
      homeDirectory = "/home/aaron";

      file = {
        ".config".source = ../../dotfiles;
        ".config".recursive = true;
      };
    };

    xsession = {
      enable = true;
      windowManager.command = "exec herbstluftwm";
    };
  };
}