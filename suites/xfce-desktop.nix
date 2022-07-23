{ config, device, ... }: {
  imports = [
    ./base.nix
    (import ../profiles/boot/grub.nix { inherit config device; })
    ../profiles/audio/pipewire.nix
    ../profiles/fonts/common.nix
    ../profiles/desktop/xfce.nix
    ../profiles/programs/shells/zsh.nix
  ];

  networking.networkmanager.enable = true;
}
