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
      symbols.Linux = "";
      symbols.NixOS = "";
      format = "[](fg:#3b3b3b)[   ](fg:#e5e5e5 bg:#3b3b3b)[](fg:#3b3b3b bg:#0a2472)";
    };

    # ---------- DIRECTORY ----------
    directory = {
      home_symbol = "";
      truncation_length = 0;
      truncate_to_repo = true;
      format = "[  ](fg:#f8fafc bg:#0a2472)[](fg:#0a2472 bg:#123499)[ $path ](fg:#f8fafc bg:#123499)";
    };

    # ---------- GIT ----------
    git_branch = {
      symbol = "";
      format = "[](fg:#123499 bg:#004400)[ $symbol ](fg:#022c22 bg:#004400)[](fg:#004400 bg:#005d17)[  $branch ](fg:#022c22 bg:#005d17)";
    };

    git_status = {
      format = "[](fg:#005d17 bg:#00762e)[ $modified$staged$stashed$ahead_behind ](fg:#022c22 bg:#00762e)[](fg:#00762e)";
      modified = " $count ";
      staged = " $count ";
      stashed = " $count ";
      ahead = "⇡$count ";
      behind = "⇣$count ";
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
