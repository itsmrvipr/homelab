{ config, lib, pkgs, ... }:

{
  programs.starship = {
    enable = true;

    # Fish integration (Starship will hook into fish automatically)
    enableFishIntegration = true;

    # Optional: customize prompt
    settings = {
      add_newline = false;

      format = "$directory$git_branch$git_status$character";

      directory = {
        truncation_length = 3;
        truncate_to_repo = true;
      };

      git_branch = { format = " [$branch]($style)"; };
      git_status = { format = " [$all_status$ahead_behind]($style)"; };

      character = {
        success_symbol = "[❯](bold green) ";
        error_symbol = "[❯](bold red) ";
      };
    };
  };
}

