return {
  {
    "tiagovla/tokyodark.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        identifiers = { italic = false },
        functions = {},
        variables = {},
      },
    },
    config = function(_, opts)
      require("tokyodark").setup(opts)
      vim.cmd.colorscheme("tokyodark")
    end,
  },
  "rktjmp/lush.nvim",
  "tjdevries/colorbuddy.nvim", -- for gruvbuddy
  "cocopon/iceberg.vim",
  "kyazdani42/blue-moon",
  "kristijanhusak/vim-hybrid-material",
  "nanotech/jellybeans.vim",
  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      no_italic = true,
    },
    config = function(_, opts)
      require('catppuccin').setup(opts)
    end
  },
  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.g.gruvbox_material_background = "hard"
      vim.g.gruvbox_material_foreground = "mix"
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      styles = {
        italic = false,
      },
    },
    config = function(_, opts)
      require("rose-pine").setup(opts)
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup({
        commentStyle = { italic = false },
        keywordStyle = { italic = false },
      })
    end,
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
        identifiers = { italic = false },
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
    end,
  },
}
