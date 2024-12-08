{
  programs.nixvim.plugins.none-ls = {
    enable = true;
    sources.formatting = {
      alejandra.enable = true;
      hclfmt.enable = true;
      just.enable = true;
      opentofu_fmt.enable = true;
      prettier.enable = true;
      # rubyfmt is broken on darwin-based systems
      rubyfmt.enable = (
        pkgs.stdenv.hostPlatform.system
        != "x86_64-darwin"
        && pkgs.stdenv.hostPlatform.system != "aarch64-darwin"
      );
      sqlformat.enable = true;
      stylua.enable = true;
      yamlfmt.enable = true;
    };
    sources.diagnostics = {
      trivy.enable = true;
      yamllint.enable = true;
    };
    conform-nvim = {
      enable = true;
      settings = {
        format_on_save = {
          lsp_fallback = "fallback";
          timeout_ms = 500;
        };
        notify_on_error = true;

        formatters_by_ft = {
          css = ["prettier"];
          html = ["prettier"];
          json = ["prettier"];
          just = ["just"];
          lua = ["stylua"];
          markdown = ["prettier"];
          nix = ["alejandra"];
          ruby = ["rubyfmt"];
          terraform = ["tofu_fmt"];
          tf = ["tofu_fmt"];
          yaml = ["yamlfmt"];
        };
      };
    };

    #fix
#     {
#   plugins = {
#     conform-nvim = {
#       enable = true;
#       settings = { formatters_by_ft.go = [ "golines" ]; };
#     };
#     lsp.servers.gopls.enable = true;
#     none-ls.sources.formatting.golines.enable = true;
#   };
# }
  };
}
