{
  programs.nixvim.plugins.telescope = {
    enable = true;

    keymaps = {
      "<C-p>" = "find_files";
      #"<leader>b" = "buffers";
      #"<leader>fh" = "help_tags";
      #"<leader>gf" = "git_files";
      #"<leader>of" = "oldfiles";
      # "<leader>fg" = "live_grep";
      # "<leader>fd" = "diagnostics";
    };

      extensions = {
        ui-select.enable = true;
        fzf-native.enable = true;
      };

    settings = {
      pickers = {
        find_files = {
          hidden = true;
        };
      };
      defaults = {
        file_ignore_patterns = [
          "^.git/"
          "^.mypy_cache/"
          "^__pycache__/"
          "^output/"
          "^data/"
          "%.ipynb"
        ];
        set_env.COLORTERM = "truecolor";
      };
    };
  };
}
