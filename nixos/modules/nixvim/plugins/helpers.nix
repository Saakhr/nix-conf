{
  programs.nixvim.plugins = {
  ts-autotag.enable = true;
  indent-blankline.enable = true;
  treesitter-context.enable = true;
  toggleterm.enable = true;
  toggleterm.settings.open_mapping = "[[<A-i>]]";
  toggleterm.settings.direction = "float";
  nvim-autopairs.enable =true;
  };
}
