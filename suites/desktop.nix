{ device, ... }: {
  imports = [
    (import ../profiles/boot/grub.nix { inherit device; })
    ../profiles/display/x.nix
    ../profiles/programs/shells/zsh.nix
  ];
}