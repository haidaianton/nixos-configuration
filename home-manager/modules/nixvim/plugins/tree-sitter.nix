 {
  programs.nixvim.plugins = {
    treesitter = {
      enable = true;

      folding.enable = true;

      settings = {
        indent.enable = true;
        highlight.enable = true;
        auto_install = true;
        refactor = {
          highlight_definitions = {
            enable = true;
            clear_on_cursor_move = false;
          };
        };
      };
    };
  };
}
