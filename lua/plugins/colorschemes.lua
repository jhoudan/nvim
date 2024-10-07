return {
  {
    "bettervim/yugen.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme('yugen')
    end,
  },
  "rktjmp/lush.nvim", -- pre-requisite for other themes
  "kyazdani42/blue-moon",
  "embark-theme/vim",
  "bettervim/yugen.nvim",
  "slugbyte/lackluster.nvim",
  "olivercederborg/poimandres.nvim",
  -- "fionn/grb256",
  -- 'rakr/vim-two-firewatch',
  -- "tjdevries/colorbuddy.nvim", -- for gruvbuddy
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
