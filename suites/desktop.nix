{ config, device, ... }: {
  imports = [
    ./base.nix
    (import ../profiles/boot/grub.nix { inherit config device; })
    ../profiles/audio/pipewire.nix
    ../profiles/desktop/fonts.nix
    ../profiles/desktop/gnome.nix
    ../profiles/programs/shells/zsh.nix
  ];
}
