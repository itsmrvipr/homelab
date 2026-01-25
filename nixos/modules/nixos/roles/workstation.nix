{ pkgs, ... }:

{
  imports = [

    ### Services ###

    # Networking
    ../services/networking/networkmanager.nix

    # SSH
    ../services/ssh


    ### Sessions ###

    # Cosmic
    ../sessions/cosmic/default.nix


    ### System ###

    # Audio (PipeWire)
    ../system/audio/default.nix

    # Bluetooth (bluez/bluez-tools)
    ../system/bluetooth/default.nix

    # Bootloader
    ../system/bootloader/systemd-boot-uefi.nix

    # Timezone for workstations (EST)
    ../system/locale/est.nix
  ];
  
  # Fish - Error if only enabled in Home Manager
  programs.fish.enable = true;

  # Excplicitly disable SSH on workstations
  my.services.ssh.enable = false;

}