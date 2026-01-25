{ nixos-hardware, ... }:

{
  imports = [
    # This handles CPU and GPU (verify by reading the asus/zephyrus/ga402x/nvidia/default.nix imports which calls shared.nix)
    nixos-hardware.nixosModules.asus-zephyrus-ga402x-nvidia
  ];
}