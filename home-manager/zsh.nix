{ pkgs, ... }: 

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    syntaxHighlighting.enable = true;

    zplug = {
      enable = true;
      plugins = [
      {name = "zsh-users/zsh-autosuggestions";}
      {
        name = "romkatv/powerlevel10k";
        tags = [ "as:theme" "depth:1" ];
      }
     ];
    };

    oh-my-zsh = {
      enable = true;
      plugins = [
	      "git"
        "web-search"
      ];
    };
    shellAliases = 
    let
      flakeDir = "~/nix"; 
    in {
      nrs = "sudo nixos-rebuild switch --flake ${flakeDir}";
      hms = "export NIXPKGS_ALLOW_UNFREE=1 && home-manager switch --impure --flake ${flakeDir}";
      nrb = "sudo nixos-rebuild boot --flake ${flakeDir}";

      upd = "cd ${flakeDir} && nix flake update && sudo nixos-rebuild switch --flake ${flakeDir} && export NIXPKGS_ALLOW_UNFREE=1 && home-manager switch --impure --flake ${flakeDir}";

      ff = "fastfetch";
      n = "nvim";
    };

    initContent = ''
      [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
    '';
  };
}

