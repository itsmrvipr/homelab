{ lib, config, ... }:

{
  options.my.services.ssh.enable =
    lib.mkEnableOption "Enable/Disable SSH";

  config = lib.mkIf config.my.services.ssh.enable {
    services.openssh = {
      enable = true;
      settings = {
        PasswordAuthentication = false;
        KbdInteractiveAuthentication = false;
        PermitRootLogin = "no";
      };
    };
  };
}
