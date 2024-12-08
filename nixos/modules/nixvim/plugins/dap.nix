{
  programs.nixvim.plugins.cmp-dap.enable = true;
  programs.nixvim.plugins.dap = {
    enable = true;
    extensions.dap-ui.enable = true;
    extensions.dap-go.enable = true;
  };
}
