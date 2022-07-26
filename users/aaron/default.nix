{ config, lib, pkgs, ... }:
{
  users.users.aaron = {
    description = "Aaron";
    isNormalUser = true;
    home = "/home/aaron";
    shell = pkgs.zsh;
    useDefaultShell = false;
    initialPassword = "deadbread";
    extraGroups = [ "wheel" ];
  };

  home-manager.users.aaron = {
    imports = [
      ../../profiles/users/programs/gui.nix
      ../../profiles/users/programs/shells/starship.nix
      ../../profiles/users/programs/shells/zsh.nix
    ];

    home = rec {
      stateVersion = "22.05";
      username = "aaron";
      homeDirectory = "/home/aaron";

      packages = with pkgs; [
        emacs
        fd
        ripgrep
        stow
      ];
    };
  };
}
