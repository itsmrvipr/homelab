{ ... }:

{
  imports = [
    # Nix modules (GC, settings, version)
    ../nix/default.nix

    # Locale
    ../system/locale/common.nix

  ];
}