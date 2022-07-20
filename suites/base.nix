{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "22.05";

  nix = {
    package = pkgs.nixFlakes;
    extraOptions = "experimental-features = nix-command flakes";
  };

  environment.systemPackages = with pkgs; [
    git
  ];
}
