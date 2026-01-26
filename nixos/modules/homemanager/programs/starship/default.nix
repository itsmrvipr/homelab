{ ... }:

{
  programs.starship.enable = true;

  programs.starship.settings = {
    add_newline = true;

    format = "[┏━](fg:#ff0000)$os$directory$git_branch$git_status$line_break";
    right_format = "$cmd_duration$status$time";
    
    character = {
      success_symbol = "[┗━](fg:#ff0000) ";
      error_symbol   = "[┗━](fg:#ff0000) ";
      vimcmd_symbol  = "[┗━](fg:#ff0000) ";
    };
    
    ### OS ###  
    os = {
      disabled = false;
      symbols.Linux = "";
      symbols.NixOS = "";
      format = "[](fg:white)[ $symbol ](fg:000000 bg:blue)[](fg:white bg:orange)";
    };

    # ---------- DIRECTORY ----------
    directory = {
      home_symbol = "";
      truncation_length = 0;
      truncate_to_repo = true;
      format = "[  $path ](fg:red bg:yellow)[](fg:white bg:green)";
    };

    # ---------- GIT ----------
    git_branch = {
      symbol = " ";
      format = "[ $symbol $branch ](fg:orange bg:black)";
    };

    git_status = {
      style = "fg:#000000 bg:#c4a000";
      format = "[ $modified$staged$stashed$ahead_behind ]($style)[](fg:#c4a000)";
      modified = " $count ";
      staged = " $count ";
      stashed = " $count ";
      ahead = "⇡$count ";
      behind = "⇣$count ";
      diverged = "⇕⇡$ahead_count⇣$behind_count ";
    };

    # ---------- NODE ----------
    nodejs = {
      symbol = "";
      style = "fg:#ffffff bg:#689f63";
      format = "[](fg:#689f63)[ $symbol $version ]($style)";
    };

    # ---------- CMD DURATION ----------
    cmd_duration = {
      min_time = 0;
      show_milliseconds = true;
      style = "fg:#000000 bg:#c4a000";
      format = "[](fg:#c4a000)[  $duration ]($style)";
    };

    # ---------- STATUS ----------
    status = {
      disabled = false;
      success_symbol = "";
      symbol = "";
      style = "fg:#ffffff bg:#000000";
      format = "[](fg:#000000)[ $status ]($style)";
    };

    # ---------- TIME ----------
    time = {
      disabled = false;
      time_format = "%H:%M:%S";
      style = "fg:#000000 bg:#d3d7cf";
      format = "[](fg:#d3d7cf)[  $time ]($style)[](fg:#d3d7cf)";
    };
  };
}
