{ pkgs, ... }: {
  environment.pathsToLink = [ "/share/zsh" ];
  environment.shells = pkgs.zsh;
}