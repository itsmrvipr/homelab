{ ... }:

{
  programs.starship.enable = true;

  programs.starship.settings = {
    add_newline = false;

    format = "[┏━](fg:#ff0000)$os$directory$git_branch$git_status$line_break";
    right_format = "$cmd_duration$time";
    
    character = {
      success_symbol = "[┗━](fg:white) ";
      error_symbol   = "[┗━](fg:white) ";
      vimcmd_symbol  = "[┗━](fg:white) ";
    };
    
    ### OS ###
    os = {
      disabled = false;
      symbols.Linux = "";
      symbols.NixOS = "";
      format = "[](fg:white)[](fg:black bg:white)[](fg:white bg:blue)";
    };

    # ---------- DIRECTORY ----------
    directory = {
      home_symbol = "";
      truncation_length = 0;
      truncate_to_repo = true;
      format = "[  $path ](fg:white bg:blue)[](fg:blue bg:green)";
    };

    # ---------- GIT ----------
    git_branch = {
      symbol = " ";
      format = "[ $symbol $branch ](fg:black bg:green)";
    };

    git_status = {
      format = "[ $modified$staged$stashed$ahead_behind ](fg:black bg:green)[](fg:green)";
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
      format = "[](fg:yellow)[  $duration ](fg:black bg:yellow)";
    };

    # ---------- TIME ----------
    time = {
      disabled = false;
      time_format = "%H:%M:%S";
      format = "[](fg:gray)[  $time ](fg:white bg:gray)[](fg:gray)";
    };
  };
}
