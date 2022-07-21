{ pkgs, ... }: {
  nixpkgs.config.allowUnfree = true;
  system.stateVersion = "22.05";

  nix = {
    package = pkgs.nixUnstable;
    extraOptions = "experimental-features = nix-command flakes";

    settings = {
      auto-optimise-store = true;
    };

    gc = {
      automatic = true;
      dates = "23:00";
      options = "--delete-older-than 30d";
    };
  };

  environment.systemPackages = with pkgs; [
    git
  ];
}
