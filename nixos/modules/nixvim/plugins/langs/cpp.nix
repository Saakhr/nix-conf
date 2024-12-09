{ pkgs, ... }:{
  programs.nixvim.plugins = {
    lsp.servers.clangd.enable = true;
    # dap.adapters.codelldb = {
    #   type = "server";
    #   port = "${port}";
    #   executable = {
    #     command = "${pkgs.codelldb}";
    #     args = { "--port", "${port}" };
    #   }
    # };
  };
}
