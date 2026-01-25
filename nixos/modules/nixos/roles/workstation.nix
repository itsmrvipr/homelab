{ ... }:

{
  imports = [
    ### Services ###

    # Networking
    ../services/networking/networkmanager.nix

    # SSH
    ../services/ssh


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
  
  # Excplicitly disable SSH on workstations
  my.services.ssh.enable = false;

}