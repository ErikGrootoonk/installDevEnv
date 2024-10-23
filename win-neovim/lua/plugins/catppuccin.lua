return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
  },
  {
    "morhetz/gruvbox",
    lazy = false,
    name = "gruvbox",
    priority = 1000,
  },
  {
    "navarasu/onedark.nvim",
    lazy = false,
    name = "OneDark.nvim",
    style = "deep",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "onedark"
    end
  }
}
