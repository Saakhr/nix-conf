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
      # {
      #   __unkeyed-1 = "<leader>b";
      #   group = "Buffers";
      #   icon = "󰓩 ";
      # }
      {
        __unkeyed-1 = "<Leader>a";
        group = "Add File To Harpoon List";
      }
      # {
      #   __unkeyed = "<leader>c";
      #   group = "Codesnap";
      #   icon = "󰄄 ";
      #   mode = "v";
      # }
      # {
      #   __unkeyed-1 = "<leader>bs";
      #   group = "Sort";
      #   icon = "󰒺 ";
      # }
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
        __unkeyed-1 = [
          {
            __unkeyed-1 = "<leader>r";
            group = "LSP";
          }
          {
            __unkeyed-1 = "<leader>ra";
            __unkeyed-2 = {
              __raw = ''
                vim.lsp.buf.code_action
              '';
            };
            group = "Code Actions";
          }
          {
            __unkeyed-1 = "<leader>rf";
            __unkeyed-2 = {
              __raw = ''
                vim.lsp.buf.format
              '';
            };
            group = "Format File";
          }
          {
            __unkeyed-1 = "<leader>rr";
            __unkeyed-2 = {
              __raw = ''
                vim.lsp.buf.rename
              '';
            };
            group = "Rename Variable";
          }
          {
            __unkeyed-1 = "<leader>rR";
            __unkeyed-2 = "<cmd>LspRestart<CR>";
            group = "Restart Lsp";
          }
        ];
      }
      {
        __unkeyed-1 = [
          {
            __unkeyed-1 = "<leader>m";
            group = "Cmake";
          }
          {
            __unkeyed-1 = "<leader>mg";
            __unkeyed-2 = "<CMD>CMakeGenerate<CR> <CMD>!mv Debug/compile_commands.json . <CR>";
            group = "Generate Build Files";
          }
          {
            __unkeyed-1 = "<leader>mb";
            __unkeyed-2 = "<CMD>CMakeBuild<CR>";
            group = "Build Project";
          }
        ];
      }

      {
        __unkeyed-1 = [
          {
            __unkeyed-1 = "<leader>d";
            group = "Debugger";
          }
          {
            __unkeyed-1 = "<leader>dc";
            __unkeyed-2 = "<CMD>DapContinue<CR>";
            group = "Continue Debugging";
          }
          {
            __unkeyed-1 = "<leader>do";
            __unkeyed-2 = "<CMD>DapStepOver<CR>";
            group = "Step Over";
          }
          {
            __unkeyed-1 = "<leader>db";
            __unkeyed-2 = "<CMD>DapToggleBreakpoint<CR>";
            group = "Toggle Breakpoint";
          }
          {
            __unkeyed-1 = "<leader>dx";
            __unkeyed-2 = "<CMD>DapTerminate<CR>";
            group = "Terminate Debugging";
          }
        ];
      }
      # {
      #   __unkeyed-1 = "<leader>db";
      #   __unkeyed-2 = {
      #     __raw = ''
      #       function()
      #       require("dap").toggle_breakpoint()
      #       end
      #     '';
      #   };
      #   desc = "Breakpoint toggle";
      #   mode = "n";
      #   silent = true;
      # }
      {
        __unkeyed-1 = "-";
        __unkeyed-2 = "<cmd>Oil<CR>";
        desc = "Open Oil";
      }
      {
        __unkeyed-1 = "<C-s>";
        __unkeyed-2 = "<cmd>w<CR>";
      }
      {
        __unkeyed-1 = "K";
        __unkeyed-2 = {
          __raw = ''
            vim.lsp.buf.hover
          '';
        };
      }
      {
        __unkeyed-1 = "gD";
        __unkeyed-2 = {
          __raw = ''
            vim.lsp.buf.declaration
          '';
        };
      }
      {
        __unkeyed-1 = "gd";
        __unkeyed-2 = {
          __raw = ''
            vim.lsp.buf.definition
          '';
        };
      }


    ];
    win = {
      border = "single";
    };
  };
}
