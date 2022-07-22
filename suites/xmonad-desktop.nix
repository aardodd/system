{ config, device, ... }: {
  imports = [
    ./base.nix
    (import ../profiles/boot/grub.nix { inherit config device; })
    ../profiles/audio/pipewire.nix
    ../profiles/fonts/common.nix
    ../profiles/desktop/window-manager.nix
    ../profiles/programs/shells/zsh.nix
  ];

  services.xserver.windowManager.xmonad.enable = true;
}
