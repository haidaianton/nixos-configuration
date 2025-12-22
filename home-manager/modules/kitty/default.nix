{
  programs.kitty = {
    enable = true;
    extraConfig = builtins.readFile ./themes/GruvBox_DarkHard.conf + "\n" + builtins.readFile ./kitty.conf;
  };
}
