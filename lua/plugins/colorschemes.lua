return {
  {
    dir = "~/.config/nvim/colorschemes/firewatch",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme('firewatch')
    end
  },
  "rktjmp/lush.nvim", -- pre-requisite for other themes
  "kyazdani42/blue-moon",
  "bettervim/yugen.nvim",
  'fionn/grb256',
  -- 'dikiaap/minimalist',
  -- 'Gavinok/SpaceWay.vim',
  -- "slugbyte/lackluster.nvim",
  -- "tjdevries/colorbuddy.nvim", -- for gruvbuddy
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
    'AlessandroYorba/Sierra',
    config = function()
      vim.g.sierra_Pitch = 1
    end
  },
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
  --
  --
  --
  {
    'brenoprata10/nvim-highlight-colors',
    config = function()
      require('nvim-highlight-colors').setup({})
    end,
  }
}
