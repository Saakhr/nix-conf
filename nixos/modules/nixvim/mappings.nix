{
    programs.nixvim = {
    globals = {
      mapleader = " ";
    };
  };
  programs.nixvim.plugins.tmux-navigator.enable = true;
  programs.nixvim.plugins.which-key.enable = true;
  programs.nixvim.plugins.which-key.settings = {
    layout.spacing = 3;
    spec = [
      {
        __unkeyed-1 = "<leader>b";
        group = "Buffers";
        icon = "󰓩 ";
      }
      {
        __unkeyed = "<leader>c";
        group = "Codesnap";
        icon = "󰄄 ";
        mode = "v";
      }
      {
        __unkeyed-1 = "<leader>bs";
        group = "Sort";
        icon = "󰒺 ";
      }
      {
        __unkeyed-1 = [
          {
            __unkeyed-1 = "<leader>f";
            group = "Files";
          }
          {
            __unkeyed-1 = "<leader>fg";
            __unkeyed-2 = {
              __raw = ''
                require("telescope.builtin").live_grep
              '';
            };
            group = "Grep in files";
          }
        ];
      }
      {
        __unkeyed-1 = "<leader>db";
        __unkeyed-2 = {
          __raw = ''
            function()
            require("dap").toggle_breakpoint()
            end
          '';
        };
        desc = "Breakpoint toggle";
        mode = "n";
        silent = true;
      }
      {
        __unkeyed-1 = "-";
        __unkeyed-2 = "<cmd>Oil<CR>";
        desc = "Open Oil";
      }
    ];
    win = {
      border = "single";
    };
  };
}
