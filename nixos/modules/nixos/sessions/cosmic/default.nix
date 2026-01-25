{ ... }:

{
  # https://wiki.nixos.org/wiki/COSMIC

  # Cosmic Desktop Environment
  services.desktopManager.cosmic.enable = true;

  # Cosmic Login Manager
  services.displayManager.cosmic-greeter.enable = true;

  # Cosmic Optimization
  services.system76-scheduler.enable = true;

  # Fix Firefox Theming
  programs.firefox.preferences = {
  "widget.gtk.libadwaita-colors.enabled" = false;
  };
}