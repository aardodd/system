{ config, device, ... }: {
  imports = [
    ./base.nix
    (import ../profiles/boot/grub.nix { inherit config device; })
    ../profiles/display/x.nix
    ../profiles/programs/shells/zsh.nix
  ];
}
