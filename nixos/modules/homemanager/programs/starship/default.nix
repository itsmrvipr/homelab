{ ... }:

{
  programs.starship.enable = true;

  programs.starship.settings = {
    add_newline = false;

    format = "[┏━](fg:white)$os$directory\\${custom.dir_cap}$git_branch$git_status$line_break[┗━](fg:white)$character";
    right_format = "$cmd_duration$time";

    character = {
      success_symbol = "[ ](fg:green)";
      error_symbol   = "[ ](fg:red)";
    };

    custom = {
      dir_cap = {
        when = "! git rev-parse --is-inside-work-tree >/dev/null 2>&1";
        format = "[](fg:#e6e6e6)";
      };
    };

    os = {
      disabled = false;

      symbols = {
        Linux = "";
        NixOS = "";
      };

      format = "[](fg:#0b0b0b)[   ](fg:#f5f5f5 bg:#0b0b0b)[](fg:#0b0b0b bg:#3a3a3a)";
    };

    directory = {
      home_symbol = "";
      truncation_length = 0;
      truncate_to_repo = true;

      format = "[  ](fg:#f5f5f5 bg:#3a3a3a)[](fg:#3a3a3a bg:#e6e6e6)[ $path ](fg:#111111 bg:#e6e6e6)";
    };

    git_branch = {
      symbol = "";

      format = "[](fg:#e6e6e6 bg:#b91c1c)[ $symbol ](fg:#0b0b0b bg:#b91c1c)[](fg:#b91c1c bg:#ef4444)[  $branch ](fg:#0b0b0b bg:#ef4444)";
    };

    git_status = {
      format = "[](fg:#ef4444 bg:#f87171)[ $modified$staged$stashed$ahead_behind ](fg:#0b0b0b bg:#f87171)[](fg:#f87171)";

      modified = " $count ";
      staged   = " $count ";
      stashed  = " $count ";
      ahead    = "⇡$count ";
      behind   = "⇣$count ";
      diverged = "⇕⇡$ahead_count⇣$behind_count ";
    };

    cmd_duration = {
      min_time = 0;
      show_milliseconds = true;
      format = "[](fg:#f59e0b)[  $duration ](fg:#1f1300 bg:#f59e0b)";
    };

    time = {
      disabled = false;
      time_format = "%H:%M:%S";
      format = "[](fg:#6b7280 bg:#f59e0b)[  $time ](fg:#f9fafb bg:#6b7280)[](fg:#6b7280)";
    };
  };
}
