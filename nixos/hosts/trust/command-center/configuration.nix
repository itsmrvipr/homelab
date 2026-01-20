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


    # Specialization




  ];

  # No touchy
  system.stateVersion = "25.11";  

}