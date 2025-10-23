{ config, pkgs, ... }:

{
  imports = [
    ./zsh.nix
    ./gnome.nix
    ./modules/nixvim/nixvim.nix
    ./modules/kitty/kitty.nix
  ];

  home.username = "antonh";
  home.homeDirectory = "/home/antonh";
  home.stateVersion = "25.11";
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
  ];
}

