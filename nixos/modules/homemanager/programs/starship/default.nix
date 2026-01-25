{ ... }:

{
  programs.starship = {
    enable = true;
    enableFishIntegration = true;

    settings = {
      add_newline = false;

      # Left prompt (line 1)
      format = ''
        $os$username$custom$directory$git_branch$line_break$character
      '';

      # Right prompt (line 1)
      right_format = ''
        $time
      '';

      # Put the input cursor on line 2 (like your screenshot)
      character = {
        success_symbol = "[❯](bold green) ";
        error_symbol = "[❯](bold red) ";
        vimcmd_symbol = "[❮](bold green) ";
      };

      # --- LEFT: Blue ribbon: OS + user ---
      os = {
        disabled = false;
        # Blue segment, then transition to green
        format = "[ $symbol ](fg:black bg:blue)[](fg:blue bg:green)";
      };

      username = {
        show_always = true;
        style_user = "fg:black bg:blue";
        style_root = "fg:black bg:blue";
        # Stays in blue; os already created the blue->green bridge
        format = "[ $user ]($style)";
      };

      # Folder icon as its own "segment" in green (no text, just icon)
      # This prints only when the directory module is present (always in interactive prompt).
      custom.folder = {
        # A harmless command that always outputs once
        command = "printf ''";
        when = "true";
        style = "fg:black bg:green";
        format = "[ $output ]($style)";
      };

      # --- LEFT: Green ribbon: directory ---
      directory = {
        truncation_length = 3;
        truncate_to_repo = true;
        home_symbol = "~";

        style = "fg:black bg:green";

        # End green and bridge to yellow (for git); if git is absent, the yellow segment won't appear
        format = "[ $path ]($style)[](fg:green bg:yellow)";
      };

      # --- LEFT: Yellow ribbon: git info (only shows in repo) ---
      git_branch = {
        symbol = " "; # GitHub + branch icon (Nerd Font)
        style = "fg:black bg:yellow";
        # Close out the yellow segment back to normal background
        format = "[ $symbol $branch ]($style)[](fg:yellow)";
      };

      # Optional: show dirty/ahead/behind without adding another ribbon
      git_status = {
        disabled = false;
        style = "fg:black bg:yellow";
        format = "[$all_status$ahead_behind]($style)";
      };

      # If you want git_status *inside* the same yellow ribbon, append it to git_branch:
      # (Simpler approach is to keep git_status disabled until you want it.)

      # --- RIGHT: White ribbon: time ---
      time = {
        disabled = false;
        time_format = "%H:%M";
        style = "fg:black bg:white";

        # Right side uses the inverse separator to “attach” to the right edge
        format = "[](fg:white)[ $time ]($style)";
      };
    };
  };
}

