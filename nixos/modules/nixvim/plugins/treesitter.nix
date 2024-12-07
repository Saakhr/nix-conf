{pkgs, ...}:{
  programs.nixvim.plugins.treesitter = {
    enable = true;

    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      json
      cpp
      go
      templ
      rust
      javascript
      lua
      make
      markdown
      nix
      regex
      toml
      vim
      vimdoc
      xml
      yaml
    ];
    settings = {
      autotag.enable=true;
      highlight= {enable = true;};
      indent = {enable = true;};
    };
  }; 
}
