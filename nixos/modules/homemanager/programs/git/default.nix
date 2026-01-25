{ config, ... }:

let 
  username = config.home.username;
in 
{
  programs.git = {
    enable = true;

    userName = "${username}";
    userEmail = "${username}@viprware.dev";

    extraConfig = {
      init.defaultBranch = "main";
    };
  };
}