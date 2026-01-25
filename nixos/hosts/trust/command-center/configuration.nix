{ ... }:

{
  networking.hostName = "command-center"

  imports = [
    # Disko
    ./disko.nix

    # Hardware
    ./hardware.nix

    # Base config
    

    # Role (device type)


  ];

  # No touchy
  system.stateVersion = "25.11";  

}