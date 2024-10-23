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
    "carlobaldassi/darktangom.vim",
    lazy = false,
    name = "darktango",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "darktangom"
    end
  }
}
