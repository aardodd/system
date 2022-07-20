{ config, lib, pkgs, ... }:
{
  users.users.andreea = {
    description = "Andreea";
    isNormalUser = true;
    home = "/home/andreea";
    shell = pkgs.zsh;
    useDefaultShell = false;
    initialPassword = "deadbread";
    extraGroups = [ "wheel" ];
  };

  home-manager.users.andreea = {
    imports = [
      ../../profiles/users/programs/shells/starship.nix
      ../../profiles/users/programs/shells/zsh.nix
    ];

    home.packages = with pkgs; [
    ];
  };
}
