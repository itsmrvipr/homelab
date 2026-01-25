{ pkgs, ... }:

{
  imports = [
    # Nix modules (GC, settings, version)
    ../nix/default.nix

    # Locale
    ../system/locale/common.nix

  ];

  environment.systemPackages = with pkgs; [
    git
    neovim
    tree
    fastfetch
    wireguard-tools
  ];

}