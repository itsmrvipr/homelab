{ ... }:

{
  imports = [
    ### Services ###

    # Networking
    ../services/networking/systemd-networkd.nix
    
    # SSH
    ../services/ssh


    ### System ###

    # Timezone for servers (UTC)
    ../system/locale/utc.nix

  ];

  # Enable SSH on servers
  my.services.ssh.enable = true;

}