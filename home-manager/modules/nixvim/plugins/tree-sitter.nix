{
  programs.nixvim.plugins = {
    treesitter = {
      enable = true;

      folding = true;
      settings = {
        indent.enable = true;
        highlight.enable = true;
        auto_install = true;
      };
    };

    treesitter-refactor = {
      enable = true;
      settings = {
        highlight_definitions = {
          enable = true;
          clear_on_cursor_move = false;
        };
      };
    };
  };
}
