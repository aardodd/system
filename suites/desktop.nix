{ config, device, ... }: {
  imports = [
    ./base.nix
    (import ../profiles/boot/grub.nix { inherit config device; })
    ../profiles/audio/pipewire.nix
    ../profiles/display/wayland.nix
    ../profiles/programs/shells/zsh.nix
  ];
}
