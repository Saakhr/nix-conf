{ lib, ... }:
{
  programs.nixvim = {
    opts = {
      updatetime = 100; # Faster completion

      relativenumber = true; # Relative line numbers
      number = true; # Display the absolute line number of the current line
      expandtab = true;
      shiftwidth = 2;
      tabstop = 2;
      softtabstop = 2;
      scrolloff = 99;
      guicursor = "n-v-c-i:block";

      termguicolors= true;
    };
#trasparent
highlight = {
  Normal.bg = "none";
  NonText.bg = "none";
  Normal.ctermbg = "none";
  NonText.ctermbg = "none";
};
    ##
    filetype = {
      extension = {
        templ = "templ";
        gleam = "gleam";
      };
#      extension = {[ "templ" "gleam" ]};
 #     filename = {[ "templ" "gleam" ]};
    };
  };

}
