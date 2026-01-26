{ ... }:

{
  programs.starship.enable = true;

  programs.starship.settings = {
    add_newline = false;

    format = "[┏━](fg:white)$os$directory$git_branch$git_status$line_break[┗━](fg:white)$character";
    right_format = "$cmd_duration$time";

    character = {
      success_symbol = "[ ](fg:green)";
      error_symbol   = "[ ](fg:red)";
    };

    ### OS ###
    os = {
      disabled = false;

      # Fixes Nix->TOML nesting
      symbols = {
        Linux = "";
        NixOS = "";
      };

      # Red palette
      format = "[](fg:#3f1d1d)[   ](fg:#fee2e2 bg:#3f1d1d)[](fg:#3f1d1d bg:#7f1d1d)";
    };

    # ---------- DIRECTORY ----------
    directory = {
      home_symbol = "";
      truncation_length = 0;
      truncate_to_repo = true;
      format = "[  ](fg:#fee2e2 bg:#7f1d1d)[](fg:#7f1d1d bg:#b91c1c)[ $path ](fg:#fee2e2 bg:#b91c1c)";
    };

    # ---------- GIT ----------
    git_branch = {
      symbol = "";
      format = "[](fg:#b91c1c bg:#dc2626)[ $symbol ](fg:#1f0707 bg:#dc2626)[](fg:#dc2626 bg:#ef4444)[  $branch ](fg:#1f0707 bg:#ef4444)";
    };

    git_status = {
      format = "[](fg:#ef4444 bg:#f87171)[ $modified$staged$stashed$ahead_behind ](fg:#1f0707 bg:#f87171)[](fg:#f87171)";
      modified = " $count ";
      staged   = " $count ";
      stashed  = " $count ";
      ahead    = "⇡$count ";
      behind   = "⇣$count ";
      diverged = "⇕⇡$ahead_count⇣$behind_count ";
    };

    # ---------- CMD DURATION ----------
    cmd_duration = {
      min_time = 0;
      show_milliseconds = true;
      format = "[](fg:#f59e0b)[  $duration ](fg:#1f1300 bg:#f59e0b)";
    };

    # ---------- TIME ----------
    time = {
      disabled = false;
      time_format = "%H:%M:%S";
      format = "[](fg:#6b7280 bg:#f59e0b)[  $time ](fg:#f9fafb bg:#6b7280)[](fg:#6b7280)";
    };
  };
}
