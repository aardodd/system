{ config, device, ... }: {
  imports = [
    ./base.nix
    (import ../profiles/boot/grub.nix { inherit config device; })
    ../profiles/display/wayland.nix
    ../profiles/programs/shells/zsh.nix
  ];
}
