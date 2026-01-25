{ pkgs, ... }:

{
  imports = [
    # Nix modules (GC, settings, version)
    ../nix/default.nix

    # Fonts
    ../fonts/default.nix

    # Locale
    ../system/locale/common.nix

    # Users
    ../users/itsmrvipr.nix
  ];

  environment.systemPackages = with pkgs; [
    git
    neovim
    tree
    fastfetch
    neofetch
    wireguard-tools
    protonvpn-gui
  ];

}
