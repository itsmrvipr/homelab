{ ... }:

{
  programs.starship.settings = {
    add_newline = false;

    format = "$os$username$directory$git_branch$git_status$line_break$character";
    right_format = "$nodejs$python$cmd_duration$status$time";

    # ---------- OS ----------
    os = {
      disabled = false;
      symbols.NixOS = "";
      symbols.Linux = "";
      format = "[](fg:#d3d7cf)[ $symbol ](fg:#000000 bg:#d3d7cf)[](fg:#d3d7cf bg:#3465a4)";
    };

    # ---------- USER ----------
    username = {
      show_always = true;
      style_user = "fg:#000000 bg:#3465a4";
      style_root = "fg:#ffffff bg:red";
      format = "[ $user ]($style)[](fg:#3465a4 bg:#4e9a06)";
    };

    # ---------- DIRECTORY ----------
    directory = {
      home_symbol = "";
      truncation_length = 0;
      style = "fg:#ffffff bg:#4e9a06";
      format = "[  $path ]($style)[](fg:#4e9a06 bg:#c4a000)";
    };

    # ---------- GIT ----------
    git_branch = {
      symbol = " ";
      style = "fg:#000000 bg:#c4a000";
      format = "[ $symbol $branch ]($style)";
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

    # ---------- PYTHON ----------
    python = {
      symbol = "";
      style = "fg:#000000 bg:#FFDE57";
      format = "[](fg:#FFDE57)[ $symbol $version ]($style)";
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

    # ---------- LINE 2 ----------
    character = {
      success_symbol = "[╰─](fg:#d3d7cf) ";
      error_symbol = "[╰─](fg:#d3d7cf) ";
      vimcmd_symbol = "[╰─](fg:#d3d7cf) ";
    };
  };
}
