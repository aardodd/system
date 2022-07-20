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
    imports = [
      ../../profiles/users/programs/shells/starship.nix
      ../../profiles/users/programs/shells/zsh.nix
    ];

    home.packages = with pkgs; [
    ];
  };
}
