{ ... }:

{
  networking.hostName = "mobile-command-center";

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

}