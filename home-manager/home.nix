{ config, pkgs, ... }:

{
  imports = [
    ./modules
  ];

  home.username = "wlinja";
  home.homeDirectory = "/home/wlinja";
  home.stateVersion = "26.05";
  programs.home-manager.enable = true;

  programs.direnv = {
    enable = true;
    nix-direnv.enable = true;
  };

  home.packages = with pkgs; [
    ripgrep
    fastfetch
    htop
    stylua
    prettier
    black
    nixpkgs-fmt
    cmatrix
  ];
}

