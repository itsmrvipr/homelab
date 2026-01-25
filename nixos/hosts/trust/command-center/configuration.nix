{ ... }:

{
  networking.hostName = "command-center"

  imports = [
    # Disko
    ./disko.nix

    # Hardware
    ./hardware.nix

    # Base config
    ../../../modules/nixos/roles/base.nix

    # Specialization (device type)
    ../../../modules/nixos/roles/workstation.nix


  ];

  # No touchy
  system.stateVersion = "25.11";  

}