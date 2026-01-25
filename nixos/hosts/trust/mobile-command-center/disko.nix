{ ... }:

{
  disko.devices = {
    disk.main = {
      type = "disk";

      device = "/dev/nvme0n1";

      content = {
        type = "gpt";
        partitions = {
          ESP = {
            name = "ESP";
            type = "EF00";
            size = "2G";
            content = {
              type = "filesystem";
              format = "vfat";
              mountpoint = "/boot";
              mountOptions = [ "umask=0077" ];
            };
          };

          crypt = {
            name = "crypt";
            size = "100%";
            content = {
              type = "luks";
              name = "crypt";
              settings.allowDiscards = true;

              content = {
                type = "lvm_pv";
                vg = "crypt";
              };
            };
          };
        };
      };
    };

    lvm_vg.crypt = {
      type = "lvm_vg";
      lvs = {
        swap = {
          # Use RAM x 1.5
          size = "24G";
          content = {
            type = "swap";
            resumeDevice = true;
          };
        };

        root = {
          size = "100%FREE";
          content = {
            type = "filesystem";
            format = "ext4";
            mountpoint = "/";
          };
        };
      };
    };
  };
}