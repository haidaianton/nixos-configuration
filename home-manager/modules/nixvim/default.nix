{
  imports = [
    ./plugins/jupyter.nix
    ./plugins/lsp.nix
    ./plugins/lualine.nix
    ./plugins/neotree.nix
    ./plugins/telescope.nix
    ./plugins/tree-sitter.nix
    ./plugins/conform.nix
    ./plugins/completions.nix
    ./plugins/windsurf.nix
    ./keymaps.nix
    ./opts.nix
  ];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;
    colorschemes.catppuccin.enable = true;
  };
}
