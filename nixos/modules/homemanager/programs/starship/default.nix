{ ... }:

{
  programs.starship.enable = true;

  programs.starship.settings = {
    add_newline = true;

    format = "[┏━](fg:white)$os$directory$git_branch$git_status$line_break[┗━](fg:white)$character";
    right_format = "$cmd_duration$time";
    
    character = {
      success_symbol = "[ ](fg:green) ";
      error_symbol   = "[ ](fg:red) ";
    };
    
    ### OS ###
    os = {
      disabled = false;
      symbols.Linux = "";
      symbols.NixOS = "";
      format = "[](fg:#3b3b3b)[   ](fg:#e5e5e5 bg:#3b3b3b)[](fg:#3b3b3b bg:#2563eb)";
    };

    # ---------- DIRECTORY ----------
    directory = {
      home_symbol = "";
      truncation_length = 0;
      truncate_to_repo = true;
      format = "[  $path ](fg:#f8fafc bg:#2563eb)";
    };

    # ---------- GIT ----------
    git_branch = {
      symbol = " ";
      format = "[](fg:#2563eb bg:#16a34a)[ $symbol $branch ](fg:#022c22 bg:#16a34a)";
    };

    git_status = {
      format = "[ $modified$staged$stashed$ahead_behind ](fg:#022c22 bg:#22c55e)[](fg:#22c55e)";
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
