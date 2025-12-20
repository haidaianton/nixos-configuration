{ pkgs, ... }: 

{
  programs.nixvim.plugins = {
    treesitter = {
      enable = true;

      folding.enable = true;

      settings = {
        indent.enable = true;
        highlight.enable = true;
        auto_install = false;
      };

      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        lua
        nix
        bash
        json
        html
        css
        javascript
        typescript
        markdown
        python
        cpp
      ];
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
