return {
  {
    "atelierbram/Base2Tone-nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("base2tone_space_dark")
      -- vim.cmd.colorscheme("base2tone_suburb_dark")
      -- vim.cmd.colorscheme("base2tone_morning_dark")
    end,
  },
  "rktjmp/lush.nvim",
  "tjdevries/colorbuddy.nvim", -- for gruvbuddy
  "cocopon/iceberg.vim",
  "kyazdani42/blue-moon",
  'rakr/vim-two-firewatch',
  "nanotech/jellybeans.vim",
  "ricardoraposo/gruvbox-minor.nvim",
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
  {
    "tiagovla/tokyodark.nvim",
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
    end,
  },
}
