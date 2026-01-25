{ pkgs, ... }:

{
  # NixOS user
  users.users.itsmrvipr = {
    isNormalUser = true;
    shell = pkgs.fish;
    extraGroups = [ "wheel" "networkmanager" ];
  };

  security.sudo.wheelNeedsPassword = false;

  # Home Manager user
  home-manager.users.itsmrvipr = {
    home.username = "itsmrvipr";
    home.homeDirectory = "/home/itsmrvipr";
    home.stateVersion = "25.11";

    imports = [

      # Home Manager programs
      ../../homemanager/programs/fish/default.nix
      ../../homemanager/programs/git/default.nix
      ../../homemanager/programs/firefox/default.nix
    ];

  };
}
