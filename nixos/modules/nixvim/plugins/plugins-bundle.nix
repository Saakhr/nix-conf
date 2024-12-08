{ pkgs, ... }:
{
  imports = [
	./nix.nix
  ./lualine.nix
	./theme.nix
  ./telescope.nix
  ./oil.nix
  ./harpoon.nix
  ./helpers.nix
  ./treesitter.nix
  ./cmp.nix
  ./lsp.nix
  ./dap.nix
  ];

  programs.nixvim.extraPlugins = [
   pkgs.vimPlugins.cmake-tools-nvim 
  ];
}
