{ lib, config, modulesPath, pkgs, ... }: {
  imports = [
    "${modulesPath}/installer/cd-dvd/installation-cd-graphical-calamares.nix"
    "${modulesPath}/installer/cd-dvd/channel.nix"
    "${modulesPath}/profiles/base.nix"
    "${modulesPath}/profiles/all-hardware.nix"
    ../../profiles/desktop/gnome.nix
  ];

  nix = {
    package = pkgs.nixUnstable;
    extraOptions = "experimental-features = nix-command flakes";
  };

  nixpkgs.config.allowUnfree = true;

  isoImage.edition = "gnome";
  isoImage.makeEfiBootable = true;
  isoImage.makeUsbBootable = true;

  services.xserver.displayManager = {
    autoLogin = {
      enable = true;
      user = "nixos";
    };
  };

  users.users.nixos.shell = pkgs.zsh;
  
  environment.systemPackages = with pkgs; [
    git
    mkpasswd
    ripgrep
    tree
    wget
  ];

  home-manager = {
    users.nixos = { pkgs, ... }: {
      imports = [
        ../../profiles/users/programs/gui.nix
        ../../profiles/users/programs/shells/zsh.nix
      ];
    };
  };

  swapDevices = lib.mkImageMediaOverride [ ];
  fileSystems = lib.mkImageMediaOverride config.lib.isoFileSystems;
}
