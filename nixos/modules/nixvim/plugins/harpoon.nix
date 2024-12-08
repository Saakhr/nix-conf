{
  programs.nixvim.plugins.harpoon = {
    enable = true;
    saveOnToggle = true;
    keymaps = {
      toggleQuickMenu = "<C-e>";
      addFile = "<Leader>a";
      navFile = {
        "1" = "<A-1>";
        "2" = "<A-2>";
        "3" = "<A-3>";
        "4" = "<A-4>";
      };
    };
  };
}
