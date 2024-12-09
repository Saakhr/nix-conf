{pkgs, ...}: {
  programs.nixvim.plugins = {
    conform-nvim = {
      settings = {
        formatters_by_ft.javascript = ["prettier"];
        formatters_by_ft.typescript = ["prettier"];
        formatters_by_ft.javascriptreact = ["prettier"];
        formatters_by_ft.typescriptreact = ["prettier"];
      };
    };
    lsp.servers.ts-ls = {
      enable = true;
      filetypes = [
        "javascript"
        "javascriptreact"
        "typescript"
        "typescriptreact"
      ];
      extraOptions = {
        settings = {
          javascript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true;
              includeInlayFunctionLikeReturnTypeHints = true;
              includeInlayFunctionParameterTypeHints = true;
              includeInlayParameterNameHints = "all";
              includeInlayParameterNameHintsWhenArgumentMatchesName = true;
              includeInlayPropertyDeclarationTypeHints = true;
              includeInlayVariableTypeHints = true;
            };
          };
          typescript = {
            inlayHints = {
              includeInlayEnumMemberValueHints = true;
              includeInlayFunctionLikeReturnTypeHints = true;
              includeInlayFunctionParameterTypeHints = true;
              includeInlayParameterNameHints = "all";
              includeInlayParameterNameHintsWhenArgumentMatchesName = true;
              includeInlayPropertyDeclarationTypeHints = true;
              includeInlayVariableTypeHints = true;
            };
          };
        };
      };
    };
    lsp.servers.eslint.enable = true;
    none-ls.sources.formatting.prettier = {
      enable = true;
      disableTsServerFormatter = false;
    };
    # Debugging
    dap = {
      enable = true;
      adapters.servers = {
        "pwa-node" = {
          host = "localhost";
          port = 8123;
          executable = {
            command = "${pkgs.vscode-js-debug}/bin/js-debug";
          };
        };
      };
    };
  };


  programs.nixvim.extraConfigLua = ''
    require("dap").configurations.javascript = {
      {
      type = "pwa-node",
      request = "launch",
      name = "Launch file",
      program = "''${file}",
        cwd = "''${workspaceFolder}",
      },
    }
        '';
}
