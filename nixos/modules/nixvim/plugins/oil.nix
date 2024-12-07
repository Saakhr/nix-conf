{
  programs.nixvim.plugins.oil = {
    enable = true;

    settings = {
      columns = [
        "icon"
        ];

        keymaps = {
        "g?" = "actions.show_help";
        "<CR>" = "actions.select";
        "<C-v>" = "actions.select_vsplit";
        "<C-h>" = "<Cmd>TmuxNavigateLeft<CR>";
        "<C-l>" = "<Cmd>TmuxNavigateRight<CR>";
        "<C-x>" = "actions.select_split";
        "<C-t>" = "actions.select_tab";
        "<C-~>" = "actions.preview";
        "<C-p>" = "<Cmd>Telescope find_files<CR>";
        "<C-c>" = "actions.close";
        "<C-!>" = "actions.refresh";
        "-" = "actions.parent";
        "_" = "actions.open_cwd";
        "`" = "actions.cd";
        "~" = "actions.tcd";
        "gs" = "actions.change_sort";
        "gx" = "actions.open_external";
        "g." = "actions.toggle_hidden";
        "g\\" = "actions.toggle_trash";
        };

        view_options.show_hidden =true;
        };
  };
}
