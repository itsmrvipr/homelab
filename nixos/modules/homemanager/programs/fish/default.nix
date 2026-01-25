{ pkgs, ... }:

{
  programs.fish = {
    interactiveShellInit = ''
      set -g fish_greeting
    '';
  };

  home.packages = with pkgs; [
    fishPlugins.done
    fishPlugins.fzf-fish
    fishPlugins.forgit
    fishPlugins.hydro
    fzf
    fishPlugins.grc
    grc
  ];
}