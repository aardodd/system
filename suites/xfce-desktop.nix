{ config, device, ... }: {
  imports = [
    ./base.nix
    ../profiles/audio/pipewire.nix
    ../profiles/fonts/common.nix
    ../profiles/desktop/xfce.nix
    ../profiles/programs/shells/zsh.nix
  ];

  networking.networkmanager.enable = true;
}
